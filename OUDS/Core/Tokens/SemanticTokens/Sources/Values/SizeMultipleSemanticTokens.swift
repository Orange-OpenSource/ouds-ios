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

// [File not generated with the tokenator]
// WARNING: Not synchronized with the Figjam / Figma by developers team
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

// swiftlint:disable missing_docs
// swiftlint:disable line_length

/// This is a group of semantic tokens for **size** but using `MultipleSizeTokens`
///
/// In fact the `MultipleSizeTokens` class will help users (i.e. developers) to handle one semantic token for size containing values for compact and regular viewports / size classes.
/// Because *Figma* is not able to manage pair of values for one token, and its produced JSON does not reflect this mecanism, the *tokenator* cannot provide such `MultipleSizeTokens`.
/// A major part the "real" size semantic tokens are declared in `SizeSemanticTokens` protocol and defined inside `OUDSTheme`(to be overridable then by subthemes), and othershere.
/// These tokens are updated by the *tokenator*.
/// Then they are gathered and wrapped so as to be used easily thanks to this `MultipleSizeTokens` which must be updated manually.
///
/// In few words:
///
///         // Some sizing raw tokens, defined by the tokenator (in DimensionRawTokens+Values.swift)
///         public static let dimension550: DimensionRawToken = 44
///         public static let dimension650: DimensionRawToken = 52
///
///         // The sizing semantic tokens using them,
///         // declared (in SizeSemanticTokens.swift) and defined (in OUDSTheme+SizeSemanticTokens.swift) by the tokenator
///         var sizeIconWithHeadingXLargeShortMobile: SizeSemanticToken { DimensionRawTokens.dimension550 }
///         var sizeIconWithHeadingXLargeShortTablet: SizeSemanticToken { DimensionRawTokens.dimension650 }
///
///         // The 'higher level' size semantic tokens wrapping them and exposed to users,
///         // declared (in SizeMultipleSemanticTokens.swift) and defined (in OUDSTheme+SizeMultipleSemanticTokens.swift) manualy
///         var sizeIconWithHeadingXLargeShort: MultipleSizeTokens { MultipleSizeTokens(compact: sizeIconWithHeadingXLargeShortMobile, regular: sizeIconWithHeadingXLargeShortTablet) }
///
///         // Thus users can in their components use sizeIconWithHeadingXLargeShort as defined in their design system
///         // (even if they are still able to use 'lower level' semantic tokens but it is more error-prone)
///
public protocol SizeMultipleSemanticTokens {

    // MARK: - Semantic token - Sizing - Icon with typography

    var sizeIconWithHeadingXLargeShort: MultipleSizeTokens { get }
    var sizeIconWithHeadingXLargeMedium: MultipleSizeTokens { get }
    var sizeIconWithHeadingXLargeTall: MultipleSizeTokens { get }

    var sizeIconWithHeadingLargeShort: MultipleSizeTokens { get }
    var sizeIconWithHeadingLargeMedium: MultipleSizeTokens { get }
    var sizeIconWithHeadingLargeTall: MultipleSizeTokens { get }

    var sizeIconWithHeadingMediumShort: MultipleSizeTokens { get }
    var sizeIconWithHeadingMediumMedium: MultipleSizeTokens { get }
    var sizeIconWithHeadingMediumTall: MultipleSizeTokens { get }

    var sizeIconWithHeadingSmallShort: MultipleSizeTokens { get }
    var sizeIconWithHeadingSmallMedium: MultipleSizeTokens { get }
    var sizeIconWithHeadingSmallTall: MultipleSizeTokens { get }

    var sizeIconWithBodyLargeShort: MultipleSizeTokens { get }
    var sizeIconWithBodyLargeMedium: MultipleSizeTokens { get }
    var sizeIconWithBodyLargeTall: MultipleSizeTokens { get }

    var sizeIconWithBodyMediumShort: MultipleSizeTokens { get }
    var sizeIconWithBodyMediumMedium: MultipleSizeTokens { get }
    var sizeIconWithBodyMediumTall: MultipleSizeTokens { get }

    var sizeIconWithBodySmallShort: MultipleSizeTokens { get }
    var sizeIconWithBodySmallMedium: MultipleSizeTokens { get }
    var sizeIconWithBodySmallTall: MultipleSizeTokens { get }

    // MARK: - Semantic token - Sizing - Max width typography

    var sizeMaxWidthTypeDisplayLarge: MultipleSizeTokens { get }
    var sizeMaxWidthTypeDisplayMedium: MultipleSizeTokens { get }
    var sizeMaxWidthTypeDisplaySmall: MultipleSizeTokens { get }

    var sizeMaxWidthTypeHeadingXLarge: MultipleSizeTokens { get }
    var sizeMaxWidthTypeHeadingLarge: MultipleSizeTokens { get }
    var sizeMaxWidthTypeHeadingMedium: MultipleSizeTokens { get }
    var sizeMaxWidthTypeHeadingSmall: MultipleSizeTokens { get }

    var sizeMaxWidthTypeBodyLarge: MultipleSizeTokens { get }
    var sizeMaxWidthTypeBodyMedium: MultipleSizeTokens { get }
    var sizeMaxWidthTypeBodySmall: MultipleSizeTokens { get }
}

// swiftlint:enable missing_docs
// swiftlint:enable line_length
