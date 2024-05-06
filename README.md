# ProgrammaticCoreData

ProgrammaticCoreData is a library for iOS and macOS for creating CoreData's `NSManagedObjectModel`s programmatically.

### Why might I want create my Core Data models programmatically (and with ProgrammaticCoreData):
- Shipping core data models in packages is a pain.
- When [linking multiple core data stores](https://developer.apple.com/documentation/coredata/linking_data_between_two_core_data_stores) certain CoreData features are limmited or unavailable. Relationships across data stores for example are not supported (fetched properties can be used instead but have to be updated manually). Programmatic data models can be combined, resulting in one store and the ability to use relationships.
- When [removing optionals from your CoreData code](https://www.jessesquires.com/blog/2022/01/26/core-data-optionals/) propperty types and their optionality in the Xcode data model and the manually created `Entities` have to match. When changing a propperty in either place the other has to be updated manually, which introduces a place for failure.
- Xcode's CoreData models are stored as XML files. Reviewing changes can be difficult. A programmatic CoreData model makes reviews simpler
- Data models created with ProgrammaticCoreData are declarative.

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
.package(url: "https://github.com/anconaesselmann/ProgrammaticCoreData.git", from: "0.0.3")
```


## Getting started

The example projects are a good starting point

- [Example_01](https://github.com/anconaesselmann/ProgrammaticCoreData/tree/main/Examples/Example_01) is a simple notes application without any relationships between entities:

We create out `Note` entity programmatically:
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
