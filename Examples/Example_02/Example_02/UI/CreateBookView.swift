//  Created by Axel Ancona Esselmann on 5/6/24.
//

import SwiftUI

struct CreateBookView: View {

    let booksManager = AppState.shared.booksManager

    let author: AuthorEntity

    @State
    var title: String = ""

    var body: some View {
        HStack {
            TextField("new book", text: $title)
                .textFieldStyle(.roundedBorder)
            Button("create") {
                Task {
                    try await booksManager.create(title: title, author: author)
                    title = ""
                }
            }
            .disabled(title.isEmpty)
        }.padding()
    }
}
