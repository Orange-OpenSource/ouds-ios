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

import OUDSThemesOrange
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit

/// Overrides **all** the size semantic tokens (from its super class, i.e. ``OrangeThemeSizeSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeSizeSemanticTokensProvider: OrangeThemeSizeSemanticTokensProvider {

    static let mockThemeSizeRawToken: DimensionRawToken = 118_000
    static let mockThemeSizeCompositeToken = MultipleSizeSemanticTokens(compact: 1, regular: 151)

    // MARK: - Semantic token - Sizing - Icon with typography - Multiples

    override public var sizeIconWithHeadingXlargeSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingXlargeSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingXlargeSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithHeadingLargeSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingLargeSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingLargeSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithHeadingMediumSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingMediumSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingMediumSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithHeadingSmallSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingSmallSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithHeadingSmallSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithBodyLargeSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodyLargeSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodyLargeSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithBodyMediumSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodyMediumSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodyMediumSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeIconWithBodySmallSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodySmallSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeIconWithBodySmallSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Icon with typography - Pure semantic

    override public var sizeIconWithHeadingXlargeSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingXlargeSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingXlargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingXlargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingXlargeSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingXlargeSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingLargeSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingLargeSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingLargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingLargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingLargeSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingLargeSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingMediumSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingMediumSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingMediumSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingMediumSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingMediumSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingMediumSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingSmallSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingSmallSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingSmallSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingSmallSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithHeadingSmallSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithHeadingSmallSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyLargeSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyLargeSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyLargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyLargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyLargeSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyLargeSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyMediumSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyMediumSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyMediumSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyMediumSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodyMediumSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodyMediumSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodySmallSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodySmallSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodySmallSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodySmallSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithBodySmallSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithBodySmallSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithLabelXlargeSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelXlargeSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelXlargeSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithLabelLargeSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelLargeSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelLargeSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelLargeSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelLargeSizeXlarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithLabelMediumSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelMediumSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelMediumSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelMediumSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeIconWithLabelSmallSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelSmallSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelSmallSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconWithLabelSmallSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon decorative

    override public var sizeIconDecorative4xs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorative3xs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorative2xs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeXs: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeSm: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeMd: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeLg: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorativeXl: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeIconDecorative2xl: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Max width typography - Multiples

    override public var sizeMaxWidthTypeDisplayLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeDisplayMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeDisplaySmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeMaxWidthTypeHeadingXlarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeHeadingLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeHeadingMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeHeadingSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override public var sizeMaxWidthTypeBodyLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeBodyMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override public var sizeMaxWidthTypeBodySmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Max width typography - Pure semantic

    override public var sizeMaxWidthTypeDisplayLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeDisplayLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeDisplayMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeDisplayMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeDisplaySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeDisplaySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeHeadingXlargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeHeadingXlargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeHeadingLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeHeadingLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeHeadingMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeHeadingMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeHeadingSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeHeadingSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeBodyLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeBodyLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeBodyMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeBodyMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override public var sizeMaxWidthTypeBodySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override public var sizeMaxWidthTypeBodySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Interactive area

    override public var sizeMinInteractiveArea: SizeSemanticToken { Self.mockThemeSizeRawToken }
}

// swiftlint:enable required_deinit
