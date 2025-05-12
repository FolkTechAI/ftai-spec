// swift-tools-version:5.5
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
    dependencies: [],
    targets: [
        .target(
            name: "FTAIParser",
            path: "parsers/swift",
            sources: ["FTAIParser.swift", "FTAIValidator.swift"]),
        .testTarget(
            name: "FTAIParserTests",
            dependencies: ["FTAIParser"],
            path: "parsers/swift/tests"),
    ]
) 