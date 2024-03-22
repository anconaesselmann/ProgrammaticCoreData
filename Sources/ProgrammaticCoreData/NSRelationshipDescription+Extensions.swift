//  Created by Axel Ancona Esselmann on 3/22/24.
//

import CoreData

public extension NSRelationshipDescription {
    convenience init(
        name: String,
        deleteRule: NSDeleteRule = .noActionDeleteRule,
        relationshipType: RelationshipProperties.RelationshipType
    ) {
        self.init()
        self.name = name
        self.deleteRule = deleteRule
        switch relationshipType {
        case .toOne:
            self.maxCount = 1
        case .toMany(minCount: let maybeMinCount, let maxCount):
            if let minCount = maybeMinCount {
                self.minCount = minCount
            } else {
                self.minCount = 0
            }
            if let maxCount = maxCount {
                self.maxCount = maxCount
            }
        }
    }
}
