// swift-tools-version:5.3

// Copyright 2018 Twitter, Inc.
// Licensed under the Apache License, Version 2.0
// http://www.apache.org/licenses/LICENSE-2.0

import PackageDescription

let package = Package(
    name: "TwitterText",
    products: [
        // .library(
        //     name: "TwitterTextDynamic",
        //     type: .dynamic,
        //     targets: ["TwitterText"]
        // ),
        .library(
            name: "TwitterText",
            // type: .static,
            targets: ["TwitterText"]
        )
    ],
    targets: [
        .target(
            name: "TwitterText",
            dependencies: [],
            path: "objc/lib",
            publicHeadersPath: "" 
        )
    ]
)
