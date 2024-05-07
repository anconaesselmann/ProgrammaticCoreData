//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import ProgrammaticCoreData

@objc(AuthorEntity)
final class AuthorEntity: NSManagedObject, Identifiable {

    @NSManaged var id: UUID
    @NSManaged var name: String
    @NSManaged var _books: NSOrderedSet

    var books: Array<BookEntity> {
        get { _books.array as! Array<BookEntity> }
    }

    @objc(add_booksObject:)
    @NSManaged func addToBooks(_ value: BookEntity)

    @objc(remove_booksObject:)
    @NSManaged func removeFromBooks(_ value: BookEntity)

    @objc(add_books:)
    @NSManaged func addToBooks(_ values: Set<BookEntity>)

    @objc(remove_books:)
    @NSManaged func removeFromBooks(_ values: Set<BookEntity>)

    // The only available initializer initializes all none-optional properties.
    // Below we mark all other initializers as unavailable. The compiler can now
    // enforce that we never instantiate an instance without setting all propperties.
    init(
        context: NSManagedObjectContext,
        id: UUID,
        name: String
    ) {
        super.init(entity: AuthorEntity.entityDescription, insertInto: context)
        self.id = id
        self.name = name
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

extension AuthorEntity: SelfDescribingCoreDataEntity {
    static var entityDescription = AuthorEntity.description(
        .uuid(\.id),
        .string(\.name),
        .relationship(\._books, .init(
            inverse: \BookEntity.author,
            deleteRule: .cascadeDeleteRule,
            relationshipType: .toMany(isOrdered: true)
        ))
    )
}
