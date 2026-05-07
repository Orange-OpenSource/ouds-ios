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
    static let mockThemeSizeCompositeToken = MultipleSizeSemanticToken(compact: 1, regular: 151)

    // MARK: - Semantic token - Sizing - Icon with typography - Multiples

    override var iconWithHeadingXlargeSizeSmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithHeadingXlargeSizeMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithHeadingXlargeSizeLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    override var iconWithHeadingLargeSizeSmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithHeadingLargeSizeMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithHeadingLargeSizeLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    override var iconWithHeadingMediumSizeSmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithHeadingMediumSizeMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithHeadingMediumSizeLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    override var iconWithHeadingSmallSizeSmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithHeadingSmallSizeMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithHeadingSmallSizeLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    override var iconWithBodyLargeSizeSmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithBodyLargeSizeMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithBodyLargeSizeLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    override var iconWithBodyMediumSizeSmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithBodyMediumSizeMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithBodyMediumSizeLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    override var iconWithBodySmallSizeSmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithBodySmallSizeMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var iconWithBodySmallSizeLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Icon with typography - Pure semantic

    override var iconWithHeadingXlargeSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingXlargeSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingXlargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingXlargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingXlargeSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingXlargeSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingLargeSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingLargeSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingLargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingLargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingLargeSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingLargeSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingMediumSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingMediumSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingMediumSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingMediumSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingMediumSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingMediumSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingSmallSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingSmallSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingSmallSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingSmallSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithHeadingSmallSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithHeadingSmallSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithBodyLargeSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithBodyLargeSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithBodyLargeSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithBodyLargeSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithBodyLargeSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithBodyLargeSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithBodyMediumSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithBodyMediumSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithBodyMediumSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithBodyMediumSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithBodyMediumSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithBodyMediumSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithBodySmallSizeSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithBodySmallSizeSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithBodySmallSizeMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithBodySmallSizeMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithBodySmallSizeLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithBodySmallSizeLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithLabelXlargeSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelXlargeSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelXlargeSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelXlargeSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithLabelLargeSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelLargeSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelLargeSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelLargeSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelLargeSizeXlarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithLabelMediumSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelMediumSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelMediumSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelMediumSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var iconWithLabelSmallSizeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelSmallSizeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelSmallSizeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconWithLabelSmallSizeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Icon decorative

    override var iconDecorative4xsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconDecorative3xsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconDecorative2xsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconDecorativeXsmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconDecorativeSmall: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconDecorativeMedium: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconDecorativeLarge: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconDecorativeXlarge: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var iconDecorative2xlarge: SizeSemanticToken { Self.mockThemeSizeRawToken }

    // MARK: - Semantic token - Sizing - Max width typography - Multiples

    override var maxWidthDisplayLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthDisplayMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthDisplaySmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    override var maxWidthHeadingXlarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthHeadingLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthHeadingMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthHeadingSmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    override var maxWidthBodyLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthBodyMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthBodySmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Max width typography - Pure semantic

    override var maxWidthDisplayLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthDisplayLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthDisplayMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthDisplayMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthDisplaySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthDisplaySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthHeadingXlargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthHeadingXlargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthHeadingLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthHeadingLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthHeadingMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthHeadingMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthHeadingSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthHeadingSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthBodyLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthBodyLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthBodyMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthBodyMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthBodySmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthBodySmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthLabelXlargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthLabelXlargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthLabelLargeMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthLabelLargeTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthLabelMediumMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthLabelMediumTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthLabelSmallMobile: SizeSemanticToken { Self.mockThemeSizeRawToken }
    override var maxWidthLabelSmallTablet: SizeSemanticToken { Self.mockThemeSizeRawToken }

    override var maxWidthLabelXlarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthLabelLarge: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthLabelMedium: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }
    override var maxWidthLabelSmall: MultipleSizeSemanticToken { Self.mockThemeSizeCompositeToken }

    // MARK: - Semantic token - Sizing - Interactive area

    override var minInteractiveArea: SizeSemanticToken { Self.mockThemeSizeRawToken }
}

// swiftlint:enable required_deinit
