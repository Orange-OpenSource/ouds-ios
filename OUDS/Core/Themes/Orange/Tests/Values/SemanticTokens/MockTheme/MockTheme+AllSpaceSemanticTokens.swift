//
// Software Name: OUDSThemesContract iOS
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

/// Overrides **all** the space semantic tokens (from its super class, i.e. ``OrangeThemeSpaceSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeSpaceSemanticTokensProvider: OrangeThemeSpaceSemanticTokensProvider {

    static let mockThemeSpaceRawToken: DimensionRawToken = 911
    static let mockThemeSpaceSemanticToken = MultipleSpaceSemanticTokens(compact: 1, regular: 151)

    // MARK: Semantic token - Spacing - Layout fluid (multiple)

    override var scaledNone: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var scaled3xsmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var scaled2xsmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var scaledXsmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var scaledSmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var scaledMedium: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var scaledLarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var scaledXlarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var scaled2xlarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var scaled3xlarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }

    // MARK: Semantic token - Spacing - Layout fluid (pure semantic)

    override var scaledNoneMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledNoneTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaled3xsmallMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaled3xsmallTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaled2xsmallMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaled2xsmallTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledXsmallMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledXsmallTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledSmallMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledSmallTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledMediumMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledMediumTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledLargeMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledLargeTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledXlargeMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaledXlargeTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaled2xlargeMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaled2xlargeTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaled3xlargeMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var scaled3xlargeTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Layout fix

    override var fixedNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixed3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixed2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixedXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixedSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixedMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixedLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixedXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixed2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixed3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixed4xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var fixed5xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    override var paddingInlineNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInline4xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInline3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInline2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInlineXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInlineSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInlineMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInlineLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInlineXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInline2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInline3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingInline4xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding block

    override var paddingBlockNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlock4xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlock3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlock2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlockXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlockSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlockMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlockLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlockXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlock2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlock3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var paddingBlock4xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override var insetNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var inset4xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var inset3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var inset2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var insetXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var insetSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var insetMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var insetLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var insetXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var inset2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var inset3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Column Gap

    override var columnGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var columnGap3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var columnGap2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var columnGapXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var columnGapSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var columnGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var columnGapLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var columnGapXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var columnGap2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Row Gap

    override var rowGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var rowGap3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var rowGap2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var rowGapXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var rowGapSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var rowGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var rowGapLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
}

// swiftlint:enable required_deinit
