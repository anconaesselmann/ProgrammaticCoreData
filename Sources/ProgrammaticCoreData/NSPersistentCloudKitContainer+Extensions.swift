//  Created by Axel Ancona Esselmann on 2/24/24.
//

import CoreData

public extension NSPersistentCloudKitContainer {
    convenience init(name: String, managedObjectModel: NSManagedObjectModel, cloudContainerIdentifier: String) throws {
        self.init(name: name, managedObjectModel: managedObjectModel)
        guard let description = persistentStoreDescriptions.first else {
            throw CoreDataCreationError.storeDescriptionMissing
        }
        let options = NSPersistentCloudKitContainerOptions(containerIdentifier: cloudContainerIdentifier)
        description.cloudKitContainerOptions = options
        persistentStoreDescriptions = [ description ]
    }
}
