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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator with Figma able to output composites and tokenatoer able to manage them]
// WARNING: Not synchronized anymore with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable missing_docs

/// This is a group of semantic tokens for **typography**, but only **composite tokens** in the end.
/// There are splitted and not declared in `TypographySemanticTokens` as the *tokenator* tool parsing *Figma* JSON to Swift code is not able to manage them.
/// Thus we need to declare them in another file to prevent them to be erased.
///
/// It defines all composite typography semantic tokens a theme must have, i.e. tokens including properties for font family, font weight, font size or line height for example.
///
/// This protocol makes themes able to provide and override `TypographyCompositeRawToken` gathered in `MultipleTypographyTokens` instances
/// This `TypographyCompositeRawToken` is not managed by tokenator yet as it is composed by several properties.
public protocol TypographyCompositeSemanticTokens {

    // MARK: - Semantic tokens - Typography - Composites - Display

    var typeDisplayLarge: MultipleTypographyTokens { get }
    var typeDisplayMedium: MultipleTypographyTokens { get }
    var typeDisplaySmall: MultipleTypographyTokens { get }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    var typeHeadingXLarge: MultipleTypographyTokens { get }
    var typeHeadingLarge: MultipleTypographyTokens { get }
    var typeHeadingMedium: MultipleTypographyTokens { get }
    var typeHeadingSmall: MultipleTypographyTokens { get }

    // MARK: - Semantic tokens - Typography - Composites - Body

    var typeBodyDefaultLarge: MultipleTypographyTokens { get }
    var typeBodyDefaultMedium: MultipleTypographyTokens { get }
    var typeBodyDefaultSmall: MultipleTypographyTokens { get }
    var typeBodyStrongLarge: MultipleTypographyTokens { get }
    var typeBodyStrongMedium: MultipleTypographyTokens { get }
    var typeBodyStrongSmall: MultipleTypographyTokens { get }

    // MARK: - Semantic tokens - Typography - Composites - Label

    var typeLabelDefaultXLarge: MultipleTypographyTokens { get }
    var typeLabelDefaultLarge: MultipleTypographyTokens { get }
    var typeLabelDefaultMedium: MultipleTypographyTokens { get }
    var typeLabelDefaultSmall: MultipleTypographyTokens { get }
    var typeLabelStrongXLarge: MultipleTypographyTokens { get }
    var typeLabelStrongLarge: MultipleTypographyTokens { get }
    var typeLabelStrongMedium: MultipleTypographyTokens { get }
    var typeLabelStrongSmall: MultipleTypographyTokens { get }

    // MARK: - Semantic tokens - Typography - Composites - Code

    var typeCodeMedium: MultipleTypographyTokens { get }
    var typeCodeSmall: MultipleTypographyTokens { get }
}

// swiftlint:enable missing_docs