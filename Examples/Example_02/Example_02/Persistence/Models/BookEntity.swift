//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import ProgrammaticCoreData

@objc(BookEntity)
final class BookEntity: NSManagedObject, Identifiable {

    @NSManaged var id: UUID
    @NSManaged var title: String
    @NSManaged var author: AuthorEntity

    // The only available initializer initializes all none-optional properties.
    // Below we mark all other initializers as unavailable. The compiler can now
    // enforce that we never instantiate an instance without setting all propperties.
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
