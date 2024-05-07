//  Created by Axel Ancona Esselmann on 3/22/24.
//

import Foundation
import CoreData

public struct RelationshipProperties {

    public enum RelationshipType {
        case toOne
        case toMany(minCount: Int?, maxCount: Int?, isOrdered: Bool)

        public static var toMany: Self {
            .toMany(minCount: nil, maxCount: nil, isOrdered: false)
        }

        public static func toMany(minCount: Int? = nil, isOrdered: Bool = false) -> Self {
            .toMany(minCount: minCount, maxCount: nil, isOrdered: isOrdered)
        }

        public static func toMany(maxCount: Int? = nil, isOrdered: Bool = false) -> Self {
            .toMany(minCount: nil, maxCount: maxCount, isOrdered: isOrdered)
        }

        public static func toMany(isOrdered: Bool) -> Self {
            .toMany(minCount: nil, maxCount: nil, isOrdered: isOrdered)
        }
    }

    public var inverse: TypeErasedKeyPath
    public var deleteRule: NSDeleteRule
    public var relationshipType: RelationshipType

    public init<CoreDataEntity, T>(
        inverse: KeyPath<CoreDataEntity, T>,
        deleteRule: NSDeleteRule,
        relationshipType: RelationshipType
    )
        where CoreDataEntity: SelfDescribingCoreDataEntity
    {
        self.inverse = inverse.typeErased
        self.deleteRule = deleteRule
        self.relationshipType = relationshipType
    }
}
