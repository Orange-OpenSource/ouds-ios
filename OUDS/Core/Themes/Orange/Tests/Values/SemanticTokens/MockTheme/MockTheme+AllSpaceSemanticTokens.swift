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
    override public var spaceScaled3xs: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaled2xs: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledXs: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledSm: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledMd: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledLg: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledXl: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaled2xl: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaled3xl: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }

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
    override public var spaceFixed3xs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed2xs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedXs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedSm: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedMd: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedLg: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedXl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed2xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed3xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed4xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixed5xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    override public var spacePaddingInlineNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline3xs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline2xs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineXs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineSm: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineMd: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineLg: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineXl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline2xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline3xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInline4xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding stack

    override public var spacePaddingBlockNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockXs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockSm: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockMd: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockLg: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockXl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlock2xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override public var spaceInsetNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInset3xs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInset2xs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetXs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetSm: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetMd: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetLg: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetXl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInset2xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInset3xl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Column Gap

    override public var spaceColumnGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapXs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapSm: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapMd: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapLg: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapXl: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Row Gap

    override public var spaceRowGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGap2xs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapXs: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapSm: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapMd: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapLg: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
}

// swiftlint:enable required_deinit
