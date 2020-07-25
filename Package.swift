// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "resource-spm",
    defaultLocalization: "en",
    products: [
        .executable(name: "resource-spm", targets: ["resource-spm"]),
        .library(name: "Assets", targets: ["Assets"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "resource-spm",
            dependencies: [],
            resources: [
                .process("README.md"),
                .process("Images"),
                .process("Resources")
            ]
        ),
        .target(
            name: "Assets",
            dependencies: [],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "resource-spmTests",
            dependencies: ["resource-spm"]),
    ]
)
