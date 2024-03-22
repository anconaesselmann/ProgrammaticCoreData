//  Created by Axel Ancona Esselmann on 3/22/24.
//

import CoreData

public extension EntityDescriptionAttribute {
    static func relationship<InverseCoreDataType, InverseT>(
        _ keyPath: KeyPath<CoreDataEntity, T>,
        inverse: KeyPath<InverseCoreDataType, InverseT>,
        is type: RelationshipProperties.RelationshipType = .toOne,
        deleteRule: NSDeleteRule = .noActionDeleteRule
    ) -> Self
        where
            CoreDataEntity: SelfDescribingCoreDataEntity,
            InverseCoreDataType: SelfDescribingCoreDataEntity
    {
        .relationship(keyPath, RelationshipProperties(
            inverse: inverse,
            deleteRule: deleteRule,
            relationshipType: type
        ))
    }

    // TODO: allow to pass in min/max.
    static func relationship<InverseCoreDataType, InverseT>(
        _ keyPath: KeyPath<CoreDataEntity, NSSet?>,
        inverse: KeyPath<InverseCoreDataType, InverseT>,
        deleteRule: NSDeleteRule = .noActionDeleteRule
    ) -> Self
        where
            CoreDataEntity: SelfDescribingCoreDataEntity,
            InverseCoreDataType: SelfDescribingCoreDataEntity,
            T == NSSet?
    {
        .relationship(keyPath, RelationshipProperties(
            inverse: inverse,
            deleteRule: deleteRule,
            relationshipType: .toMany
        ))
    }

    // TODO: allow to pass in min/max.
    static func relationship<InverseCoreDataType, InverseT>(
        _ keyPath: KeyPath<CoreDataEntity, NSSet>,
        inverse: KeyPath<InverseCoreDataType, InverseT>,
        is type: RelationshipProperties.RelationshipType = .toOne,
        deleteRule: NSDeleteRule = .noActionDeleteRule
    ) -> Self
        where
            CoreDataEntity: SelfDescribingCoreDataEntity,
            InverseCoreDataType: SelfDescribingCoreDataEntity,
            T == NSSet
    {
        .relationship(keyPath, RelationshipProperties(
            inverse: inverse,
            deleteRule: deleteRule,
            relationshipType: .toMany
        ))
    }

    static func undefined(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Any? = nil) -> Self {
        .undefined(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func integer16(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Int16? = nil) -> Self {
        .integer16(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func integer32(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Int32? = nil) -> Self {
        .integer32(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func integer64(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Int64? = nil) -> Self {
        .integer64(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func decimal(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Decimal? = nil) -> Self {
        .decimal(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func double(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Double? = nil) -> Self {
        .double(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func float(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Float? = nil) -> Self {
        .float(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func string(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: String? = nil) -> Self {
        .string(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func boolean(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Bool? = nil) -> Self {
        .boolean(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func date(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Date? = nil) -> Self {
        .date(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func binaryData(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Data? = nil) -> Self {
        .binaryData(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func uuid(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: UUID? = nil) -> Self {
        .uuid(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func uri(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Any? = nil) -> Self {
        .uri(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func transformable(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Any? = nil) -> Self {
        .transformable(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func objectID(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Any? = nil) -> Self {
        .objectID(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
    static func composite(_ keyPath: KeyPath<CoreDataEntity, T>, defaultValue: Any? = nil) -> Self {
        .composite(keyPath, AttributeProperties(defaultValue: defaultValue))
    }
}
