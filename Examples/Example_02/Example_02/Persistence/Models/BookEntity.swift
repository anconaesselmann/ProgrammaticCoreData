//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import ProgrammaticCoreData

@objc(BookEntity)
public class BookEntity: NSManagedObject, Identifiable {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<BookEntity> {
        return NSFetchRequest<BookEntity>(entityName: "BookEntity")
    }

    @NSManaged public var id: UUID
    @NSManaged public var title: String
    @NSManaged public var author: AuthorEntity

    public init(
        context: NSManagedObjectContext,
        id: UUID,
        title: String,
        author: AuthorEntity
    ) {
        super.init(entity: BookEntity.entityDescription, insertInto: context)
        self.id = id
        self.title = title
        self.author = author
        author.addToBooks(self)
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

extension BookEntity: SelfDescribingCoreDataEntity {
    public static var entityDescription = BookEntity.description(
        .uuid(\.id),
        .string(\.title),
        .relationship(\.author, .init(
            inverse: \AuthorEntity._books,
            deleteRule: .nullifyDeleteRule,
            relationshipType: .toOne
        ))
    )
}
