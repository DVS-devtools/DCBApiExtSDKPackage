// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "DCBApiExtSDKPackage",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "DCBApiExtSDKPackage",
            targets: ["DCBApiExtSDKPackage"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/DVS-devtools/DCBApiExtSDK.git", from: "5.0.8"),
        .package(url: "https://github.com/DVS-devtools/NewtonSDK.git", from: "5.0.3"),
    ],
    targets: [
        .target(
            name: "DCBApiExtSDKPackage",
            dependencies: [
                .product(name: "DCBApiExtSDK", package: "DCBApiExtSDK"),
                .product(name: "NewtonSDK", package: "NewtonSDK"),
            ]
        ),
    ]
)
