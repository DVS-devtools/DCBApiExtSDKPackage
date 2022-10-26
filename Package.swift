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
        .package(url: "https://github.com/DVS-devtools/DCBApiExtSDK.git", branch: "develop"),
        .package(url: "https://github.com/DVS-devtools/NewtonSDK.git", branch: "develop"),
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
