//  Created by Axel Ancona Esselmann on 2/24/24.
//

import CoreData

public extension NSPersistentCloudKitContainer {
    convenience init(
        name: String,
        managedObjectModel: NSManagedObjectModel,
        cloudContainerIdentifier: String,
        options: CloudOptions? = nil
    ) throws {
        self.init(name: name, managedObjectModel: managedObjectModel)
        guard let description = persistentStoreDescriptions.first else {
            throw CoreDataCreationError.storeDescriptionMissing
        }
        if let options {
            if let enablingPersistentHistoryTracking = options.enablingPersistentHistoryTracking {
                let nsNumber = enablingPersistentHistoryTracking as NSNumber
                description.setOption(nsNumber, forKey: NSPersistentHistoryTrackingKey)
                description.setOption(nsNumber, forKey: NSPersistentStoreRemoteChangeNotificationPostOptionKey)
            }
        }
        let options = NSPersistentCloudKitContainerOptions(containerIdentifier: cloudContainerIdentifier)
        description.cloudKitContainerOptions = options
        persistentStoreDescriptions = [ description ]
    }
}

import Combine

@globalActor
public actor RemoteChangeManager {

    static public var shared = RemoteChangeManager()

    enum Error: Swift.Error {
        case notInitialized
        case invalidHistoryResults
    }

    @RemoteChangeManager
    var bag = Set<AnyCancellable>()

    init() { }

    @RemoteChangeManager
    public func initialize(container: NSPersistentContainer) {
        NotificationCenter.default.publisher(
            for: .NSPersistentStoreRemoteChange,
            object: container.persistentStoreCoordinator
        )
        .sink { _ in
            Task { [weak self] in
                do {
                    try self?.processRemoteChange()
                } catch {
                    print(error)
                }
            }
        }
        .store(in: &bag)
        _backgroundContext = container.newBackgroundContext()
    }

    @RemoteChangeManager
    private var _backgroundContext: NSManagedObjectContext?

    @RemoteChangeManager
    private func backgroundContext() throws -> NSManagedObjectContext {
        guard let context = _backgroundContext else {
            throw Error.notInitialized
        }
        return context
    }

    @RemoteChangeManager
    private func processRemoteChange() throws {
        let history = try fetchHistory()
        guard !history.isEmpty else {
            return
        }
        print("processRemoteChange - History: ", history.count)
        try merge(history)
        try clean()
        print("done")
        // 59557 values
    }

    @RemoteChangeManager
    func fetchHistory() throws -> [NSPersistentHistoryTransaction] {
        let context = try backgroundContext()
        let fromDate = Date.distantPast
        let historyFetchRequest = NSPersistentHistoryChangeRequest
            .fetchHistory(after: fromDate)
        if let fetchRequest = NSPersistentHistoryTransaction.fetchRequest {
            historyFetchRequest.fetchRequest = fetchRequest
        }
        guard
            let historyResult = try context.execute(historyFetchRequest) as? NSPersistentHistoryResult,
            let history = historyResult.result as? [NSPersistentHistoryTransaction]
        else {
            throw Error.invalidHistoryResults
        }
        return history
    }

    @RemoteChangeManager
    func merge(_ transactions: [NSPersistentHistoryTransaction]) throws {
        let context = try backgroundContext()
        context.perform {
            for transaction in transactions {
                context.mergeChanges(fromContextDidSave: transaction.objectIDNotification())
            }
        }
    }

    @RemoteChangeManager
    func clean() throws {
        let context = try backgroundContext()
//        let sevenDaysAgo = Date.now
        let sevenDaysAgo = Date.now.addingTimeInterval(-604_800)
        let purgeHistoryRequest =
            NSPersistentHistoryChangeRequest.deleteHistory(
                before: sevenDaysAgo)
        try context.execute(purgeHistoryRequest)
    }
}
