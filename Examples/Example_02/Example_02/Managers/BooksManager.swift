//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData
import Combine

class BooksManager {
    let container: NSPersistentContainer

    var bookCreated: AnyPublisher<BookEntity, Never> {
        _bookCreated.eraseToAnyPublisher()
    }

    private var _bookCreated = PassthroughSubject<BookEntity, Never>()

    private var viewContext: NSManagedObjectContext {
        container.viewContext
    }

    init(container: NSPersistentContainer) {
        self.container = container
    }

    func fetch() async throws -> [BookEntity] {
        let request = BookEntity.fetchRequest()
        return try self.viewContext.fetch(request)
    }

    func create(title: String, author: AuthorEntity) async throws {
        let entity = BookEntity(
            context: self.viewContext,
            id: UUID(),
            title: title,
            author: author
        )
        try self.viewContext.save()
        self._bookCreated.send(entity)
    }

    func delete(books: [BookEntity]) async throws {
        books.forEach {
            self.viewContext.delete($0)
        }
        try self.viewContext.save()
    }
}
