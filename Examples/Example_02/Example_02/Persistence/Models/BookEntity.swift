//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import ProgrammaticCoreData

@objc(BookEntity)
final class BookEntity: NSManagedObject, Identifiable {
    @nonobjc class func fetchRequest() -> NSFetchRequest<BookEntity> {
        return NSFetchRequest<BookEntity>(entityName: "BookEntity")
    }

    @NSManaged var id: UUID
    @NSManaged var title: String
    @NSManaged var author: AuthorEntity

    init(
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

extension BookEntity: SelfDescribingCoreDataEntity {
    static var entityDescription = BookEntity.description(
        .uuid(\.id),
        .string(\.title),
        .relationship(\.author, .init(
            inverse: \AuthorEntity._books,
            deleteRule: .nullifyDeleteRule,
            relationshipType: .toOne
        ))
    )
}
