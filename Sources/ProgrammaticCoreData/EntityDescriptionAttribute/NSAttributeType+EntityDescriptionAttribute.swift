//  Created by Axel Ancona Esselmann on 3/22/24.
//

import CoreData

extension NSAttributeType {
    init?<CoreDataEntity, T>(_ entityDescriptionAttribute: EntityDescriptionAttribute<CoreDataEntity, T>) {
        switch entityDescriptionAttribute {
        case .undefined:
            self = .undefinedAttributeType
        case .int16:
            self = .integer16AttributeType
        case .int32:
            self = .integer32AttributeType
        case .int64:
            self = .integer64AttributeType
        case .decimal:
            self = .decimalAttributeType
        case .double:
            self = .doubleAttributeType
        case .float:
            self = .floatAttributeType
        case .string:
            self = .stringAttributeType
        case .boolean:
            self = .booleanAttributeType
        case .date:
            self = .dateAttributeType
        case .binaryData:
            self = .binaryDataAttributeType
        case .uuid:
            self = .UUIDAttributeType
        case .uri:
            self = .URIAttributeType
        case .transformable:
            self = .transformableAttributeType
        case .objectID:
            self = .objectIDAttributeType
        case .composite:
            self = .compositeAttributeType
        case .relationship:
            return nil
        }
    }
}
