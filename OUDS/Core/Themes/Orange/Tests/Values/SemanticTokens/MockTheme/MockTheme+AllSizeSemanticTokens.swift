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

    override var sizeIconWithHeadingXlargeSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingXlargeSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingXlargeSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithHeadingLargeSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingLargeSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingLargeSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithHeadingMediumSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingMediumSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingMediumSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithHeadingSmallSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingSmallSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithHeadingSmallSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithBodyLargeSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodyLargeSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodyLargeSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithBodyMediumSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodyMediumSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodyMediumSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override var sizeIconWithBodySmallSizeSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodySmallSizeMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeIconWithBodySmallSizeLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Icon with typography - Pure semantic

    override var sizeIconWithHeadingXlargeSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingXlargeSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingXlargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingXlargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingXlargeSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingXlargeSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingLargeSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingLargeSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingLargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingLargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingLargeSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingLargeSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingMediumSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingMediumSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingMediumSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingMediumSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingMediumSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingMediumSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingSmallSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingSmallSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingSmallSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingSmallSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithHeadingSmallSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithHeadingSmallSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithBodyLargeSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithBodyLargeSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithBodyLargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithBodyLargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithBodyLargeSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithBodyLargeSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithBodyMediumSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithBodyMediumSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithBodyMediumSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithBodyMediumSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithBodyMediumSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithBodyMediumSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithBodySmallSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithBodySmallSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithBodySmallSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithBodySmallSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithBodySmallSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithBodySmallSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithLabelXlargeSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelXlargeSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelXlargeSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithLabelLargeSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelLargeSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelLargeSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelLargeSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelLargeSizeXlarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithLabelMediumSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelMediumSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelMediumSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelMediumSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeIconWithLabelSmallSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelSmallSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelSmallSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconWithLabelSmallSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon decorative

    override var sizeIconDecorative4xsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorative3xsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorative2xsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorativeXlarge: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeIconDecorative2xlarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Max width typography - Multiples

    override var sizeMaxWidthTypeDisplayLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeDisplayMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeDisplaySmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override var sizeMaxWidthTypeHeadingXlarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeHeadingSmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    override var sizeMaxWidthTypeBodyLarge: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeBodyMedium: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }
    override var sizeMaxWidthTypeBodySmall: MultipleSizeSemanticTokens { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Max width typography - Pure semantic

    override var sizeMaxWidthTypeDisplayLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeDisplayLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeMaxWidthTypeDisplayMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeDisplayMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeMaxWidthTypeDisplaySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeDisplaySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeMaxWidthTypeHeadingXlargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeHeadingXlargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeMaxWidthTypeHeadingLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeHeadingLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeMaxWidthTypeHeadingMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeHeadingMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeMaxWidthTypeHeadingSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeHeadingSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeMaxWidthTypeBodyLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeBodyLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeMaxWidthTypeBodyMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeBodyMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var sizeMaxWidthTypeBodySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var sizeMaxWidthTypeBodySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Interactive area

    override var sizeMinInteractiveArea: SizeSemanticToken { Self.mockThemeSizeRawToken }
}

// swiftlint:enable required_deinit
