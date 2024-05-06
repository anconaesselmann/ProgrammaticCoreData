//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import Combine

class NotesManager {
    let container: NSPersistentContainer

    var noteCreated: AnyPublisher<NoteEntity, Never> {
        _noteCreated.eraseToAnyPublisher()
    }

    private var _noteCreated = PassthroughSubject<NoteEntity, Never>()

    private var viewContext: NSManagedObjectContext {
        container.viewContext
    }

    init(container: NSPersistentContainer) {
        self.container = container
    }

    func fetch() async throws -> [NoteEntity] {
        try await viewContext.perform {
            let request = NoteEntity.fetchRequest()
            return try self.viewContext.fetch(request)
        }
    }

    func create(text: String) async throws {
        try await viewContext.perform {
            let entity = NoteEntity(
                context: self.viewContext,
                id: UUID(),
                text: text,
                created: .now
            )
            try self.viewContext.save()
            self._noteCreated.send(entity)
        }
    }

    func delete(notes: [NoteEntity]) async throws {
        try await viewContext.perform {
            notes.forEach {
                self.viewContext.delete($0)
            }
            try self.viewContext.save()
        }
    }
}
