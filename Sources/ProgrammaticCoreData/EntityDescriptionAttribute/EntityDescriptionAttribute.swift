//  Created by Axel Ancona Esselmann on 2/24/24.
//

import CoreData

public enum EntityDescriptionAttribute<CoreDataEntity, T> {

    enum Properties {
        case attribute(AttributeProperties)
        case relationship(RelationshipProperties)
    }

    case undefined(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case integer16(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case integer32(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case integer64(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case decimal(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case double(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case float(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case string(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case boolean(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case date(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case binaryData(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case uuid(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case uri(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case transformable(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case objectID(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case composite(KeyPath<CoreDataEntity, T>, AttributeProperties)
    case relationship(KeyPath<CoreDataEntity, T>, RelationshipProperties)

    internal var attributeType: NSAttributeType? {
        NSAttributeType(self)
    }

    internal var keyPath: KeyPath<CoreDataEntity, T> {
        switch self {
        case
            .undefined(let keyPath, _),
            .integer16(let keyPath, _),
            .integer32(let keyPath, _),
            .integer64(let keyPath, _),
            .decimal(let keyPath, _),
            .double(let keyPath, _),
            .float(let keyPath, _),
            .string(let keyPath, _),
            .boolean(let keyPath, _),
            .date(let keyPath, _),
            .binaryData(let keyPath, _),
            .uuid(let keyPath, _),
            .uri(let keyPath, _),
            .transformable(let keyPath, _),
            .objectID(let keyPath, _),
            .composite(let keyPath, _),
            .relationship(let keyPath, _):
            return keyPath
        }
    }

    internal var properties: Properties {
        switch self {
        case .relationship(_, let properties): 
            return .relationship(properties)
        case
            .undefined(_, let properties),
            .integer16(_, let properties),
            .integer32(_, let properties),
            .integer64(_, let properties),
            .decimal(_, let properties),
            .double(_, let properties),
            .float(_, let properties),
            .string(_, let properties),
            .boolean(_, let properties),
            .date(_, let properties),
            .binaryData(_, let properties),
            .uuid(_, let properties),
            .uri(_, let properties),
            .transformable(_, let properties),
            .objectID(_, let properties),
            .composite(_, let properties):
            return .attribute(properties)
        }
    }

    public var nsPropertyDescription: NSPropertyDescription {
        let name = NSExpression(forKeyPath: keyPath).keyPath
        switch properties {
        case .attribute(let attributeProperties) where attributeType != nil:
            return NSAttributeDescription(
                name: name,
                type: attributeType!,
                defaultValue: attributeProperties.defaultValue
            )
        case .relationship(let relationshipProperties):
            let description = NSRelationshipDescription(
                name: name,
                deleteRule: relationshipProperties.deleteRule,
                relationshipType: relationshipProperties.relationshipType
            )
            RelationshipRegistry.shared
                .register(
                    description: description,
                    keyPath: keyPath.typeErased,
                    inverseKeyPath: relationshipProperties.inverse
                )
            return description
        default:
            fatalError()
        }
    }
}
