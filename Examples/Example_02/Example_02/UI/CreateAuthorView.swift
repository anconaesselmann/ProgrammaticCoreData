//  Created by Axel Ancona Esselmann on 5/6/24.
//

import SwiftUI

struct CreateAuthorView: View {

    let authorsManager = AppState.shared.authorsManager

    @State
    var name: String = ""

    var body: some View {
        HStack {
            TextField("new author", text: $name)
                .textFieldStyle(.roundedBorder)
            Button("create") {
                Task {
                    try await authorsManager.create(name: name)
                    name = ""
                }
            }
            .disabled(name.isEmpty)
        }.padding()
    }
}

