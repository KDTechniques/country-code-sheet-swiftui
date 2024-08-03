// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "country-code-sheet-swiftui",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "CountryCodeSheetSwiftUI",
            targets: ["CountryCodeSheetSwiftUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.2.0"),
        .package(url: "https://github.com/KDTechniques/content-unavailable-swiftui.git", from: "1.0.0"),
        .package(url: "https://github.com/KDTechniques/search-bar-swiftui.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CountryCodeSheetSwiftUI",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                .product(name: "ContentUnavailableSwiftUI", package: "content-unavailable-swiftui"),
                .product(name: "SearchBarSwiftUI", package: "search-bar-swiftui"),
            ],
            path: "Sources/Country Code Sheet"
        ),
        .testTarget(
            name: "CountryCodeSheetTests",
            dependencies: ["CountryCodeSheetSwiftUI"],
            path: "Tests/Country Code Sheet Tests"
        ),
    ]
)
