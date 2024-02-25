//  Created by Axel Ancona Esselmann on 2/24/24.
//

import CoreData

public enum EntityDescriptionAttribute<CoreDataEntity, T> {
    case undefined(KeyPath<CoreDataEntity, T>)
    case integer16(KeyPath<CoreDataEntity, T>)
    case integer32(KeyPath<CoreDataEntity, T>)
    case integer64(KeyPath<CoreDataEntity, T>)
    case decimal(KeyPath<CoreDataEntity, T>)
    case double(KeyPath<CoreDataEntity, T>)
    case float(KeyPath<CoreDataEntity, T>)
    case string(KeyPath<CoreDataEntity, T>)
    case boolean(KeyPath<CoreDataEntity, T>)
    case date(KeyPath<CoreDataEntity, T>)
    case binaryData(KeyPath<CoreDataEntity, T>)
    case uuid(KeyPath<CoreDataEntity, T>)
    case uri(KeyPath<CoreDataEntity, T>)
    case transformable(KeyPath<CoreDataEntity, T>)
    case objectID(KeyPath<CoreDataEntity, T>)
    case composite(KeyPath<CoreDataEntity, T>)

    public var attributeType: NSAttributeType {
        switch self {
        case .undefined:
            return .undefinedAttributeType
        case .integer16:
            return .integer16AttributeType
        case .integer32:
            return .integer32AttributeType
        case .integer64:
            return .integer64AttributeType
        case .decimal:
            return .decimalAttributeType
        case .double:
            return .doubleAttributeType
        case .float:
            return .floatAttributeType
        case .string:
            return .stringAttributeType
        case .boolean:
            return .booleanAttributeType
        case .date:
            return .dateAttributeType
        case .binaryData:
            return .binaryDataAttributeType
        case .uuid:
            return .UUIDAttributeType
        case .uri:
            return .URIAttributeType
        case .transformable:
            return .transformableAttributeType
        case .objectID:
            return .objectIDAttributeType
        case .composite:
            return .compositeAttributeType
        }
    }

    public var keyPath: KeyPath<CoreDataEntity, T> {
        switch self {
        case
            .undefined(let keyPath),
            .integer16(let keyPath),
            .integer32(let keyPath),
            .integer64(let keyPath),
            .decimal(let keyPath),
            .double(let keyPath),
            .float(let keyPath),
            .string(let keyPath),
            .boolean(let keyPath),
            .date(let keyPath),
            .binaryData(let keyPath),
            .uuid(let keyPath),
            .uri(let keyPath),
            .transformable(let keyPath),
            .objectID(let keyPath),
            .composite(let keyPath):
            return keyPath
        }
    }

    public var nsAttributeType: NSAttributeDescription {
        NSAttributeDescription(
            name: NSExpression(forKeyPath: keyPath).keyPath,
            type: attributeType,
            defaultValue: nil
        )
    }
}
