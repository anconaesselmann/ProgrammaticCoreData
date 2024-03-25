//  Created by Axel Ancona Esselmann on 3/23/24.
//

import Foundation

public extension NSObject {

    enum NSObjectExtensionError: Error {
        case nilKeypathString
    }

    func mutableSetValue<SelfType>(_ keyPath: KeyPath<SelfType, NSSet>) throws -> NSMutableSet
        where SelfType: NSObject
    {
        guard let key = keyPath._kvcKeyPathString else {
            throw NSObjectExtensionError.nilKeypathString
        }
        return self.mutableSetValue(forKey: key)
    }
}
