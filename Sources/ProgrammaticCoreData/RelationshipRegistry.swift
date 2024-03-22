//  Created by Axel Ancona Esselmann on 3/22/24.
//

import Foundation
import CoreData

internal class RelationshipRegistry {

    struct RelationshipRecord {
        let description: NSRelationshipDescription
        let relationship: TypeErasedKeyPath
        let inverse: TypeErasedKeyPath

        var rootType: SelfDescribingCoreDataEntity.Type {
            relationship.rootType as! SelfDescribingCoreDataEntity.Type
        }

        var destinationType: SelfDescribingCoreDataEntity.Type {
            inverse.rootType as! SelfDescribingCoreDataEntity.Type
        }

        var propertyDescription: String {
            "\(ObjectIdentifier(relationship.rootType)).\(relationship.propertyName)"
        }

        var inversePropertyDescription: String {
            "\(ObjectIdentifier(inverse.rootType)).\(inverse.propertyName)"
        }
    }

    static let shared = RelationshipRegistry()

    private var relationships: [RelationshipRecord] = []

    func register(
        description: NSRelationshipDescription,
        keyPath: TypeErasedKeyPath,
        inverseKeyPath: TypeErasedKeyPath
    ) {
        let relationship = RelationshipRecord(
            description: description,
            relationship: keyPath,
            inverse: inverseKeyPath
        )
        relationships.append(relationship)
    }

    func resolveRelationships(using entityTypes: [any SelfDescribingCoreDataEntity.Type]) {
        var entityDescriptions = entityTypes
            .reduce(into: [AnyHashable: NSEntityDescription]()) {
                $0[ObjectIdentifier($1)] = $1.entityDescription
            }
        var inverseLookup: [String: RelationshipRecord] = [:]

        // set destination
        for relationship in relationships {
            let destinationType = relationship.destinationType
            guard let destinationEntityDescription = entityDescriptions[ObjectIdentifier(destinationType)] else {
                assertionFailure()
                continue
            }
            relationship.description.destinationEntity = destinationEntityDescription
            inverseLookup[relationship.inversePropertyDescription] = relationship
        }
        // set inverses
        for relationship in relationships {
            let inverseRelationshipLookupKey = relationship.propertyDescription
            guard let inverseRelationship = inverseLookup[inverseRelationshipLookupKey] else {
                assertionFailure()
                continue
            }
            inverseLookup[inverseRelationshipLookupKey] = nil
            relationship.description.inverseRelationship = inverseRelationship.description
        }
        guard inverseLookup.isEmpty else {
            assertionFailure("Imbalanced inverse relationships")
            return
        }
        relationships = []
    }
}
