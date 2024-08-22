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
/// Expose it through Pod or XCFamework should be investigated later.
/// Defining here hierarchy between targets will prevent us to have cyclic dependencies and help to have seperated responsibilities.
let package = Package(
    
    name: "OUDS",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    
    // Products define the executables and libraries a package produces, making them visible to other packages.
    products: [
        .library(
            name: "OUDS",
            targets: ["OUDS"]),
        .library(
            name: "OUDSModules",
            targets: ["OUDSModules"]),
        .library(
            name: "OUDSComponents",
            targets: ["OUDSComponents"]),
        .library(
            name: "OUDSTokensComponent",
            targets: ["OUDSTokensComponent"]),
        .library(
            name: "OUDSThemesSosh",
            targets: ["OUDSThemesSosh"]),
        .library(
            name: "OUDSThemesInverse",
            targets: ["OUDSThemesInverse"]),
        .library(
            name: "OUDSThemesOrange",
            targets: ["OUDSThemesOrange"]),
        .library(
            name: "OUDSTokensComponent",
            targets: ["OUDSTokensComponent"]),
        .library(
            name: "OUDSTokensSemantic",
            targets: ["OUDSTokensRaw"]),
        .library(
            name: "OUDSTokensRaw",
            targets: ["OUDSTokensRaw"]),
        .library(
            name: "OUDSFoundations",
            targets: ["OUDSFoundations"]),
    ],
    
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    targets: [
        .target(
            name: "OUDS",
            dependencies: ["OUDSTokensRaw", "OUDSTokensSemantic", "OUDSTokensComponent"],
            path: "OUDS/Core/OUDS/Sources"),
        .testTarget(
            name: "OUDS-Tests",
            dependencies: ["OUDS"],
            path: "OUDS/Core/OUDS/Tests"),
        .target(
            name: "OUDSModules",
            dependencies: ["OUDSComponents"],
            path: "OUDS/Modules/Sources"),
        .target(
            name: "OUDSComponents",
            dependencies: ["OUDSTokensComponent", "OUDS"],
            path: "OUDS/Core/Components/Sources"),
        .target(
            name: "OUDSThemesSosh",
            dependencies: ["OUDS"],
            path: "OUDS/Core/Themes/Sosh/Sources"),
        .testTarget(
            name: "Theme-Tests-Sosh",
            dependencies: ["TestsUtils", "OUDSThemesSosh"],
            path: "OUDS/Core/Themes/Sosh/Tests"),
        .target(
            name: "OUDSThemesInverse",
            dependencies: ["OUDSThemesOrange"],
            path: "OUDS/Core/Themes/Inverse/Sources"),
        .testTarget(
            name: "Theme-Tests-Inverse",
            dependencies: ["OUDSThemesInverse"],
            path: "OUDS/Core/Themes/Inverse/Tests"),
        .target(
            name: "OUDSThemesOrange",
            dependencies: ["OUDS"],
            path: "OUDS/Core/Themes/Orange/Sources"),
        .testTarget(
            name: "Theme-Tests-Orange",
            dependencies: ["TestsUtils", "OUDSThemesOrange"],
            path: "OUDS/Core/Themes/Orange/Tests"),
        .target(
            name: "OUDSTokensComponent",
            dependencies: ["OUDSTokensSemantic"],
            path: "OUDS/Core/Tokens/ComponentTokens/Sources"),
        .target(
            name: "OUDSTokensSemantic",
            dependencies: ["OUDSTokensRaw"],
            path: "OUDS/Core/Tokens/SemanticTokens/Sources"),
        .target(
            name: "OUDSTokensRaw",
            dependencies: ["OUDSFoundations"],
            path: "OUDS/Core/Tokens/RawTokens/Sources"),
        .testTarget(
            name: "Raw-Tokens-Tests",
            dependencies: ["TestsUtils", "OUDSTokensRaw"],
            path: "OUDS/Core/Tokens/RawTokens/Tests"),
        .target(
            name: "OUDSFoundations",
            path: "OUDS/Foundations/Sources"),
        .testTarget(
            name: "Foundations-Tests",
            dependencies: ["OUDSFoundations"],
            path: "OUDS/Foundations/Tests"),
        .target(
            name: "TestsUtils",
            path: "OUDS/Foundations/TestsUtils"),
    ],
    swiftLanguageVersions: [.v5]
)
