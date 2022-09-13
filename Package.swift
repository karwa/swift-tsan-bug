// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "spm-tsancheck",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .executable(
            name: "spm-tsancheck",
            targets: ["spm-tsancheck"]),
    ],
    dependencies: [
      .package(url: "https://github.com/karwa/swift-url", .upToNextMinor(from: "0.4.0"))
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "spm-tsancheck",
            dependencies: [.product(name: "WebURL", package: "swift-url")]),
        .testTarget(
            name: "spm-tsancheckTests",
            dependencies: ["spm-tsancheck", .product(name: "WebURL", package: "swift-url")]),
    ]
)
