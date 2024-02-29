//  Created by Axel Ancona Esselmann on 2/24/24.
//

import CoreData

public extension NSAttributeDescription {
    convenience init(name: String, type: NSAttributeType, defaultValue: Any? = nil) {
        self.init()
        self.name = name
        self.attributeType = type
        self.defaultValue = defaultValue
    }
}
