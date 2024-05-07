//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import Combine

class AuthorsManager {
    let container: NSPersistentContainer

    var authorCreated: AnyPublisher<AuthorEntity, Never> {
        _authorCreated.eraseToAnyPublisher()
    }

    private var _authorCreated = PassthroughSubject<AuthorEntity, Never>()

    private var viewContext: NSManagedObjectContext {
        container.viewContext
    }

    init(container: NSPersistentContainer) {
        self.container = container
    }

    func fetch() throws -> [AuthorEntity] {
        let request = AuthorEntity.fetchRequest()
        return try self.viewContext.fetch(request)
    }

    func create(name: String) throws {
        let entity = AuthorEntity(
            context: self.viewContext,
            id: UUID(),
            name: name
        )
        try self.viewContext.save()
        self._authorCreated.send(entity)
    }

    func delete(authors: [AuthorEntity]) throws {
        authors.forEach {
            self.viewContext.delete($0)
        }
        try self.viewContext.save()
    }
}
