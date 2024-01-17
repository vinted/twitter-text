// swift-tools-version:5.3

// Copyright 2018 Twitter, Inc.
// Licensed under the Apache License, Version 2.0
// http://www.apache.org/licenses/LICENSE-2.0

import PackageDescription

let package = Package(
    name: "TwitterText",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TwitterTextDynamic",
            type: .dynamic,
            targets: ["VGHtmlParser"]
        ),
        .library(
            name: "TwitterTextStatic",
            type: .static,
            targets: ["VGHtmlParser"]
        )
    ],
    targets: [
        .target(
            name: "TwitterText",
            path: "objc/lib",
            sources: ["."],
            publicHeadersPath: "."
        )
    ]
)
