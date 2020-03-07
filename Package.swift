// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "UIButtonFeedbackExtension",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "UIButtonFeedbackExtension", targets: ["UIButtonFeedbackExtension"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "UIButtonFeedbackExtension", dependencies: []),
    ]
)
