// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-region-service-info",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "SwiftRegionServiceInfo",
            targets: ["SwiftRegionServiceInfo"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/RandomHashTags/swift-sovereign-states.git", from: "1.3.2"),
    ],
    targets: [
        .target(
            name: "SwiftRegionServiceInfo",
            dependencies: [
                .product(name: "SwiftSovereignStates", package: "swift-sovereign-states")
            ],
            path: "./Sources/swift-region-service-info"
        ),
        .testTarget(
            name: "swift-region-service-infoTests",
            dependencies: ["SwiftRegionServiceInfo"]
        ),
    ]
)
