// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Friend",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_Friend",
            targets: ["YF_Friend_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
            from: "1.7.8"
        )
    ],
    targets: [
        .target(
            name: "YF_Friend_Target",
            dependencies: [
                "YF_Friend_Binary"
                .product(name: "YF_Core", package: "YF_Core_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_Friend_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/friend/1.0.5/YFFriend.xcframework.zip",
            checksum: "154f4aeb464d6552499c7b46d70291b660706d7be0a416d8f366e86a64a0fa7a"
        )
    ]
)