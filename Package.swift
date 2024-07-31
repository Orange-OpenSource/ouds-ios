// swift-tools-version: 5.10

//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System
//

import PackageDescription

/// Exposing OUDS through a Swift Package is a good start.
/// Expose it through Pod or xcframework should be investigated later.
/// Defining here hierarchy between targets will prevent us to have cyclic dependencies and help to have seperated responsibilities.
let package = Package(
    name: "OUDS",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    // Products define the executables and libraries a package produces, making them visible to other packages.
    products: [
        .library(
            name: "OUDSModules",
            targets: ["OUDSModules"]),
        .library(
            name: "OUDSComponents",
            targets: ["OUDSComponents"]),
        .library(
            name: "OUDSThemesShared",
            targets: ["OUDSThemesShared"]),
        .library(
            name: "OUDSThemesDefault",
            targets: ["OUDSThemesDefault"]),
        .library(
            name: "OUDSTokensSemantic",
            targets: ["OUDSTokensPrimitive"]),
        .library(
            name: "OUDSTokensPrimitive",
            targets: ["OUDSTokensPrimitive"]),
        .library(
            name: "OUDSFoundations",
            targets: ["OUDSFoundations"]),
    ],
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    targets: [
        .target(
            name: "OUDSModules",
            dependencies: ["OUDSFoundations", "OUDSThemesDefault", "OUDSComponents"],
            path: "OUDS/Modules/Sources"),
        .target(
            name: "OUDSComponents",
            dependencies: ["OUDSFoundations", "OUDSTokensSemantic", "OUDSThemesDefault"],
            path: "OUDS/Core/Components/Sources"),
        .target(
            name: "OUDSThemesShared",
            dependencies: ["OUDSThemesDefault"],
            path: "OUDS/Core/Themes/Sources/Shared"),
        .target(
            name: "OUDSThemesDefault",
            dependencies: ["OUDSTokensSemantic"],
            path: "OUDS/Core/Themes/Sources/Default Theme"),
        .target(
            name: "OUDSTokensSemantic",
            dependencies: ["OUDSFoundations", "OUDSTokensPrimitive"],
            path: "OUDS/Core/Tokens/Semantic Tokens/Sources"),
        .target(
            name: "OUDSTokensPrimitive",
            dependencies: ["OUDSFoundations"],
            path: "OUDS/Core/Tokens/Primitive Tokens/Sources"),
        .target(
            name: "OUDSFoundations",
            path: "OUDS/Foundations/Sources"),
    ],
    swiftLanguageVersions: [.v5]
)
