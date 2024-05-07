//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import ProgrammaticCoreData

struct ContainerBuilder {
    static func build() async throws -> NSPersistentContainer {
        try await NSManagedObjectModel(
            AuthorEntity.self,
            BookEntity.self
        )
        .createContainer(name: "Books", location: .local)
        .printLocation()
    }
}
