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

public typealias TypographyFontFamilySemanticToken = TypographyFontFamilyRawToken
public typealias TypographyFontWeightSemanticToken = TypographyFontWeightRawToken
public typealias TypographyFontSizeSemanticToken = TypographyFontSizeRawToken
public typealias TypographyFontLineHeightSemanticToken = TypographyFontLineHeightRawToken

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **typography**.
/// It defines all `TypographySemanticToken` a theme must have.
public protocol TypographySemanticTokens {

    // MARK: Semantic token - Typography - Font - Family

    var fontFamilyDisplay: TypographyFontFamilySemanticToken { get }
    var fontFamilyHeading: TypographyFontFamilySemanticToken { get }
    var fontFamilyBody: TypographyFontFamilySemanticToken { get }
    var fontFamilyLabel: TypographyFontFamilySemanticToken { get }
    var fontFamilyCode: TypographyFontFamilySemanticToken { get }

    // MARK: Semantic token - Typography - Font - Weight

    var fontWeightDisplay: TypographyFontWeightSemanticToken { get }
    var fontWeightHeading: TypographyFontWeightSemanticToken { get }
    var fontWeightBodyDefault: TypographyFontWeightSemanticToken { get }
    var fontWeightBodyStrong: TypographyFontWeightSemanticToken { get }
    var fontWeightLabelDefault: TypographyFontWeightSemanticToken { get }
    var fontWeightLabelStrong: TypographyFontWeightSemanticToken { get }
    var fontWeightWeightCode: TypographyFontWeightSemanticToken { get }

    // MARK: Semantic token - Typography - Font - Size - Mobile

    var fontSizeMobileDislayLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken { get }

    // MARK: Semantic token - Typography - Font - Size - Tablet

    var fontSizeTabletDislayLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken { get }

    // MARK: Semantic token - Typography - Font - Size - Others

    var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeLabelLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeLabelMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeLabelSmall: TypographyFontSizeSemanticToken { get }
    var fontSizeCodeMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeCodeSmall: TypographyFontSizeSemanticToken { get }

    // MARK: Semantic token - Typography - Font - Light height - Mobile

    var fontLineHeightMobileDislayLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken { get }

    // MARK: Semantic token - Typography - Font - Light height - Tablet

    var fontLineHeightTabletDislayLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken { get }

    // MARK: Semantic token - Typography - Font - Light height - Others

    var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken { get }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile

    var fontParagraphSpacingMobileDislayLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingRawToken { get }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Tablet

    var fontParagraphSpacingTabletDislayLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingRawToken { get }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Others

    var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingRawToken { get }
}
