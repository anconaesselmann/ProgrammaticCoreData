# ProgrammaticCoreData

ProgrammaticCoreData is a library for iOS and macOS for creating CoreData's `NSManagedObjectModel`s programmatically.

### Why might I want to create my Core Data models programmatically (and with ProgrammaticCoreData):
- CoreData models that were created with Xcode's editor are a pain to ship in packages.
- When [linking multiple core data stores](https://developer.apple.com/documentation/coredata/linking_data_between_two_core_data_stores) certain CoreData features are limmited or unavailable. Relationships across data stores for example are not supported (fetched properties can be used instead but have to be updated manually). Programmatic data models can be combined, resulting in one store and the ability to use relationships.
- When [removing optionals from your CoreData code](https://www.jessesquires.com/blog/2022/01/26/core-data-optionals/) propperty types and their optionality in the Xcode data model and the manually created `Entities` have to match. When changing a propperty in either place the other has to be updated manually, which introduces a place to make mistakes. Since ProgrammaticCoreData uses KeyPaths for entity descriptions the compiler spots many of the aforementioned issues. Since creating entity descriptions programmatically allows for the Entity and the Entity Description to live in the same file, spotting issues the compiler did not catch might become a bit easier.
- Xcode's CoreData models are stored as XML files. Reviewing changes can be difficult. A programmatic CoreData model makes reviews simpler
- Data models created with ProgrammaticCoreData are declarative.
- Apple's APIs for creating CoreData models programmatically relies heavily on strings. ProgrammaticCoreData replaces stringy API's with ones utilizing `KeyPath`s.

### Reasons for not creating your data models programmatically:
- Migrations. A [humorous writeup](https://medium.com/@JohnCoatesDev/dont-create-core-data-models-programmatically-3a563e66ce2a) chronicles the pains of how to get migrations to work with programmatically created data models. There is verry little public documentation for migrating CoreData models that were not created with Xcode's CoreData model editor. [It is possible though](https://github.com/JohnCoates/Slate/tree/master/Source/Database).

## Author

Axel Ancona Esselmann, axel@anconaesselmann.com

## License

ProgrammaticCoreData is available under the MIT license. See the LICENSE file for more info.

## Installing ProgrammaticCoreData
ProgrammaticCoreData supports [Swift Package Manager](https://www.swift.org/package-manager/).

### Swift Package Manager

1. In Xcode, select “File” → “Add Packages...”
1. Enter https://github.com/anconaesselmann/ProgrammaticCoreData.git

or add the following dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/anconaesselmann/ProgrammaticCoreData.git", from: "0.0.4")
```


## Getting started

The example projects are a good starting point

- [Example_01](https://github.com/anconaesselmann/ProgrammaticCoreData/tree/main/Examples/Example_01) is a simple notes application without any relationships between entities:

We create our `Note` entity programmatically:
```swift
@objc(Note)
public class Note: NSManagedObject, Identifiable {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var id: UUID
    @NSManaged public var text: String
    @NSManaged public var created: Date
}
```

Extending `Note` to conform to `SelfDescribingCoreDataEntity` will give us a declarative representation of `Note`'s entity description:
```swift
extension Note: SelfDescribingCoreDataEntity {
    public static var entityDescription = Note.description(
        .uuid(\.id),
        .string(\.text),
        .date(\.created)
    )
}
```

We can now build our data model and create a container:
```swift
let container = try await NSManagedObjectModel(
    Note.self
)
.createContainer(name: "Notes", location: .local)
```

- [Example_02](https://github.com/anconaesselmann/ProgrammaticCoreData/tree/main/Examples/Example_02) is a Book Archive app with a to-many relationship from an `Author` to their `Book`s and an inverse to-one relationship from a `Book` and it's `Author`:

We create an `Author` entity programmatically. Note the `addToBooks` and `removeFromBooks` function signatures. We are exposing objective-c methods that get generated for us to add to our `_books` ordered set:
```swift
@objc(Author)
final public class Author: NSManagedObject, Identifiable {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Author> {
        return NSFetchRequest<Author>(entityName: "Author")
    }

    @NSManaged public var id: UUID
    @NSManaged public var name: String
    @NSManaged public var _books: NSOrderedSet

    public var books: Array<Book> {
        get { _books.array as! Array<Book> }
    }

    @objc(add_booksObject:)
    @NSManaged public func addToBooks(_ value: Book)

    @objc(remove_booksObject:)
    @NSManaged public func removeFromBooks(_ value: Book)

    @objc(add_books:)
    @NSManaged public func addToBooks(_ values: Set<Book>)

    @objc(remove_books:)
    @NSManaged public func removeFromBooks(_ values: Set<Book>)
}
```

We create a `Book` entity programmatically. Note that it should be impossible to create a book without adding the book to it's authors `books` propperty, since we have an inverse relationship. We achieve this by creating an initializer that adds the book to it's `Author` and marking all other initializers as `unavailable`:
```swift
@objc(Book)
final public class Book: NSManagedObject, Identifiable {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }

    @NSManaged public var id: UUID
    @NSManaged public var title: String
    @NSManaged public var author: Author
    
    public init(
        context: NSManagedObjectContext,
        id: UUID,
        title: String,
        author: Author
    ) {
        super.init(entity: Book.entityDescription, insertInto: context)
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
```

Extending `Author` to conform to `SelfDescribingCoreDataEntity` will give us a declarative representation of `Author`'s entity description. We also set up the to-many relationship to the `Book` entity:
```swift
extension Author: SelfDescribingCoreDataEntity {
    public static var entityDescription = Author.description(
        .uuid(\.id),
        .string(\.name),
        .relationship(\._books, .init(
            inverse: \Book.author,
            deleteRule: .cascadeDeleteRule,
            relationshipType: .toMany(isOrdered: true)
        ))
    )
}
```

Extending `Book` to conform to `SelfDescribingCoreDataEntity` will give us a declarative representation of `Book`'s entity description. We also set up the to-one relationship to the `Book`'s `Author` entity:
```swift
extension Book: SelfDescribingCoreDataEntity {
    public static var entityDescription = Book.description(
        .uuid(\.id),
        .string(\.title),
        .relationship(\.author, .init(
            inverse: \Author._books,
            deleteRule: .nullifyDeleteRule,
            relationshipType: .toOne
        ))
    )
}
```

We can now build our data model and create a container:
```swift
let container = try await NSManagedObjectModel(
    AuthorEntity.self,
    BookEntity.self
)
.createContainer(name: "Books", location: .local)
```

If we didn't care about the order of books on our `Author` entity we would declare a `books` `Set` instead of an `Array`:

```Swift
@objc(Author)
final public class Author: NSManagedObject, Identifiable {
    // ...
    @NSManaged public var _books: NSSet

    var books: Set<Book> {
        get { _books as! Set<Book> }
    }
    // ...
```

In the `Author`'s extension to conform to `SelfDescribingCoreDataEntity` we would set `isOrdered` to `false` or simply write `.toMany`:
```Swift
extension AuthorEntity: SelfDescribingCoreDataEntity {
    public static var entityDescription = AuthorEntity.description(
        // ...
        .relationship(\._books, .init(
            inverse: \BookEntity.author,
            deleteRule: .cascadeDeleteRule,
            relationshipType: .toMany
        ))
        // ...
    )
}
``` 

## Limmitations

- Entities can have a maximum of 25 attributes
