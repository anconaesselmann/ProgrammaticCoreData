//  Created by Axel Ancona Esselmann on 5/6/24.
//

import SwiftUI
import Combine

@MainActor
class BooksViewModel: ObservableObject {

    private var bag = Set<AnyCancellable>()

    private let booksManager = AppState.shared.booksManager

    init() {
        booksManager.bookCreated
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                self?.objectWillChange.send()
            }
            .store(in: &bag)
    }

    func delete(indexSet: IndexSet, for author: AuthorEntity) {
        Task {
            let books = indexSet.map { author.books[$0] }
            try await booksManager.delete(books: books)
            self.objectWillChange.send()
        }
    }
}

struct BooksView: View {

    @StateObject
    var vm = BooksViewModel()

    let author: AuthorEntity

    var body: some View {
        VStack(spacing: 0) {
            CreateBookView(author: author)
            List {
                ForEach(Array(author.books), id: \.id) { book in
                    Text(book.title)
                }
                .onDelete { indexSet in
                    vm.delete(indexSet: indexSet, for: author)
                }
            }
        }
        .navigationTitle("\(author.name)'s Books")
    }
}
