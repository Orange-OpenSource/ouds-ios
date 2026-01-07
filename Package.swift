// swift-tools-version: 6.2

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
    platforms: [.iOS(.v15) /* and also iPadOS v15 */, .macOS(.v15), .visionOS(.v1), .watchOS(.v11), .tvOS(.v16)],

    // MARK: - Products

    // Products define the executables and libraries a package produces, making them visible to other packages.
    products: [

        // MARK: Umbrella products

        // Umbrella library to improve Developer eXperience and let users use OUDS in only one import

        // Embeds all librairies and all themes
        .library(
            name: "OUDSSwiftUI",
            targets: ["OUDSSwiftUI"]),

        // Embeds all librairies but only Orange and Orange Business Tools themes
        .library(
            name: "OUDSSwiftUIOrange",
            targets: ["OUDSSwiftUIOrange"]),

        // Embeds all librairies but only Orange and Sosh themes
        .library(
            name: "OUDSSwiftUIOrangeSosh",
            targets: ["OUDSSwiftUIOrangeSosh"]),

        // Embeds all librairies but only Wireframe theme
        .library(
            name: "OUDSSwiftUIWireframe",
            targets: ["OUDSSwiftUIWireframe"]),

        // MARK: Atomic products

        // Better user of products, choose only the one users want
        // Helps to isolate packages ouf OUDS
        .library(
            name: "OUDSThemesOrange",
            targets: ["OUDSThemesOrange"]),
        .library(
            name: "OUDSThemesOrangeBusinessTools",
            targets: ["OUDSThemesOrangeBusinessTools"]),
        .library(
            name: "OUDSThemesSosh",
            targets: ["OUDSThemesSosh"]),
        .library(
            name: "OUDSThemesWireframe",
            targets: ["OUDSThemesWireframe"]),
        .library(
            name: "OUDSThemesContract",
            targets: ["OUDSThemesContract"]),
        .library(
            name: "OUDSModules",
            targets: ["OUDSModules"]),
        .library(
            name: "OUDSComponents",
            targets: ["OUDSComponents"]),
        .library(
            name: "OUDSComponentsUIKit",
            targets: ["OUDSComponentsUIKit"]),
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

        // MARK: Tooling dependencies

        // Apple Swift tool to build documentation
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", exact: "1.4.5"),
        // Linter for Swift code
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", exact: "0.62.2"),
        // Formatter for Swift code
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.58.7"),
        // Figma code connect
        .package(url: "https://github.com/figma/code-connect", from: "1.0.0"),
    ],

    // MARK: - Targets

    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    targets: [

        // MARK: Umbrella targets

        .target(
            name: "OUDSSwiftUI",
            dependencies: [
                "OUDSThemesOrange",
                "OUDSThemesOrangeBusinessTools",
                "OUDSThemesSosh",
                "OUDSThemesWireframe",
                "OUDSThemesContract",
                "OUDSModules",
                "OUDSComponents",
                "OUDSTokensComponent",
                "OUDSTokensSemantic",
                "OUDSTokensRaw",
                "OUDSFoundations",
            ],
            path: "OUDS/exported/OUDSSwiftUI/Sources"),

        .target(
            name: "OUDSSwiftUIOrange",
            dependencies: [
                "OUDSThemesOrange",
                "OUDSThemesOrangeBusinessTools",
                "OUDSThemesContract",
                "OUDSModules",
                "OUDSComponents",
                "OUDSTokensComponent",
                "OUDSTokensSemantic",
                "OUDSTokensRaw",
                "OUDSFoundations",
            ],
            path: "OUDS/exported/OUDSSwiftUIOrange/Sources"),

        .target(
            name: "OUDSSwiftUIOrangeSosh",
            dependencies: [
                "OUDSThemesOrange",
                "OUDSThemesSosh",
                "OUDSThemesContract",
                "OUDSModules",
                "OUDSComponents",
                "OUDSTokensComponent",
                "OUDSTokensSemantic",
                "OUDSTokensRaw",
                "OUDSFoundations",
            ],
            path: "OUDS/exported/OUDSSwiftUIOrangeSosh/Sources"),

        .target(
            name: "OUDSSwiftUIWireframe",
            dependencies: [
                "OUDSThemesWireframe",
                "OUDSThemesContract",
                "OUDSModules",
                "OUDSComponents",
                "OUDSTokensComponent",
                "OUDSTokensSemantic",
                "OUDSTokensRaw",
                "OUDSFoundations",
            ],
            path: "OUDS/exported/OUDSSwiftUIWireframe/Sources"),

        // MARK: Atomic targets

        .target(
            name: "OUDSThemesOrange",
            dependencies: ["OUDSThemesContract"],
            path: "OUDS/Core/Themes/Orange/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "OUDSThemesOrange-Tests",
            dependencies: ["TestsUtils", "OUDSThemesOrange"],
            path: "OUDS/Core/Themes/Orange/Tests"),

        .target(
            name: "OUDSThemesOrangeBusinessTools",
            dependencies: ["OUDSThemesContract", "OUDSThemesOrange"],
            path: "OUDS/Core/Themes/OrangeBusinessTools/Sources"),
        .testTarget(
            name: "OUDSThemesOrangeBusinessTools-Tests",
            dependencies: ["TestsUtils", "OUDSThemesOrangeBusinessTools"],
            path: "OUDS/Core/Themes/OrangeBusinessTools/Tests"),

        .target(
            name: "OUDSThemesSosh",
            dependencies: ["OUDSThemesContract"],
            path: "OUDS/Core/Themes/Sosh/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "OUDSThemesSosh-Tests",
            dependencies: ["TestsUtils", "OUDSThemesSosh"],
            path: "OUDS/Core/Themes/Sosh/Tests"),

        .target(
            name: "OUDSThemesWireframe",
            dependencies: ["OUDSThemesContract", "OUDSThemesOrange"],
            path: "OUDS/Core/Themes/Wireframe/Sources",
            resources: [.process("Resources/")]),
        .testTarget(
            name: "OUDSThemesWirefame-Tests",
            dependencies: ["TestsUtils", "OUDSThemesWireframe"],
            path: "OUDS/Core/Themes/Wireframe/Tests"),

        .target(
            name: "OUDSThemesContract",
            dependencies: ["OUDSTokensRaw", "OUDSTokensSemantic", "OUDSTokensComponent"],
            path: "OUDS/Core/ThemesContract/Sources"),
        .testTarget(
            name: "OUDSThemesContract-Tests",
            dependencies: ["OUDSThemesContract", "TestsUtils"],
            path: "OUDS/Core/ThemesContract/Tests"),

        .target(
            name: "OUDSModules",
            dependencies: ["OUDSComponents"],
            path: "OUDS/Modules/Sources"),

        .target(
            name: "OUDSComponents",
            dependencies: ["OUDSTokensComponent", "OUDSThemesContract"],
            path: "OUDS/Core/Components/Sources",
            resources: [.process("_/Resources/")]),
        .testTarget(
            name: "OUDSComponents-Tests",
            dependencies: ["OUDSComponents"],
            path: "OUDS/Core/Components/Tests"),

        .target(
            name: "OUDSComponentsUIKit",
            dependencies: ["OUDSComponents"],
            path: "OUDS/Core/ComponentsUIKit/Sources"),

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

        .target(name: "FigmaCodeConnect",
                dependencies: [
                    "OUDSComponents",
                    .product(name: "Figma", package: "code-connect"),
                ],
                path: "OUDS/Core/Components/Figma"),
    ],

    // MARK: - Swift language modes

    swiftLanguageModes: [.v6])
