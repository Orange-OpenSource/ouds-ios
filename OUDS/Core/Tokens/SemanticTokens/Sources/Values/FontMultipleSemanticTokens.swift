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
// swiftlint:disable line_length

/// This is a group of semantic tokens for **fonts** but using ``MultipleFontLetterSpacingSemanticTokens`` for *letter spacings*,
/// ``MultipleFontLineHeightSemanticTokens`` for *line heights* and ``MultipleFontSizeSemanticTokens`` for *font sizes*.
///
/// In fact these ``MultipleFontLetterSpacingSemanticTokens``, ``MultipleFontLineHeightSemanticTokens`` and  ``MultipleFontSizeSemanticTokens`` classes will help users
/// (i.e. developers) to handle one semantic token for font things depending to size class (wether it could be compact / mobile or regular / tablet).
/// Because *Figma* is not able to manage pair of values for one token, and its produced JSON does not reflect this mecanism, the *tokenator* cannot provide
/// such ``MultipleFontLetterSpacingSemanticTokens``, ``MultipleFontLineHeightSemanticTokens`` and ``MultipleFontSizeSemanticTokens`` tokens.
/// Thus the "real" letter spacing, line height and font size tokens are declared in ``FontSemanticTokens`` protocol and defined inside `OUDSTheme` (to be overridable then by subthemes).
/// These tokens are updated by the *tokenator*.
/// Then they are gathered and wrapped so as to be used easily thanks to this ``FontMultipleSemanticTokens`` which must be updated manually.
///
/// However the composite tokens (here the ones gathering each type of semantic token here) are defined in ``FontCompositeSemanticTokens`` because the *tokenator*
/// is not able to generate them yet, and they must be defined elsewhere to not be deleted.
/// 
/// In few words:
/// ```swift
///         // Some font size raw tokens, defined by the tokenator (in FontRawTokens+Values.swift)
///         public static let fontSize850: FontSizeRawToken = 40
///         public static let fontSize1450: FontSizeRawToken = 64
///
///         // The font size semantic tokens using them
///         // declared (in FontMultipleSemanticTokens.swift) and defined (in OUDSTheme+FontSemanticTokens.swift) by the tokenator
///         var fontSizeDisplayLargeMobile: FontSizeSemanticToken { FontRawTokens.fontSize850 }
///         var fontSizeDisplayLargeTablet: FontSizeSemanticToken { FontRawTokens.fontSize1450 }
///
///         // The 'higher level' font semantic tokens wrapping them and exposed to users
///         // declared (in this FontMultipleSemanticTokens.swift) and defined manualy (in OUDSTheme+FontMultipleSemanticTokens.swift)
///         var fontSizeDisplayLarge: MultipleFontSizeSemanticTokens { MultipleFontSizeSemanticTokens(compact: fontSizeDisplayLargeMobile, regular: fontSizeDisplayLargeTablet) }
///
///         // Thus users can in their components use elevationColorNone as defined in their design system
///         // (even if they are still able to use 'lower level' semantic tokens but it is more error-prone)
/// ```
/// 
public protocol FontMultipleSemanticTokens {

    // MARK: - Semantic token - Typography - Font - Size

    var fontSizeDisplayLarge: MultipleFontSizeSemanticTokens { get }
    var fontSizeDisplayMedium: MultipleFontSizeSemanticTokens { get }
    var fontSizeDisplaySmall: MultipleFontSizeSemanticTokens { get }
    var fontSizeHeadingXLarge: MultipleFontSizeSemanticTokens { get }
    var fontSizeHeadingLarge: MultipleFontSizeSemanticTokens { get }
    var fontSizeHeadingMedium: MultipleFontSizeSemanticTokens { get }
    var fontSizeHeadingSmall: MultipleFontSizeSemanticTokens { get }
    var fontSizeBodyLarge: MultipleFontSizeSemanticTokens { get }
    var fontSizeBodyMedium: MultipleFontSizeSemanticTokens { get }
    var fontSizeBodySmall: MultipleFontSizeSemanticTokens { get }
    var fontSizeLabelXLarge: MultipleFontSizeSemanticTokens { get }
    var fontSizeLabelLarge: MultipleFontSizeSemanticTokens { get }
    var fontSizeLabelMedium: MultipleFontSizeSemanticTokens { get }
    var fontSizeLabelSmall: MultipleFontSizeSemanticTokens { get }
    var fontSizeCodeMedium: MultipleFontSizeSemanticTokens { get }
    var fontSizeCodeSmall: MultipleFontSizeSemanticTokens { get }

    // MARK: - Semantic token - Typography - Font - Line height

    var fontLineHeightDisplayLarge: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightDisplayMedium: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightDisplaySmall: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightHeadingXLarge: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightHeadingLarge: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightHeadingMedium: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightHeadingSmall: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightBodyLarge: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightBodyMedium: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightBodySmall: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightLabelXLarge: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightLabelLarge: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightLabelMedium: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightLabelSmall: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightCodeMedium: MultipleFontLineHeightSemanticTokens { get }
    var fontLineHeightCodeSmall: MultipleFontLineHeightSemanticTokens { get }

    // MARK: - Semantic token - Typography - Font - Letter spacing

    var fontLetterSpacingDisplayLarge: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingDisplayMedium: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingDisplaySmall: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingHeadingXLarge: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingHeadingLarge: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingHeadingMedium: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingHeadingSmall: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingBodyLarge: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingBodyMedium: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingBodySmall: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingLabelXLarge: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingLabelLarge: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingLabelMedium: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingLabelSmall: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingCodeMedium: MultipleFontLetterSpacingSemanticTokens { get }
    var fontLetterSpacingCodeSmall: MultipleFontLetterSpacingSemanticTokens { get }
}

// swiftlint:enable missing_docs
// swiftlint:enable line_length