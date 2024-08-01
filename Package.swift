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
            name: "OUDSModules",
            targets: ["OUDSModules"]),
        .library(
            name: "OUDSComponents",
            targets: ["OUDSComponents"]),
        .library(
            name: "OUDSThemesOrangeTheme",
            targets: ["OUDSThemesOrangeTheme"]),
        .library(
            name: "OUDSThemesSoshTheme",
            targets: ["OUDSThemesSoshTheme"]),
        .library(
            name: "OUDSThemesShared",
            targets: ["OUDSThemesShared"]),
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
            name: "OUDSModules",
            dependencies: ["OUDSThemesShared", "OUDSComponents"],
            path: "OUDS/Modules/Sources"),
        .target(
            name: "OUDSComponents",
            dependencies: ["OUDSFoundations", "OUDSTokensSemantic", "OUDSThemesShared"],
            path: "OUDS/Core/Components/Sources"),
        .target(
            name: "OUDSThemesOrangeTheme",
            dependencies: ["OUDSThemesShared"],
            path: "OUDS/Core/Themes/Sources/OrangeTheme"),
        .target(
            name: "OUDSThemesSoshTheme",
            dependencies: ["OUDSThemesShared"],
            path: "OUDS/Core/Themes/Sources/SoshTheme"),
        .target(
            name: "OUDSThemesShared",
            dependencies: ["OUDSTokensComponent", "OUDSTokensSemantic", "OUDSTokensRaw"],
            path: "OUDS/Core/Themes/Sources/Shared"),
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
        .target(
            name: "OUDSFoundations",
            path: "OUDS/Foundations/Sources"),
    ],
    swiftLanguageVersions: [.v5]
)
