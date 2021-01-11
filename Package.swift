// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Form",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Form",
            targets: ["Form"]),
    ],
    dependencies: [
        .package(url: "https://github.com/HedvigInsurance/Flow.git", .branch("master")),
        .package(url: "https://github.com/HedvigInsurance/Presentation.git", .branch("master"))
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
