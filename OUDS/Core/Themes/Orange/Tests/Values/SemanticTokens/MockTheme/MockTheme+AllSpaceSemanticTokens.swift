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

/// Overrides **all** the space semantic tokens (from its super class, i.e. ``OrangeThemeSpaceSemanticTokensProvider`` so as to test overriding of them (unit tests)
/// and to act like smoke tests with crashing tests if some tokens disappeared.
final class MockThemeSpaceSemanticTokensProvider: OrangeThemeSpaceSemanticTokensProvider {

    static let mockThemeSpaceRawToken: DimensionRawToken = 911
    static let mockThemeSpaceSemanticToken = MultipleSpaceSemanticTokens(compact: 1, regular: 151)

    // MARK: Semantic token - Spacing - Layout fluid (multiple)

    override var spaceScaledNone: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaled3xsmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaled2xsmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledXsmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledSmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledMedium: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledLarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaledXlarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaled2xlarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override var spaceScaled3xlarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }

    // MARK: Semantic token - Spacing - Layout fluid (pure semantic)

    override var spaceScaledNoneMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledNoneTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaled3xsMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaled3xsTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaled2xsMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaled2xsTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledXsMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledXsTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledSmMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledSmTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledMdMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledMdTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledLgMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledLgTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledXlMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaledXlTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaled2xlMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaled2xlTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaled3xlMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceScaled3xlTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Layout fix

    override var spaceFixedNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixed3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixed2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixedXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixed2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixed3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixed4xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceFixed5xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    override var spacePaddingInlineNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInline4xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInline3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInline2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInlineXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInline2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInline3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingInline4xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding block

    override var spacePaddingBlockNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlock4xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlock3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlock2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlockXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlock2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlock3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spacePaddingBlock4xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override var spaceInsetNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInset4xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInset3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInset2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInsetXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInset2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceInset3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Column Gap

    override var spaceColumnGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGap3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGap2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGapXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceColumnGap2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Row Gap

    override var spaceRowGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGap3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGap2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override var spaceRowGapLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
}

// swiftlint:enable required_deinit
