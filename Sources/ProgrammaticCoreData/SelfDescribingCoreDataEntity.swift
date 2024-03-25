//  Created by Axel Ancona Esselmann on 2/25/24.
//

import CoreData

public protocol SelfDescribingCoreDataEntity: NSManagedObject {
    static var entityDescription: NSEntityDescription { get }
}

public extension SelfDescribingCoreDataEntity {

    static func fetchRequest() -> NSFetchRequest<Self> {
        NSFetchRequest<Self>(entityName: "\(Self.self)")
    }

    var wasDeleted: Bool {
        managedObjectContext == nil
    }
}
