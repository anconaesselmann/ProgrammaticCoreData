//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import ProgrammaticCoreData

@objc(AuthorEntity)
final public class AuthorEntity: NSManagedObject, Identifiable {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<AuthorEntity> {
        return NSFetchRequest<AuthorEntity>(entityName: "AuthorEntity")
    }

    @NSManaged public var id: UUID
    @NSManaged public var name: String
    @NSManaged public var _books: NSOrderedSet

    var books: Array<BookEntity> {
        get { _books.array as! Array<BookEntity> }
    }

    @objc(add_booksObject:)
    @NSManaged public func addToBooks(_ value: BookEntity)

    @objc(remove_booksObject:)
    @NSManaged public func removeFromBooks(_ value: BookEntity)

    @objc(add_books:)
    @NSManaged public func addToBooks(_ values: Set<BookEntity>)

    @objc(remove_books:)
    @NSManaged public func removeFromBooks(_ values: Set<BookEntity>)

    public init(
        context: NSManagedObjectContext,
        id: UUID,
        name: String
    ) {
        super.init(entity: AuthorEntity.entityDescription, insertInto: context)
        self.id = id
        self.name = name
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

extension AuthorEntity: SelfDescribingCoreDataEntity {
    public static var entityDescription = AuthorEntity.description(
        .uuid(\.id),
        .string(\.name),
        .relationship(\._books, .init(
            inverse: \BookEntity.author,
            deleteRule: .cascadeDeleteRule,
            relationshipType: .toMany(isOrdered: true)
        ))
    )
}
