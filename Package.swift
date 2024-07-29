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
    // We choose to expose only components, themes and modules
    products: [
        .library(
            name: "OUDSComponents",
            targets: ["OUDSComponents"]),
        .library(
            name: "OUDSThemes",
            targets: ["OUDSThemes"]),
        .library(
            name: "OUDSTokens",
            targets: ["OUDSTokens"]),
        .library(
            name: "OUDSModules",
            targets: ["OUDSModules"]),
        .library(
            name: "OUDSFoundations",
            targets: ["OUDSFoundations"]),
        .library( // Just for experimentation
            name: "OUDSMocks",
            targets: ["OUDSMocks"]),
    ],
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    targets: [
        .target(
            name: "OUDSComponents",
            dependencies: ["OUDSFoundations", "OUDSTokens", "OUDSThemes"],
            path: "OUDS/Core/Components/Sources"),
        .target(
            name: "OUDSThemes",
            dependencies: ["OUDSFoundations", "OUDSTokens", "OUDSMocks"],
            path: "OUDS/Core/Themes/Sources"),
        .target(
            name: "OUDSTokens",
            dependencies: ["OUDSFoundations"],
            path: "OUDS/Core/Tokens/Sources"),
        .target(
            name: "OUDSModules",
            dependencies: ["OUDSFoundations", "OUDSThemes", "OUDSComponents"],
            path: "OUDS/Modules/Sources"),
        .target(
            name: "OUDSFoundations",
            path: "OUDS/Foundations/Sources"),
        .target( // Just for experimentation
            name: "OUDSMocks",
            dependencies: ["OUDSTokens"],
            path: "OUDS/Mocks"),
    ],
    swiftLanguageVersions: [.v5]
)
