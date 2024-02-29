//  Created by Axel Ancona Esselmann on 2/24/24.
//

import Foundation

public extension URL {
    static func libraryDbPath(modelName: String, subdirectory: String?) throws -> URL {
        let fileManager = FileManager.default

        let appName = Bundle.main.bundleIdentifier?.components(separatedBy: ".").last ?? ""
        var dbDir = try fileManager.url(
            for: .libraryDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false
        )
        .appendingPathComponent(appName)
        .appendingPathComponent("db")
        if let subdirectory = subdirectory {
            dbDir = dbDir.appendingPathComponent(subdirectory)
        }
        dbDir = dbDir.appendingPathComponent(modelName)

        if !fileManager.fileExists(atPath: dbDir.relativePath) {
            try fileManager.createDirectory(
                at: dbDir,
                withIntermediateDirectories: true,
                attributes: nil
            )
        }

        return dbDir
            .appendingPathComponent(modelName + ".sqlite")
    }
}
