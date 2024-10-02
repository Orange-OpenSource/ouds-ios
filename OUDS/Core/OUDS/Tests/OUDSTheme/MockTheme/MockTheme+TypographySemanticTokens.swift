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

// swiftlint:disable line_length
extension MockTheme {

    static let mockThemeTypographyFontFamilyRawToken: TypographyFontFamilyRawToken = "o°xXSkyBl0GF0ntxXx°o"
    static let mockThemeTypographyFontWeightRawToken: TypographyFontWeightRawToken = 888
    static let mockThemeTypographyFontSizeRawToken: TypographyFontSizeRawToken = 666
    static let mockThemeTypographyFontLineHeightRawToken: TypographyFontLineHeightRawToken = 321
    static let mockThemeTypographyFontLetterSpacingRawToken: TypographyFontLetterSpacingRawToken = 21_092_024
    static let mockThemeMultipleTypographyTokens: MultipleTypographyTokens = MultipleTypographyTokens(compact: TypographyRawTokens.typeBold1850, regular: TypographyRawTokens.typeBold1850)

    // MARK: Semantic token - Typography - Font - Family

    override var fontFamily: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyDisplay: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyHeading: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyBody: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyLabel: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }
    override var fontFamilyCode: TypographyFontFamilySemanticToken { Self.mockThemeTypographyFontFamilyRawToken }

    // MARK: Semantic token - Typography - Font - Weight

    override var fontWeightDisplay: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightHeading: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightBodyDefault: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightBodyStrong: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightLabelDefault: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightLabelStrong: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }
    override var fontWeightCode: TypographyFontWeightSemanticToken { Self.mockThemeTypographyFontWeightRawToken }

    // MARK: Semantic token - Typography - Font - Size - Mobile

    override var fontSizeMobileDisplayLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken  { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken  { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }

    // MARK: Semantic token - Typography - Font - Size - Tablet

    override var fontSizeTabletDisplayLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }

    // MARK: Semantic token - Typography - Font - Size - Others

    override var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeLabelLarge: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeLabelMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeLabelSmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeCodeMedium: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }
    override var fontSizeCodeSmall: TypographyFontSizeSemanticToken { Self.mockThemeTypographyFontSizeRawToken }

    // MARK: Semantic token - Typography - Font - Line height - Mobile

    override var fontLineHeightMobileDisplayLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }

    // MARK: Semantic token - Typography - Font - Line height - Tablet

    override var fontLineHeightTabletDisplayLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }

    // MARK: Semantic token - Typography - Font - Light height - Others

    override var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken  { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }
    override var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken { Self.mockThemeTypographyFontLineHeightRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing - Mobile (extra-compact/compact)

    override var fontLetterSpacingMobileDisplayLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingMobileDisplayMedium: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingMobileDisplaySmall: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingMobileHeadingXLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingMobileHeadingLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingMobileHeadingMedium: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingMobileHeadingSmall: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingMobileBodyLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingMobileBodyMedium: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingMobileBodySmall: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing - Tablet (regular/medium)

    override var fontLetterSpacingTabletDisplayLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingTabletDisplayMedium: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingTabletDisplaySmall: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingTabletHeadingXLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingTabletHeadingLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingTabletHeadingMedium: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingTabletHeadingSmall: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingTabletBodyLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingTabletBodyMedium: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingTabletBodySmall: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }

    // MARK: - Semantic token - Typography - Font - Letter spacing - Others

    override var fontLetterSpacingLabelXLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingLabelLarge: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingLabelMedium: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingLabelSmall: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingCodeMedium: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }
    override var fontLetterSpacingCodeSmall: TypographyFontLetterSpacingSemanticToken { Self.mockThemeTypographyFontLetterSpacingRawToken }

    // MARK: - Semantic tokens - Typography - Composites - Display

    override var typeDisplayLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeDisplayMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeDisplaySmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override var typeHeadingXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeHeadingLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeHeadingMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeHeadingSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override var typeBodyDefaultLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyDefaultMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyDefaultSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyStrongLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyStrongMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeBodyStrongSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override var typeLabelDefaultXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelDefaultLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelDefaultMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelDefaultSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelStrongXLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelStrongLarge: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelStrongMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeLabelStrongSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override var typeCodeMedium: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
    override var typeCodeSmall: MultipleTypographyTokens { Self.mockThemeMultipleTypographyTokens }
}
// swiftlint:enable line_length
