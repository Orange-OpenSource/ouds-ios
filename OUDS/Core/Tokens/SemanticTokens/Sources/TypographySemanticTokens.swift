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
import OUDSTokensPrimitive

// MARK: - Type aliases to keep grammar clear

public typealias TypographyFontFamilySemanticToken = TypographyFontFamilyPrimitiveToken
public typealias TypographyFontWeightSemanticToken = TypographyFontWeightPrimitiveToken
public typealias TypographyFontSizeSemanticToken = TypographyFontSizePrimitiveToken
public typealias TypographyFontLineHeightSemanticToken = TypographyFontLineHeightPrimitiveToken

// MARK: - Semantic tokens

public protocol TypographySemanticTokens {
    
    // MARK: Semantic token - Typography - Font - Family

    var fontFamilyDisplay: TypographyFontFamilySemanticToken { get set }
    var fontFamilyHeading: TypographyFontFamilySemanticToken { get set }
    var fontFamilyBody: TypographyFontFamilySemanticToken { get set }
    var fontFamilyLabel: TypographyFontFamilySemanticToken { get set }
    var fontFamilyCode: TypographyFontFamilySemanticToken { get set }

    // MARK: Semantic token - Typography - Font - Weight

    var fontWeightDisplay: TypographyFontWeightSemanticToken { get set }
    var fontWeightHeading: TypographyFontWeightSemanticToken { get set }
    var fontWeightBodyDefault: TypographyFontWeightSemanticToken { get set }
    var fontWeightBodyStrong: TypographyFontWeightSemanticToken { get set }
    var fontWeightLabelDefault: TypographyFontWeightSemanticToken { get set }
    var fontWeightLabelStrong: TypographyFontWeightSemanticToken { get set }
    var fontWeightWeightCode: TypographyFontWeightSemanticToken { get set }

    // MARK: Semantic token - Typography - Font - Size - Mobile

    var fontSizeMobileDislayLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeMobileDisplayMedium: TypographyFontSizeSemanticToken { get set }
    var fontSizeMobileDisplaySmall: TypographyFontSizeSemanticToken { get set }
    var fontSizeMobileHeadingXLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeMobileHeadingLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeMobileHeadingMedium: TypographyFontSizeSemanticToken { get set }
    var fontSizeMobileHeadingSmall: TypographyFontSizeSemanticToken { get set }
    var fontSizeMobileBodyLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeMobileBodyMedium: TypographyFontSizeSemanticToken { get set }
    var fontSizeMobileBodySmall: TypographyFontSizeSemanticToken { get set }

    // MARK: Semantic token - Typography - Font - Size - Tablet

    var fontSizeTabletDislayLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeTabletDisplayMedium: TypographyFontSizeSemanticToken { get set }
    var fontSizeTabletDisplaySmall: TypographyFontSizeSemanticToken { get set }
    var fontSizeTabletHeadingXLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeTabletHeadingLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeTabletHeadingMedium: TypographyFontSizeSemanticToken { get set }
    var fontSizeTabletHeadingSmall: TypographyFontSizeSemanticToken { get set }
    var fontSizeTabletBodyLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeTabletBodyMedium: TypographyFontSizeSemanticToken { get set }
    var fontSizeTabletBodySmall: TypographyFontSizeSemanticToken { get set }

    // MARK: Semantic token - Typography - Font - Size - Others

    var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeLabelLarge: TypographyFontSizeSemanticToken { get set }
    var fontSizeLabelMedium: TypographyFontSizeSemanticToken { get set }
    var fontSizeLabelSmall: TypographyFontSizeSemanticToken { get set }
    var fontSizeCodeMedium: TypographyFontSizeSemanticToken { get set }
    var fontSizeCodeSmall: TypographyFontSizeSemanticToken { get set }

    // MARK: Semantic token - Typography - Font - Light height - Mobile

    var fontLineHeightMobileDislayLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightMobileDisplayMedium: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightMobileDisplaySmall: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightMobileHeadingXLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightMobileHeadingLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightMobileHeadingMedium: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightMobileHeadingSmall: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightMobileBodyLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightMobileBodyMedium: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightMobileBodySmall: TypographyFontLineHeightSemanticToken { get set }

    // MARK: Semantic token - Typography - Font - Light height - Tablet

    var fontLineHeightTabletDislayLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightTabletDisplayMedium: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightTabletDisplaySmall: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightTabletHeadingXLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightTabletHeadingLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightTabletHeadingMedium: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightTabletHeadingSmall: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightTabletBodyLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightTabletBodyMedium: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightTabletBodySmall: TypographyFontLineHeightSemanticToken { get set }

    // MARK: Semantic token - Typography - Font - Light height - Others

    var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken { get set }
    var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken { get set }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Mobile

    var fontParagraphSpacingMobileDislayLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingMobileDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingMobileDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingMobileHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingMobileHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingMobileHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingMobileHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingMobileBodyLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingMobileBodyMedium: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingMobileBodySmall: TypographyFontParagraphSpacingPrimitiveToken { get set }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Tablet

    var fontParagraphSpacingTabletDislayLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingTabletDisplayMedium: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingTabletDisplaySmall: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingTabletHeadingXLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingTabletHeadingLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingTabletHeadingMedium: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingTabletHeadingSmall: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingTabletBodyLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingTabletBodyMedium: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingTabletBodySmall: TypographyFontParagraphSpacingPrimitiveToken { get set }

    // MARK: Semantic token - Typography - Font - Paragraph spacing - Others

    var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingPrimitiveToken { get set }
    var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingPrimitiveToken { get set }

}
