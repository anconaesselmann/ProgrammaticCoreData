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

    // CoreData requires an `NSSet` or `NSOrderedSet` for relationships.
    // (For ordered sets make sure to set 'isOrdered' = true in `entityDescription` below)
    // In this example we use `_` to "hide" the inner none-type-safe objective-c workings
    // and we only expose a read-only Swift array of `Book`s. We add to `_books` with
    // the auto-generated  methods below.
    var books: Array<BookEntity> {
        get { _books.array as! Array<BookEntity> }
    }

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

    // MARK: - Auto-generated methods for manipulating `_books`
    @objc(add_booksObject:)
    @NSManaged func addToBooks(_ value: BookEntity)

    @objc(remove_booksObject:)
    @NSManaged func removeFromBooks(_ value: BookEntity)

    // MARK: - Not used in this project but also auto-generated:
    @objc(add_books:)
    @NSManaged func addToBooks(_ values: Set<BookEntity>)

    @objc(remove_books:)
    @NSManaged func removeFromBooks(_ values: Set<BookEntity>)
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
