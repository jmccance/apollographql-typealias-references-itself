// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "TypealiasReproduction",
    dependencies: [
        .package(
            url: "https://github.com/apollographql/apollo-ios.git",
            exact: "1.9.0"
        ),
    ]
)
