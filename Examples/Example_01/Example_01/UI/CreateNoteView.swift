//  Created by Axel Ancona Esselmann on 5/6/24.
//

import SwiftUI

struct CreateNoteView: View {

    let notesManager = AppState.shared.notesManager

    @State
    var text: String = ""

    var body: some View {
        HStack {
            TextField("new note", text: $text)
                .textFieldStyle(.roundedBorder)
            Button("create") {
                Task {
                    try await notesManager.create(text: text)
                    text = ""
                }
            }
            .disabled(text.isEmpty)
        }.padding()
    }
}
