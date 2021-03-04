// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOS Extensions",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UIKit Extensions",
            targets: ["UIKit Extensions"]),
        .library(
            name: "SwiftUI Extensions",
            targets: ["SwiftUI Extensions"]),
        .library(
            name: "Foundation Extensions",
            targets: ["Foundation Extensions"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "UIKit Extensions",
            dependencies: [],
            path: "Sources/UIKit"),
        .testTarget(
            name: "Helpful EtensionsTests",
            dependencies: ["UIKit Extensions"]),
        .target(
            name: "SwiftUI Extensions",
            dependencies: [],
            path: "Sources/SwiftUI"),
        .target(
            name: "Foundation Extensions",
            dependencies: [],
            path: "Sources/Foundation"),
    ]
)
