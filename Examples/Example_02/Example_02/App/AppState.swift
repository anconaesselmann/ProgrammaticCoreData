//  Created by Axel Ancona Esselmann on 5/6/24.
//

import Foundation

struct AppState {

    static var shared: AppState!

    let authorsManager: AuthorsManager
    let booksManager: BooksManager
}
