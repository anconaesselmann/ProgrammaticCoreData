//  Created by Axel Ancona Esselmann on 5/6/24.
//

import SwiftUI
import Combine

@MainActor
class NotesViewModel: ObservableObject {
    @Published
    private(set) var notes: [NoteEntity] = []

    private var bag = Set<AnyCancellable>()

    private let notesManager = AppState.shared.notesManager

    init() {
        notesManager.noteCreated
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newNote in
                withAnimation {
                    self?.notes.append(newNote)
                }
            }
            .store(in: &bag)
    }

    func fetch() {
        notes = (try? notesManager.fetch()) ?? []
    }

    func delete(indexSet: IndexSet) {
        let toDelete = indexSet.map { notes[$0] }
        do {
            try notesManager.delete(notes: toDelete)
            notes.remove(atOffsets: indexSet)
        } catch {
            assertionFailure(error.localizedDescription)
        }
    }
}

struct NotesView: View {

    @StateObject
    var vm = NotesViewModel()

    var body: some View {
        VStack {
            CreateNoteView()
            List {
                ForEach(vm.notes, id: \.id) {
                    Text($0.text)
                }
                .onDelete {
                    vm.delete(indexSet: $0)
                }
            }
        }
        .task {
            vm.fetch()
        }
    }
}

#Preview {
    NotesView()
}
