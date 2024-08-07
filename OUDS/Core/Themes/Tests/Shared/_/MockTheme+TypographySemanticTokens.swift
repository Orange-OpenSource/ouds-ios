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
import OUDSTokensSemantic

extension MockTheme {

    static let mockThemeFontFamilyRawToken: TypographyFontFamilyRawToken = "o°xXSkyBl0GF0ntxXx°o"
    static let mockThemeFontWeightRawToken: TypographyFontWeightRawToken = "stiicckkyyyy"
    static let mockThemeFontSizeRawToken: TypographyFontSizeRawToken = 666
    static let mockThemeFontLineHeightRawToken: TypographyFontLineHeightRawToken = 321
    static let mockThemeFontParagraphSpacingRawToken: TypographyFontParagraphSpacingRawToken = 0x911

    // MARK: Semantic token - Typography - Font - Family

    override var fontFamily: TypographyFontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyDisplay: TypographyFontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyHeading: TypographyFontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyBody: TypographyFontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyLabel: TypographyFontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }
    override var fontFamilyCode: TypographyFontFamilySemanticToken { Self.mockThemeFontFamilyRawToken }

    // MARK: Semantic token - Typography - Font - Weight

    override var fontWeightDisplay: TypographyFontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightHeading: TypographyFontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightBodyDefault: TypographyFontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightBodyStrong: TypographyFontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightLabelDefault: TypographyFontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightLabelStrong: TypographyFontWeightSemanticToken { Self.mockThemeFontWeightRawToken }
    override var fontWeightCode: TypographyFontWeightSemanticToken { Self.mockThemeFontWeightRawToken }

    // MARK: Semantic token - Typography - Font - Size - Mobile

    override var fontSizeMobileDisplayLarge: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken  { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken  { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileCodeMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeMobileCodeSmall: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }

    // MARK: Semantic token - Typography - Font - Size - Tablet

    override var fontSizeTabletDisplayLarge: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletCodeMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeTabletCodeSmall: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }

    // MARK: Semantic token - Typography - Font - Size - Others

    override var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeLabelLarge: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeLabelMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeLabelSmall: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeCodeMedium: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }
    override var fontSizeCodeSmall: TypographyFontSizeSemanticToken { Self.mockThemeFontSizeRawToken }

    // MARK: Semantic token - Typography - Font - Line height - Mobile

    override var fontLineHeightMobileDisplayLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileCodeMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightMobileCodeSmall: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: Semantic token - Typography - Font - Line height - Tablet

    override var fontLineHeightTabletDisplayLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletCodeMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightTabletCodeSmall: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: Semantic token - Typography - Font - Light height - Others

    override var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken  { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }
    override var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken { Self.mockThemeFontLineHeightRawToken }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile

    override var fontParagraphSpacingMobileDisplayLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileCodeMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingMobileCodeSmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Tablet

    override var fontParagraphSpacingTabletDisplayLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletCodeMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingTabletCodeSmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Others

    override var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
    override var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingRawToken { Self.mockThemeFontParagraphSpacingRawToken }
}
