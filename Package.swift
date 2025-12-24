// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIKitLayout",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "SwiftUIKitLayout",
            targets: ["SwiftUIKitLayout"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIKitLayout"
        ),
        .testTarget(
            name: "SwiftUIKitLayoutTests",
            dependencies: ["SwiftUIKitLayout"]
        ),
    ]
)
