// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "And",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "And",
            targets: ["And"]),
    ],
    targets: [
        .target(
            name: "And",
            dependencies: []),
        .testTarget(
            name: "AndTests",
            dependencies: ["And"]),
    ],
    swiftLanguageVersions: [.v5]
)
