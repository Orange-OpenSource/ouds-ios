// swift-tools-version: 6.0

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
/// Expose it through Pod or XCFramework should be investigated later.
/// Defining here hierarchy between targets will prevent us to have cyclic dependencies and help to have separated responsibilities.
let package = Package(

    // MARK: - Package setup

    name: "OUDS",
    defaultLocalization: "en",
    platforms: [.iOS(.v15), .macOS(.v13)], // No official support of macOS, but mandatory for swift-docc-plugin

    // MARK: - Products

    // Products define the executables and libraries a package produces, making them visible to other packages.
    products: [
        .library(
            name: "OUDS",
            targets: ["OUDS"]),
        .library(
            name: "OUDSThemesOrange",
            targets: ["OUDSThemesOrange"]),
        .library(
            name: "OUDSThemesSosh",
            targets: ["OUDSThemesSosh"]),
        .library(
            name: "OUDSThemesOrangeBusinessTools",
            targets: ["OUDSThemesOrangeBusinessTools"]),
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
            name: "OUDSTokensSemantic",
            targets: ["OUDSTokensRaw"]),
        .library(
            name: "OUDSTokensRaw",
            targets: ["OUDSTokensRaw"]),
        .library(
            name: "OUDSFoundations",
            targets: ["OUDSFoundations"]),
    ],

    // MARK: - Dependencies

    dependencies: [

        // MARK: Dev dependencies

        // Apple Swift tool to build documentation
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", exact: "1.4.5"),
        // Linter for Swift code
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", exact: "0.59.1"),
        // Formatter for Swift code
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.57.2"),
    ],

    // MARK: - Targets

    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    targets: [
        .target(
            name: "OUDS",
            dependencies: ["OUDSTokensRaw", "OUDSTokensSemantic", "OUDSTokensComponent"],
            path: "OUDS/Core/OUDS/Sources"),
        .testTarget(
            name: "OUDS-Tests",
            dependencies: ["OUDS", "TestsUtils"],
            path: "OUDS/Core/OUDS/Tests"),
        .target(
            name: "OUDSThemesOrangeBusinessTools",
            dependencies: ["OUDS"],
            path: "OUDS/Core/Themes/OUDSThemesOrangeBusinessTools/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "OUDSThemesOrangeBusinessTools-Tests",
            dependencies: ["TestsUtils", "OUDSThemesOrangeBusinessTools"],
            path: "OUDS/Core/Themes/OUDSThemesOrangeBusinessTools/Tests"),
        .target(
            name: "OUDSThemesSosh",
            dependencies: ["OUDS"],
            path: "OUDS/Core/Themes/Sosh/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "OUDSThemesSosh-Tests",
            dependencies: ["TestsUtils", "OUDSThemesSosh"],
            path: "OUDS/Core/Themes/Sosh/Tests"),
        .target(
            name: "OUDSThemesOrange",
            dependencies: ["OUDS"],
            path: "OUDS/Core/Themes/Orange/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "OUDSThemesOrange-Tests",
            dependencies: ["TestsUtils", "OUDSThemesOrange"],
            path: "OUDS/Core/Themes/Orange/Tests"),
        .target(
            name: "OUDSModules",
            dependencies: ["OUDSComponents"],
            path: "OUDS/Modules/Sources"),
        .target(
            name: "OUDSComponents",
            dependencies: ["OUDSTokensComponent", "OUDS"],
            path: "OUDS/Core/Components/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "OUDSComponents-Tests",
            dependencies: ["OUDSComponents"],
            path: "OUDS/Core/Components/Tests"),
        .target(
            name: "OUDSTokensComponent",
            dependencies: ["OUDSTokensSemantic"],
            path: "OUDS/Core/Tokens/ComponentTokens/Sources"),
        .target(
            name: "OUDSTokensSemantic",
            dependencies: ["OUDSTokensRaw"],
            path: "OUDS/Core/Tokens/SemanticTokens/Sources"),
        .testTarget(
            name: "OUDSTokensSemantic-Tests",
            dependencies: ["OUDSTokensSemantic"],
            path: "OUDS/Core/Tokens/SemanticTokens/Tests"),
        .target(
            name: "OUDSTokensRaw",
            dependencies: ["OUDSFoundations"],
            path: "OUDS/Core/Tokens/RawTokens/Sources"),
        .testTarget(
            name: "OUDSTokensRaw-Tests",
            dependencies: ["TestsUtils", "OUDSTokensRaw"],
            path: "OUDS/Core/Tokens/RawTokens/Tests"),
        .target(
            name: "OUDSFoundations",
            path: "OUDS/Foundations/Sources"),
        .testTarget(
            name: "OUDSFoundations-Tests",
            dependencies: ["OUDSFoundations"],
            path: "OUDS/Foundations/Tests"),
        .target(
            name: "TestsUtils",
            dependencies: ["OUDSFoundations"],
            path: "OUDS/Foundations/TestsUtils"),
    ],

    // MARK: - Swift language modes

    swiftLanguageModes: [.v6])
