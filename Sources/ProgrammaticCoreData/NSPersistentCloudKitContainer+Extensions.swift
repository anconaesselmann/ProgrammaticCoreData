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
