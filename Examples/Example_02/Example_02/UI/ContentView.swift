//  Created by Axel Ancona Esselmann on 5/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            AuthorsView()
                .navigationDestination(for: AuthorEntity.self) { author in
                    BooksView(author: author)
                }
        } detail: {
            Text("Select or create an author")
        }
        .navigationTitle("Books")
    }
}

#Preview {
    ContentView()
}
