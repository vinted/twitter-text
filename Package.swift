// swift-tools-version:5.3

// Copyright 2018 Twitter, Inc.
// Licensed under the Apache License, Version 2.0
// http://www.apache.org/licenses/LICENSE-2.0

import PackageDescription

let package = Package(
    name: "twitter-text",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "TwitterText", targets: ["TwitterText"])
    ],
    targets: [
        .target(
            name: "TwitterText",
            path: "objc/lib"
            // resources: [
            //         .copy("config/v1.json"),
            //         .copy("config/v2.json"),
            //         .copy("config/v3.json"),
            // ]
        )
    ]
)
