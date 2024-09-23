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
    static let mockThemeTypographyFontWeightRawToken: TypographyFontWeightRawToken = "stiicckkyyyy"
    static let mockThemeTypographyFontSizeRawToken: TypographyFontSizeRawToken = 666
    static let mockThemeTypographyFontLineHeightRawToken: TypographyFontLineHeightRawToken = 321
    static let mockThemeTypographyCompositeSemanticToken: TypographyCompositeSemanticToken = TypographyCompositeSemanticToken(compact: TypographyRawTokens.typeBold1850, regular: TypographyRawTokens.typeBold1850)

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

    // MARK: - Semantic tokens - Typography - Composites - Display

    override var typeDisplayLarge: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeDisplayMedium: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeDisplaySmall: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    override var typeHeadingXLarge: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeHeadingLarge: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeHeadingMedium: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeHeadingSmall: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }

    // MARK: - Semantic tokens - Typography - Composites - Body

    override var typeBodyDefaultLarge: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeBodyDefaultMedium: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeBodyDefaultSmall: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeBodyStrongLarge: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeBodyStrongMedium: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeBodyStrongSmall: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }

    // MARK: - Semantic tokens - Typography - Composites - Label

    override var typeLabelDefaultXLarge: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeLabelDefaultLarge: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeLabelDefaultMedium: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeLabelDefaultSmall: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeLabelStrongXLarge: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeLabelStrongLarge: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeLabelStrongMedium: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeLabelStrongSmall: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }

    // MARK: - Semantic tokens - Typography - Composites - Code

    override var typeCodeMedium: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
    override var typeCodeSmall: TypographyCompositeSemanticToken { Self.mockThemeTypographyCompositeSemanticToken }
}
// swiftlint:enable line_length
