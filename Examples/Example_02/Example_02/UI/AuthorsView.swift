//  Created by Axel Ancona Esselmann on 5/6/24.
//

import SwiftUI
import Combine

@MainActor
class AuthorsViewModel: ObservableObject {
    @Published
    private(set) var authors: [AuthorEntity] = []

    private var bag = Set<AnyCancellable>()

    private let authorsManager = AppState.shared.authorsManager

    init() {
        authorsManager.authorCreated
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newAuthor in
                withAnimation {
                    self?.authors.append(newAuthor)
                }
            }
            .store(in: &bag)
    }

    func fetch() async {
        authors = (try? await authorsManager.fetch()) ?? []
    }

    func delete(indexSet: IndexSet) {
        let toDelete = indexSet.map { authors[$0] }
        Task {
            try await authorsManager.delete(authors: toDelete)
            authors.remove(atOffsets: indexSet)
        }
    }
}

struct AuthorsView: View {

    @StateObject
    var vm = AuthorsViewModel()

    var body: some View {
        VStack {
            CreateAuthorView()
            List {
                ForEach(vm.authors, id: \.id) { author in
                    NavigationLink(author.name, value: author)
                }
                .onDelete {
                    vm.delete(indexSet: $0)
                }
            }
        }
        .task {
            await vm.fetch()
        }
    }
}

#Preview {
    AuthorsView()
}
