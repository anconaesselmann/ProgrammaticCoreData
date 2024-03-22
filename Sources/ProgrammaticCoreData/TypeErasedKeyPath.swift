//  Created by Axel Ancona Esselmann on 3/22/24.
//

import Foundation

public struct TypeErasedKeyPath {
    let rootType: Any.Type
    let propertyName: String

    init<Root, T>(_ keyPath: KeyPath<Root, T>) {
        rootType = keyPath.rootType
        propertyName = keyPath.propertyAsString
    }
}
