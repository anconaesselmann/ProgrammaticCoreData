//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation

@MainActor
class AppInitializer: ObservableObject {

    @Published
    var state: LoadableResult = .notStarted

    @MainActor
    func initialize() async {
        guard case .notStarted = state else {
            return
        }
        state = .loading
        do {
            let container = try await ContainerBuilder.build()

            AppState.shared = AppState(
                authorsManager: AuthorsManager(container: container),
                booksManager: BooksManager(container: container)
            )
            state = .success
        } catch {
            state = .failure(error)
        }
    }
}
