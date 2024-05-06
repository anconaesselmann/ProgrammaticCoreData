//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation
import CoreData

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
            
            let notesManager = NotesManager(container: container)

            AppState.shared = AppState(
                notesManager: notesManager
            )
            state = .success
        } catch {
            state = .failure(error)
        }
    }
}
