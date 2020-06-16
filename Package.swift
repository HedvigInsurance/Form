// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Form",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Form",
            type: .dynamic,
            targets: ["Form"]),
    ],
    dependencies: [
        .package(url: "https://github.com/HedvigInsurance/Flow.git", .upToNextMajor(from: "1.8.6")),
        .package(url: "https://github.com/HedvigInsurance/Presentation.git", .upToNextMajor(from: "1.14.0"))
    ],
    targets: [
        .target(
            name: "Form",
            dependencies: ["Flow", "Presentation"],
            path: "Form"),
        .testTarget(
            name: "FormTests",
            dependencies: ["Form"],
            path: "FormTests"),
    ]
)
