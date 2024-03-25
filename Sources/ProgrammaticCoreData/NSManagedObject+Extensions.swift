//  Created by Axel Ancona Esselmann on 3/23/24.
//

import Foundation
import CoreData

public extension NSManagedObject {
    enum SetInsertionError: Swift.Error {
        case itemAlreadyInSet
        case itemNotInSet
    }

    func add<ManagedObject, SelfType>(
        _ value: ManagedObject,
        keyPath: KeyPath<SelfType, NSSet>
    ) throws
        where 
            ManagedObject: NSManagedObject,
SelfType: NSManagedObject

    {
        let items = try self.mutableSetValue(keyPath)
        guard !items.contains(value) else {
            throw SetInsertionError.itemAlreadyInSet
        }
        items.add(value)
    }

    func remove<ManagedObject, SelfType>(_ value: ManagedObject, keyPath: KeyPath<SelfType, NSSet>) throws
        where
            ManagedObject: NSManagedObject,
            SelfType: NSManagedObject
    {
        let items = try self.mutableSetValue(keyPath)
        guard items.contains(value) else {
            throw SetInsertionError.itemNotInSet
        }
        items.remove(value)
    }
}
