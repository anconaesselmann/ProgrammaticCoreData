//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import ProgrammaticCoreData

@objc(NoteEntity)
public class NoteEntity: NSManagedObject, Identifiable {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<NoteEntity> {
        return NSFetchRequest<NoteEntity>(entityName: "NoteEntity")
    }

    @NSManaged public var id: UUID
    @NSManaged public var text: String
    @NSManaged public var created: Date

    public init(
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

    @available(*, unavailable)
    public override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
    }

    @available(*, unavailable)
    public init(context: NSManagedObjectContext) {
        fatalError()
    }

    @available(*, unavailable)
    public init() {
        fatalError()
    }
}

extension NoteEntity: SelfDescribingCoreDataEntity {
    public static var entityDescription = NoteEntity.description(
        .uuid(\.id),
        .string(\.text),
        .date(\.created)
    )
}
