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

// [File not generated by the tokenator]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable missing_docs

/// This is a group of semantic tokens for **fonts**, but only **composite tokens** in the end.
/// There are splitted and not declared in ``FontSemanticTokens`` as the *tokenator* tool parsing *Figma* JSON to Swift code is not able to manage them.
/// Thus we need to declare them in another file to prevent them to be erased.
///
/// It defines all composite font semantic tokens a theme must have, i.e. tokens including properties for font family, font weight, font size or line height for example.
///
/// This protocol makes themes able to provide and override `FontCompositeRawToken` gathered in ``MultipleFontCompositeRawTokens`` instances.
/// This `FontCompositeRawToken` is not managed by tokenator yet as it is composed by several properties.
public protocol FontCompositeSemanticTokens {

    // MARK: - Semantic tokens - Typography - Composites - Display

    var typeDisplayLarge: MultipleFontCompositeRawTokens { get }
    var typeDisplayMedium: MultipleFontCompositeRawTokens { get }
    var typeDisplaySmall: MultipleFontCompositeRawTokens { get }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    var typeHeadingXLarge: MultipleFontCompositeRawTokens { get }
    var typeHeadingLarge: MultipleFontCompositeRawTokens { get }
    var typeHeadingMedium: MultipleFontCompositeRawTokens { get }
    var typeHeadingSmall: MultipleFontCompositeRawTokens { get }

    // MARK: - Semantic tokens - Typography - Composites - Body

    var typeBodyDefaultLarge: MultipleFontCompositeRawTokens { get }
    var typeBodyDefaultMedium: MultipleFontCompositeRawTokens { get }
    var typeBodyDefaultSmall: MultipleFontCompositeRawTokens { get }
    var typeBodyStrongLarge: MultipleFontCompositeRawTokens { get }
    var typeBodyStrongMedium: MultipleFontCompositeRawTokens { get }
    var typeBodyStrongSmall: MultipleFontCompositeRawTokens { get }

    // MARK: - Semantic tokens - Typography - Composites - Label

    var typeLabelDefaultXLarge: MultipleFontCompositeRawTokens { get }
    var typeLabelDefaultLarge: MultipleFontCompositeRawTokens { get }
    var typeLabelDefaultMedium: MultipleFontCompositeRawTokens { get }
    var typeLabelDefaultSmall: MultipleFontCompositeRawTokens { get }
    var typeLabelStrongXLarge: MultipleFontCompositeRawTokens { get }
    var typeLabelStrongLarge: MultipleFontCompositeRawTokens { get }
    var typeLabelStrongMedium: MultipleFontCompositeRawTokens { get }
    var typeLabelStrongSmall: MultipleFontCompositeRawTokens { get }

    // MARK: - Semantic tokens - Typography - Composites - Code

    var typeCodeMedium: MultipleFontCompositeRawTokens { get }
    var typeCodeSmall: MultipleFontCompositeRawTokens { get }
}

// swiftlint:enable missing_docs