// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "xlsxwriter.swift",
    products: [
        .library(name: "xlsxwriter", targets: ["xlsxwriter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/TheAcharya/libxlsxwriter", from: "1.1.7"),
    ],
    targets: [
        .target(
            name: "xlsxwriter",
            dependencies: ["libxlsxwriter"],
            cSettings: [(.define("_CRT_SECURE_NO_WARNINGS", .when(platforms: [.windows])))]
        ),
        .testTarget(name: "xlsxwriterTests", dependencies: ["xlsxwriter"]),
    ]
)
