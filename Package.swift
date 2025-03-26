// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ColorKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13), .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "ColorKit",
            targets: ["ColorKit"]),
    ],
    targets: [
        .target(
            name: "ColorKit",
            path: "ColorKit/ColorKit"),
        .testTarget(
            name: "ColorKitTests",
            dependencies: ["ColorKit"],
            path: "ColorKit/ColorKitTests",
            resources: [.process("Resources")]
        )
    ],
    swiftLanguageVersions: [SwiftVersion.v5]
)
