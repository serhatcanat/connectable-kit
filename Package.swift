// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

var dependencies = [Package.Dependency]()
#if os(macOS) || os(Linux) || os(Windows)
    dependencies += [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
    ]
#endif

let package = Package(
    name: "ConnectableKit",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ConnectableKit",
            targets: ["ConnectableKit"]
        ),
    ],
    dependencies: dependencies,
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ConnectableKit",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
            ]
        ),
    ]
)
