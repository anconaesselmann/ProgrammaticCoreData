//  Created by Axel Ancona Esselmann on 2/24/24.
//

import CoreData

public struct CloudOptions {
    public var enablingPersistentHistoryTracking: Bool? = nil

    public init(enablingPersistentHistoryTracking: Bool? = true) {
        self.enablingPersistentHistoryTracking = enablingPersistentHistoryTracking
    }
}

public extension NSPersistentContainer {

    enum Location {
        public static func cloud(cloudContainerIdentifier: String) -> Self {
            return .cloud(cloudContainerIdentifier: cloudContainerIdentifier, options: CloudOptions())
        }

        case cloud(cloudContainerIdentifier: String, options: CloudOptions)
        case local(subdirecotry: String?)

        public static var local: Self {
            .local(subdirecotry: nil)
        }

        var isCloud: Bool {
            switch self {
            case .cloud:
                return true
            case .local:
                return false
            }
        }
    }

    convenience init(name: String, managedObjectModel: NSManagedObjectModel, path: URL) {
        self.init(name: name, managedObjectModel: managedObjectModel)
        persistentStoreDescriptions[0] = NSPersistentStoreDescription(url: path)
    }


    convenience init(name: String, managedObjectModel: NSManagedObjectModel, subdirecotry: String?) throws {
        self.init(name: name, managedObjectModel: managedObjectModel)
        let path = try URL.libraryDbPath(modelName: name, subdirectory: subdirecotry)
        persistentStoreDescriptions[0] = NSPersistentStoreDescription(url: path)
    }

    func loadPersistentStores() async throws {
        try await withCheckedThrowingContinuation { [unowned self] (continuation: CheckedContinuation<Void, Swift.Error>) in
            self.loadPersistentStores(completionHandler: { (storeDescription, error) in
                if let error = error {
                    continuation.resume(throwing: error)
                } else {
                    continuation.resume()
                }
            })
        }
    }

    func printLocation() -> Self {
        guard let url = persistentStoreDescriptions.first?.url else {
            return self
        }
        print(url.path())
        return self
    }

    static func create(
        name: String,
        model: NSManagedObjectModel,
        location: Location
    ) async throws -> NSPersistentContainer {
        let container: NSPersistentContainer
        switch location {
        case .cloud(let cloudContainerIdentifier, let options):
            container = try model.createCloudContainer(
                name: name,
                cloudContainerIdentifier: cloudContainerIdentifier,
                options: options
            )
        case .local(let subdirectory):
            container = try model.createLocalContainer(name: name, subdirectory: subdirectory)
        }
        try await container.loadPersistentStores()
        return container
    }
}
