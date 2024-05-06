//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import ProgrammaticCoreData

struct ContainerBuilder {
    static func build() async throws -> NSPersistentContainer {
        try await NSManagedObjectModel(
            NoteEntity.self
        )
        .createContainer(name: "Notes", location: .local)
    }
}
