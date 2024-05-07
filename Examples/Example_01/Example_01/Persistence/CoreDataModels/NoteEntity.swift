//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import ProgrammaticCoreData

@objc(NoteEntity)
final class NoteEntity: NSManagedObject, Identifiable {

    @NSManaged var id: UUID
    @NSManaged var text: String
    @NSManaged var created: Date

    // The only available initializer initializes all none-optional properties. 
    // Below we mark all other initializers as unavailable. The compiler can now
    // enforce that we never instantiate an instance without setting all propperties.
    init(
        context: NSManagedObjectContext,
        id: UUID,
        text: String,
        created: Date
    ) {
        super.init(entity: NoteEntity.entityDescription, insertInto: context)
        self.id = id
        self.text = text
        self.created = created
    }

    // MARK: - Unavailable initializers
    @available(*, unavailable)
    override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
    }

    @available(*, unavailable)
    init(context: NSManagedObjectContext) {
        fatalError()
    }

    @available(*, unavailable)
    init() {
        fatalError()
    }
}

extension NoteEntity: SelfDescribingCoreDataEntity {
    static var entityDescription = NoteEntity.description(
        .uuid(\.id),
        .string(\.text),
        .date(\.created)
    )
}
