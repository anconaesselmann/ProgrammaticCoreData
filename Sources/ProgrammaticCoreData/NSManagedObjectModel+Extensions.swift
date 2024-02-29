//  Created by Axel Ancona Esselmann on 2/24/24.
//

import CoreData

public extension NSManagedObjectModel {

    convenience init(_ entities: [any SelfDescribingCoreDataEntity.Type]) {
        self.init()
        self.entities = entities.map { $0.entityDescription }
    }

    convenience init(_ entities: any SelfDescribingCoreDataEntity.Type...) {
        self.init(entities)
    }

    @discardableResult
    func append(_ entities: [NSEntityDescription]) -> Self {
        self.entities += entities
        return self
    }

    func createContainer(
        name: String,
        location: NSPersistentContainer.Location
    ) async throws -> NSPersistentContainer {
        try await NSPersistentContainer.create(
            name: name,
            model: self,
            location: location
        )
    }

    func createCloudContainer(
        name: String,
        cloudContainerIdentifier: String,
        options: CloudOptions
    ) throws -> NSPersistentContainer {
        try NSPersistentCloudKitContainer(
            name: name,
            managedObjectModel: self,
            cloudContainerIdentifier: cloudContainerIdentifier,
            options: options
        )
    }

    func createLocalContainer(name: String, path: URL) -> NSPersistentContainer {
        NSPersistentContainer(name: name, managedObjectModel: self, path: path)
    }

    func createLocalContainer(name: String, subdirectory: String?) throws -> NSPersistentContainer {
        try NSPersistentContainer(name: name, managedObjectModel: self, subdirecotry: subdirectory)
    }
}
