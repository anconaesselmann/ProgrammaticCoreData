//  Created by Axel Ancona Esselmann on 2/24/24.
//

import CoreData

public extension NSPersistentContainer {

    enum Location {
        case cloud(cloudContainerIdentifier: String)
        case local(subdirecotry: String?)

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

    static func create(
        name: String,
        model: NSManagedObjectModel,
        location: Location
    ) async throws -> NSPersistentContainer {
        let container: NSPersistentContainer
        switch location {
        case .cloud(let cloudContainerIdentifier):
            container = try model.createCloudContainer(
                name: name,
                cloudContainerIdentifier: cloudContainerIdentifier
            )
        case .local(let subdirectory):
            container = try model.createLocalContainer(name: name, subdirectory: subdirectory)
        }
        try await container.loadPersistentStores()
        return container
    }
}
