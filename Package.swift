// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BitcoinDevKit",
    platforms: [
            .iOS(.v13)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BitcoinDevKit",
            targets: ["bdkFFI", "BitcoinDevKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "bdkFFI",
            url: "https://github.com/notmandatory/BitcoinDevKit/releases/download/0.1.1/bdkFFI.xcframework.zip",
            checksum: "f106b577658a133fdb6eb3dc96aac056782e32903d52282c16b487860bf58e11"
        ),
        .target(
            name: "BitcoinDevKit",
            dependencies: ["bdkFFI"]),
        .testTarget(
            name: "BitcoinDevKitTests",
            dependencies: ["BitcoinDevKit"]),
    ]
)
