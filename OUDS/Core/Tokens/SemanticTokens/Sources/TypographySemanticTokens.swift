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

// MARK: Semantic tokens

// MARK: - Composite semantic token

/// Composite semantic tokens which will wrap a combination of `TypographyCompositeRawToken` depending to viewports.
public final class TypographyCompositeSemanticToken: NSObject {

    /// For **extra-compact** and **compact** viewports
    public let compact: TypographyCompositeRawToken
    /// For **regular** and **medium** viewports
    public let regular: TypographyCompositeRawToken

    public init(compact: TypographyCompositeRawToken, regular: TypographyCompositeRawToken) {
        self.compact = compact
        self.regular = regular
    }

    public override func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? TypographyCompositeSemanticToken else { return false }
        return self.compact == object.compact && self.regular == object.regular
    }
}

// MARK: - Semantic tokens

/// This is a group of semantic tokens for **typography**.
/// It defines all typography semantic tokens a theme must have
/// (`TypographyFontFamilySemanticToken`, `TypographyFontWeightSemanticToken`, `TypographyFontSizeSemanticToken`, `TypographyFontLineHeightSemanticToken`).
public protocol TypographySemanticTokens {

    // MARK: - Semantic token - Typography - Font - Family

    // TODO: Should we suffix our tokens names by "iOS"?

    var fontFamily: TypographyFontFamilyRawToken { get }
    var fontFamilyDisplay: TypographyFontFamilySemanticToken { get }
    var fontFamilyHeading: TypographyFontFamilySemanticToken { get }
    var fontFamilyBody: TypographyFontFamilySemanticToken { get }
    var fontFamilyLabel: TypographyFontFamilySemanticToken { get }
    var fontFamilyCode: TypographyFontFamilySemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Weight

    var fontWeightDefault: TypographyFontWeightSemanticToken { get }
    var fontWeightStrong: TypographyFontWeightSemanticToken { get }
    var fontWeightDisplay: TypographyFontWeightSemanticToken { get }
    var fontWeightHeading: TypographyFontWeightSemanticToken { get }
    var fontWeightBodyDefault: TypographyFontWeightSemanticToken { get }
    var fontWeightBodyStrong: TypographyFontWeightSemanticToken { get }
    var fontWeightLabelDefault: TypographyFontWeightSemanticToken { get }
    var fontWeightLabelStrong: TypographyFontWeightSemanticToken { get }
    var fontWeightCode: TypographyFontWeightSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Size - Mobile (extra-compact/compact)

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

    // MARK: - Semantic token - Typography - Font - Size - Tablet (regular/medium

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

    // MARK: - Semantic token - Typography - Font - Size - Others

    var fontSizeLabelXLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeLabelLarge: TypographyFontSizeSemanticToken { get }
    var fontSizeLabelMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeLabelSmall: TypographyFontSizeSemanticToken { get }
    var fontSizeCodeMedium: TypographyFontSizeSemanticToken { get }
    var fontSizeCodeSmall: TypographyFontSizeSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Line height - Mobile (extra-compact/compact)

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

    // MARK: - Semantic token - Typography - Font - Line height - Tablet (regular/medium)

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

    // MARK: - Semantic token - Typography - Font - Line height - Others

    var fontLineHeightLabelXLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightLabelLarge: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightLabelMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightLabelSmall: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightCodeMedium: TypographyFontLineHeightSemanticToken { get }
    var fontLineHeightCodeSmall: TypographyFontLineHeightSemanticToken { get }

    // MARK: - Semantic token - Typography - Font - Letter spacing
    // TODO: Missing details about the types of the associated raw tokens

    // MARK: - Semantic token - Typography - Font - Paragraph spacing - Mobile (extra-compact/compact)

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

    // MARK: - Semantic token - Typography - Font - Paragraph spacing - Tablet (regular/medium)

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

    // MARK: - Semantic token - Typography - Font - Paragraph spacing - Others

    var fontParagraphSpacingLabelXLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingLabelLarge: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingLabelMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingLabelSmall: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingCodeMedium: TypographyFontParagraphSpacingRawToken { get }
    var fontParagraphSpacingCodeSmall: TypographyFontParagraphSpacingRawToken { get }

    // MARK: - Semantic tokens - Typography - Composites - Display

    var typeDisplayLarge: TypographyCompositeSemanticToken { get }
    var typeDisplayMedium: TypographyCompositeSemanticToken { get }
    var typeDisplaySmall: TypographyCompositeSemanticToken { get }

    // MARK: - Semantic tokens - Typography - Composites - Heading

    var typeHeadingXLarge: TypographyCompositeSemanticToken { get }
    var typeHeadingLarge: TypographyCompositeSemanticToken { get }
    var typeHeadingMedium: TypographyCompositeSemanticToken { get }
    var typeHeadingSmall: TypographyCompositeSemanticToken { get }

    // MARK: - Semantic tokens - Typography - Composites - Body

    var typeBodyDefaultLarge: TypographyCompositeSemanticToken { get }
    var typeBodyDefaultMedium: TypographyCompositeSemanticToken { get }
    var typeBodyDefaultSmall: TypographyCompositeSemanticToken { get }
    var typeBodyStrongLarge: TypographyCompositeSemanticToken { get }
    var typeBodyStrongMedium: TypographyCompositeSemanticToken { get }
    var typeBodyStrongSmall: TypographyCompositeSemanticToken { get }

    // MARK: - Semantic tokens - Typography - Composites - Label

    var typeLabelDefaultXLarge: TypographyCompositeSemanticToken { get }
    var typeLabelDefaultLarge: TypographyCompositeSemanticToken { get }
    var typeLabelDefaultMedium: TypographyCompositeSemanticToken { get }
    var typeLabelDefaultSmall: TypographyCompositeSemanticToken { get }
    var typeLabelStrongXLarge: TypographyCompositeSemanticToken { get }
    var typeLabelStrongLarge: TypographyCompositeSemanticToken { get }
    var typeLabelStrongMedium: TypographyCompositeSemanticToken { get }
    var typeLabelStrongSmall: TypographyCompositeSemanticToken { get }

    // MARK: - Semantic tokens - Typography - Composites - Code

    var typeCodeMedium: TypographyCompositeSemanticToken { get }
    var typeCodeSmall: TypographyCompositeSemanticToken { get }
}
