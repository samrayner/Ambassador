// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Ambassador",
    products: [
        .library(name: "Ambassador", targets: ["Ambassador"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JRR-OSU/Embassy-OSU.git", branch: "fix-crash-memory-rebound")
    ],
    targets: [
        .target(name: "Ambassador", dependencies: ["Embassy-OSU"], path: "Ambassador"),
    ]
)
