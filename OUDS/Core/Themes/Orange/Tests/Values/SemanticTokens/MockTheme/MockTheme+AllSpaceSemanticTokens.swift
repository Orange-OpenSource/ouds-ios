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
    override public var spaceScaledSmash: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledShortest: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledShorter: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledShort: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledMedium: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledTall: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledTaller: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledTallest: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }
    override public var spaceScaledSpacious: MultipleSpaceSemanticTokens { Self.mockThemeSpaceSemanticToken }

    // MARK: Semantic token - Spacing - Layout fluid (pure semantic)

    override public var spaceScaledNoneMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledNoneTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledSmashMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledSmashTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledShortestMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledShortestTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledShorterMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledShorterTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledShortMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledShortTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledMediumMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledMediumTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledTallMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledTallTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledTallerMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledTallerTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledTallestMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledTallestTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledSpaciousMobile: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceScaledSpaciousTablet: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Layout fix

    override public var spaceFixedNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedSmash: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedShortest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedTallest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedSpacious: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedHuge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceFixedJumbo: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Spacing - Padding - Padding inline

    override public var spacePaddingInlineNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineSmash: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineShortest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineTallest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineSpacious: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingInlineHuge: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding stack

    override public var spacePaddingBlockNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spacePaddingBlockTallest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Padding inset

    override public var spaceInsetNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetSmash: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetShortest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetTallest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceInsetSpacious: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Column Gap

    override public var spaceColumnGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceColumnGapTaller: SpaceSemanticToken { Self.mockThemeSpaceRawToken }

    // MARK: Semantic token - Padding - Row Gap

    override public var spaceRowGapNone: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapShortest: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapShorter: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapShort: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapMedium: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
    override public var spaceRowGapTall: SpaceSemanticToken { Self.mockThemeSpaceRawToken }
}

// swiftlint:enable required_deinit
