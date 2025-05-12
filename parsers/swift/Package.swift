
// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "FTAIParser",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "FTAIParser",
            targets: ["FTAIParser"]),
    ],
    targets: [
        .target(
            name: "FTAIParser",
            path: "parsers/swift",
            exclude: [],
            resources: [],
            publicHeadersPath: ""),
        .testTarget(
            name: "FTAIParserTests",
            dependencies: ["FTAIParser"],
            path: "parsers/swift/tests")
    ]
)
