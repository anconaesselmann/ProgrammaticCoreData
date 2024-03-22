//  Created by Axel Ancona Esselmann on 3/22/24.
//

import Foundation

extension KeyPath {
    var propertyAsString: String {
        NSExpression(forKeyPath: self).keyPath
    }

    var rootType: Any.Type {
        type(of: self).rootType
    }

    var typeErased: TypeErasedKeyPath {
        .init(self)
    }
}
