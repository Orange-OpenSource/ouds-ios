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

import Foundation
import OUDSTokensRaw

// MARK: - Type aliases to keep grammar clear

/// The global design system tools uses verbs of semantic token for font family, which is basically a raw token for font family
public typealias TypographyFontFamilySemanticToken = TypographyFontFamilyRawToken

/// The global design system tools uses verbs of semantic token for font weight, which is basically a raw token for font weight
public typealias TypographyFontWeightSemanticToken = TypographyFontWeightRawToken

/// The global design system tools uses verbs of semantic token for font size, which is basically a raw token for font size
public typealias TypographyFontSizeSemanticToken = TypographyFontSizeRawToken

/// The global design system tools uses verbs of semantic token for font line height, which is basically a raw token for font line height
public typealias TypographyFontLineHeightSemanticToken = TypographyFontLineHeightRawToken

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **typography**.
/// It defines all typography semantic tokens a theme must have
/// (`TypographyFontFamilySemanticToken`, `TypographyFontWeightSemanticToken`, `TypographyFontSizeSemanticToken`, `TypographyFontLineHeightSemanticToken`).
public protocol TypographySemanticTokens {

    // MARK: - Semantic token - Typography - Font - Family

    var fontFamily: TypographyFontFamilyRawToken { get }
    var fontFamilyDisplay: TypographyFontFamilySemanticToken { get }
    var fontFamilyHeading: TypographyFontFamilySemanticToken { get }
    var fontFamilyBody: TypographyFontFamilySemanticToken { get }
    var fontFamilyLabel: TypographyFontFamilySemanticToken { get }
    var fontFamilyCode: TypographyFontFamilySemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Weight

    var fontWeightDisplay: TypographyFontWeightSemanticToken { get }
    var fontWeightHeading: TypographyFontWeightSemanticToken { get }
    var fontWeightBodyDefault: TypographyFontWeightSemanticToken { get }
    var fontWeightBodyStrong: TypographyFontWeightSemanticToken { get }
    var fontWeightLabelDefault: TypographyFontWeightSemanticToken { get }
    var fontWeightLabelStrong: TypographyFontWeightSemanticToken { get }
    var fontWeightCode: TypographyFontWeightSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Size - Mobile

    var fontSizeMobileDisplayLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileCodeMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileCodeSmall: TypographyFontSizeSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Size - Tablet

    var fontSizeTabletDisplayLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletCodeMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletCodeSmall: TypographyFontSizeSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Size - Others

    var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeLabelLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeLabelMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeLabelSmall: TypographyFontSizeSemanticToken { get }
    var fontSizeCodeMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeCodeSmall: TypographyFontSizeSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Line height - Mobile

    var fontLineHeightMobileDisplayLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileCodeMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileCodeSmall: TypographyFontLineHeightSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Line height - Tablet

    var fontLineHeightTabletDisplayLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletCodeMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletCodeSmall: TypographyFontLineHeightSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Line height - Others

    var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Letter spacing
    // TODO: Missing details about the types of the associated raw tokens

    // MARK: - Semantic token - Typography - Font - Paragraph spacing - Mobile

    var fontParagraphSpacingMobileDisplayLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileCodeMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileCodeSmall: TypographyFontParagraphSpacingRawToken { get }

    // MARK: - Semantic token - Typography - Font - Paragraph spacing - Tablet

    var fontParagraphSpacingTabletDisplayLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletCodeMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletCodeSmall: TypographyFontParagraphSpacingRawToken { get }

    // MARK: - Semantic token - Typography - Font - Paragraph spacing - Others

    var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingRawToken { get }

    // MARK: - Semantic tplens - Typography - Composites
    // TODO: Missing specifications, composite semantic tokens to dd for display, heading, body, label, code
}
