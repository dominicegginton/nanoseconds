// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Nanoseconds",
    products: [
        .library(name: "Nanoseconds", targets: ["Nanoseconds"])
    ],
    targets: [
        .target(name: "Nanoseconds", dependencies: []),
        .testTarget(name: "NanosecondsTests", dependencies: ["Nanoseconds"])
    ]
)
