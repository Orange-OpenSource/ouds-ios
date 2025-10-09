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

    override public var spaceScaledNone: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaled3xsmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaled2xsmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledXsmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledSmall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledMedium: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledLarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledXlarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaled2xlarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaled3xlarge: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }

    // MARK: Semantic token - Spacing - Layout fluid (pure semantic)

    override public var spaceScaledNoneMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledNoneTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaled3xsMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaled3xsTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaled2xsMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaled2xsTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledXsMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledXsTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledSmMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledSmTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledMdMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledMdTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledLgMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledLgTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledXlMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledXlTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaled2xlMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaled2xlTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaled3xlMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaled3xlTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Layout fix

    override public var spaceFixedNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed4xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed5xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    override public var spacePaddingInlineNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline4xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline4xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding block

    override public var spacePaddingBlockNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlock4xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlock3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlock2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlock2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlock3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlock4xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override public var spaceInsetNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInset4xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInset3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInset2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInset2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInset3xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Column Gap

    override public var spaceColumnGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGap3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGap2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapXlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGap2xlarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Row Gap

    override public var spaceRowGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGap3xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGap2xsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapXsmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapSmall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapLarge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
}

// swiftlint:enable required_deinit
