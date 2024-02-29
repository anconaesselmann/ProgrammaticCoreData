//  Created by Axel Ancona Esselmann on 2/25/24.
//

import CoreData

public protocol SelfDescribingCoreDataEntity {
    static var entityDescription: NSEntityDescription { get }
}
