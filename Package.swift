// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProgrammaticCoreData",
    platforms: [
        .macOS(.v14),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "ProgrammaticCoreData",
            targets: ["ProgrammaticCoreData"]),
    ],
    targets: [
        .target(
            name: "ProgrammaticCoreData"),
        .testTarget(
            name: "ProgrammaticCoreDataTests",
            dependencies: ["ProgrammaticCoreData"]),
    ]
)
