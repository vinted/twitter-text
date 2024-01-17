// swift-tools-version:5.3

// Copyright 2018 Twitter, Inc.
// Licensed under the Apache License, Version 2.0
// http://www.apache.org/licenses/LICENSE-2.0

import PackageDescription

let package = Package(
    name: "TwitterTextName",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "TwitterTextLib", targets: ["TwitterTextTarget"])
    ],
    targets: [
        .target(
            name: "TwitterTextTarget",
            dependencies: [
                .target(name: "IFUnicodeURL")
            ],
            path: "objc/lib"
        ),
        .target(
            name: "IFUnicodeURL",
            path: "objc/ThirdParty/IFUnicodeURL/",
            publicHeadersPath: "."
        )
    ]
)
