// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "libcamera",
    products: [
        .library(
            name: "libcamera",
            targets: ["libcamera"]),
    ],
    dependencies: [
    ],
    targets: [
        .systemLibrary(
            name: "libcamera",
            pkgConfig: "libcamera"
        ),
        .executableTarget(
            name: "examples",
            dependencies: ["libcamera"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        )
    ]
)
