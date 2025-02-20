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

import OUDS
import OUDSThemesOrange
import Testing

// swiftlint:disable type_body_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _spacing semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeSpaceSemanticTokensProvider``.
///
/// **These tests checks if any _spaceemantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfSpaceSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Spacing - Layout fix

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedNone() throws {
        #expect(inheritedTheme.spaces.spaceFixedNone != abstractTheme.spaces.spaceFixedNone)
        #expect(inheritedTheme.spaces.spaceFixedNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedSmash() throws {
        #expect(inheritedTheme.spaces.spaceFixedSmash != abstractTheme.spaces.spaceFixedSmash)
        #expect(inheritedTheme.spaces.spaceFixedSmash == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedShortest() throws {
        #expect(inheritedTheme.spaces.spaceFixedShortest != abstractTheme.spaces.spaceFixedShortest)
        #expect(inheritedTheme.spaces.spaceFixedShortest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedShorter() throws {
        #expect(inheritedTheme.spaces.spaceFixedShorter != abstractTheme.spaces.spaceFixedShorter)
        #expect(inheritedTheme.spaces.spaceFixedShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedShort() throws {
        #expect(inheritedTheme.spaces.spaceFixedShort != abstractTheme.spaces.spaceFixedShort)
        #expect(inheritedTheme.spaces.spaceFixedShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedMedium() throws {
        #expect(inheritedTheme.spaces.spaceFixedMedium != abstractTheme.spaces.spaceFixedMedium)
        #expect(inheritedTheme.spaces.spaceFixedMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedTall() throws {
        #expect(inheritedTheme.spaces.spaceFixedTall != abstractTheme.spaces.spaceFixedTall)
        #expect(inheritedTheme.spaces.spaceFixedTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedTaller() throws {
        #expect(inheritedTheme.spaces.spaceFixedTaller != abstractTheme.spaces.spaceFixedTaller)
        #expect(inheritedTheme.spaces.spaceFixedTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedTallest() throws {
        #expect(inheritedTheme.spaces.spaceFixedTallest != abstractTheme.spaces.spaceFixedTallest)
        #expect(inheritedTheme.spaces.spaceFixedTallest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedSpacious() throws {
        #expect(inheritedTheme.spaces.spaceFixedSpacious != abstractTheme.spaces.spaceFixedSpacious)
        #expect(inheritedTheme.spaces.spaceFixedSpacious == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedHuge() throws {
        #expect(inheritedTheme.spaces.spaceFixedHuge != abstractTheme.spaces.spaceFixedHuge)
        #expect(inheritedTheme.spaces.spaceFixedHuge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedJumbo() throws {
        #expect(inheritedTheme.spaces.spaceFixedJumbo != abstractTheme.spaces.spaceFixedJumbo)
        #expect(inheritedTheme.spaces.spaceFixedJumbo == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Layout fluid

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledNoneMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledNoneMobile != abstractTheme.spaces.spaceScaledNoneMobile)
        #expect(inheritedTheme.spaces.spaceScaledNoneMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledNoneTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledNoneTablet != abstractTheme.spaces.spaceScaledNoneTablet)
        #expect(inheritedTheme.spaces.spaceScaledNoneTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSmashMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledSmashMobile != abstractTheme.spaces.spaceScaledSmashMobile)
        #expect(inheritedTheme.spaces.spaceScaledSmashMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSmashTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledSmashTablet != abstractTheme.spaces.spaceScaledSmashTablet)
        #expect(inheritedTheme.spaces.spaceScaledSmashTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledShortestMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledShortestMobile != abstractTheme.spaces.spaceScaledShortestMobile)
        #expect(inheritedTheme.spaces.spaceScaledShortestMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledShortestTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledShortestTablet != abstractTheme.spaces.spaceScaledShortestTablet)
        #expect(inheritedTheme.spaces.spaceScaledShortestTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledShorterMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledShorterMobile != abstractTheme.spaces.spaceScaledShorterMobile)
        #expect(inheritedTheme.spaces.spaceScaledShorterMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledShorterTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledShorterTablet != abstractTheme.spaces.spaceScaledShorterTablet)
        #expect(inheritedTheme.spaces.spaceScaledShorterTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledShortMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledShortMobile != abstractTheme.spaces.spaceScaledShortMobile)
        #expect(inheritedTheme.spaces.spaceScaledShortMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledShortTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledShortTablet != abstractTheme.spaces.spaceScaledShortTablet)
        #expect(inheritedTheme.spaces.spaceScaledShortTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledMediumMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledMediumMobile != abstractTheme.spaces.spaceScaledMediumMobile)
        #expect(inheritedTheme.spaces.spaceScaledMediumMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledMediumTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledMediumTablet != abstractTheme.spaces.spaceScaledMediumTablet)
        #expect(inheritedTheme.spaces.spaceScaledMediumTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledTallMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledTallMobile != abstractTheme.spaces.spaceScaledTallMobile)
        #expect(inheritedTheme.spaces.spaceScaledTallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledTallTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledTallTablet != abstractTheme.spaces.spaceScaledTallTablet)
        #expect(inheritedTheme.spaces.spaceScaledTallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledTallerMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledTallerMobile != abstractTheme.spaces.spaceScaledTallerMobile)
        #expect(inheritedTheme.spaces.spaceScaledTallerMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledTallerTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledTallerTablet != abstractTheme.spaces.spaceScaledTallerTablet)
        #expect(inheritedTheme.spaces.spaceScaledTallerTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledTallestMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledTallestMobile != abstractTheme.spaces.spaceScaledTallestMobile)
        #expect(inheritedTheme.spaces.spaceScaledTallestMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledTallestTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledTallestTablet != abstractTheme.spaces.spaceScaledTallestTablet)
        #expect(inheritedTheme.spaces.spaceScaledTallestTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSpaciousMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledSpaciousMobile != abstractTheme.spaces.spaceScaledSpaciousMobile)
        #expect(inheritedTheme.spaces.spaceScaledSpaciousMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSpaciousTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledSpaciousTablet != abstractTheme.spaces.spaceScaledSpaciousTablet)
        #expect(inheritedTheme.spaces.spaceScaledSpaciousTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inline

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineNone() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineNone != abstractTheme.spaces.spacePaddingInlineNone)
        #expect(inheritedTheme.spaces.spacePaddingInlineNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSmash() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineSmash != abstractTheme.spaces.spacePaddingInlineSmash)
        #expect(inheritedTheme.spaces.spacePaddingInlineSmash == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShortest() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineShortest != abstractTheme.spaces.spacePaddingInlineShortest)
        #expect(inheritedTheme.spaces.spacePaddingInlineShortest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShorter() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineShorter != abstractTheme.spaces.spacePaddingInlineShorter)
        #expect(inheritedTheme.spaces.spacePaddingInlineShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShort() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineShort != abstractTheme.spaces.spacePaddingInlineShort)
        #expect(inheritedTheme.spaces.spacePaddingInlineShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineMedium() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineMedium != abstractTheme.spaces.spacePaddingInlineMedium)
        #expect(inheritedTheme.spaces.spacePaddingInlineMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTall() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineTall != abstractTheme.spaces.spacePaddingInlineTall)
        #expect(inheritedTheme.spaces.spacePaddingInlineTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTaller() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineTaller != abstractTheme.spaces.spacePaddingInlineTaller)
        #expect(inheritedTheme.spaces.spacePaddingInlineTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTallest() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineTallest != abstractTheme.spaces.spacePaddingInlineTallest)
        #expect(inheritedTheme.spaces.spacePaddingInlineTallest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSpacious() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineSpacious != abstractTheme.spaces.spacePaddingInlineSpacious)
        #expect(inheritedTheme.spaces.spacePaddingInlineSpacious == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineHuge() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineHuge != abstractTheme.spaces.spacePaddingInlineHuge)
        #expect(inheritedTheme.spaces.spacePaddingInlineHuge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding stack

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockNone() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockNone != abstractTheme.spaces.spacePaddingBlockNone)
        #expect(inheritedTheme.spaces.spacePaddingBlockNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockShorter() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockShorter != abstractTheme.spaces.spacePaddingBlockShorter)
        #expect(inheritedTheme.spaces.spacePaddingBlockShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockShort() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockShort != abstractTheme.spaces.spacePaddingBlockShort)
        #expect(inheritedTheme.spaces.spacePaddingBlockShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockMedium() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockMedium != abstractTheme.spaces.spacePaddingBlockMedium)
        #expect(inheritedTheme.spaces.spacePaddingBlockMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTall() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockTall != abstractTheme.spaces.spacePaddingBlockTall)
        #expect(inheritedTheme.spaces.spacePaddingBlockTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTaller() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockTaller != abstractTheme.spaces.spacePaddingBlockTaller)
        #expect(inheritedTheme.spaces.spacePaddingBlockTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTallest() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockTallest != abstractTheme.spaces.spacePaddingBlockTallest)
        #expect(inheritedTheme.spaces.spacePaddingBlockTallest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inset

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetNone() throws {
        #expect(inheritedTheme.spaces.spaceInsetNone != abstractTheme.spaces.spaceInsetNone)
        #expect(inheritedTheme.spaces.spaceInsetNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetSmash() throws {
        #expect(inheritedTheme.spaces.spaceInsetSmash != abstractTheme.spaces.spaceInsetSmash)
        #expect(inheritedTheme.spaces.spaceInsetSmash == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetShortest() throws {
        #expect(inheritedTheme.spaces.spaceInsetShortest != abstractTheme.spaces.spaceInsetShortest)
        #expect(inheritedTheme.spaces.spaceInsetShortest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetShorter() throws {
        #expect(inheritedTheme.spaces.spaceInsetShorter != abstractTheme.spaces.spaceInsetShorter)
        #expect(inheritedTheme.spaces.spaceInsetShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetShort() throws {
        #expect(inheritedTheme.spaces.spaceInsetShort != abstractTheme.spaces.spaceInsetShort)
        #expect(inheritedTheme.spaces.spaceInsetShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetMedium() throws {
        #expect(inheritedTheme.spaces.spaceInsetMedium != abstractTheme.spaces.spaceInsetMedium)
        #expect(inheritedTheme.spaces.spaceInsetMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetTall() throws {
        #expect(inheritedTheme.spaces.spaceInsetTall != abstractTheme.spaces.spaceInsetTall)
        #expect(inheritedTheme.spaces.spaceInsetTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetTaller() throws {
        #expect(inheritedTheme.spaces.spaceInsetTaller != abstractTheme.spaces.spaceInsetTaller)
        #expect(inheritedTheme.spaces.spaceInsetTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetTallest() throws {
        #expect(inheritedTheme.spaces.spaceInsetTallest != abstractTheme.spaces.spaceInsetTallest)
        #expect(inheritedTheme.spaces.spaceInsetTallest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetSpacious() throws {
        #expect(inheritedTheme.spaces.spaceInsetSpacious != abstractTheme.spaces.spaceInsetSpacious)
        #expect(inheritedTheme.spaces.spaceInsetSpacious == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap inline

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapNone() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapNone != abstractTheme.spaces.spaceColumnGapNone)
        #expect(inheritedTheme.spaces.spaceColumnGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapShorter() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapShorter != abstractTheme.spaces.spaceColumnGapShorter)
        #expect(inheritedTheme.spaces.spaceColumnGapShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapShort() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapShort != abstractTheme.spaces.spaceColumnGapShort)
        #expect(inheritedTheme.spaces.spaceColumnGapShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapMedium() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapMedium != abstractTheme.spaces.spaceColumnGapMedium)
        #expect(inheritedTheme.spaces.spaceColumnGapMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapTall() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapTall != abstractTheme.spaces.spaceColumnGapTall)
        #expect(inheritedTheme.spaces.spaceColumnGapTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapTaller() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapTaller != abstractTheme.spaces.spaceColumnGapTaller)
        #expect(inheritedTheme.spaces.spaceColumnGapTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap stack

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapNone() throws {
        #expect(inheritedTheme.spaces.spaceRowGapNone != abstractTheme.spaces.spaceRowGapNone)
        #expect(inheritedTheme.spaces.spaceRowGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapShortest() throws {
        #expect(inheritedTheme.spaces.spaceRowGapShortest != abstractTheme.spaces.spaceRowGapShortest)
        #expect(inheritedTheme.spaces.spaceRowGapShortest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapShorter() throws {
        #expect(inheritedTheme.spaces.spaceRowGapShorter != abstractTheme.spaces.spaceRowGapShorter)
        #expect(inheritedTheme.spaces.spaceRowGapShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapShort() throws {
        #expect(inheritedTheme.spaces.spaceRowGapShort != abstractTheme.spaces.spaceRowGapShort)
        #expect(inheritedTheme.spaces.spaceRowGapShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapMedium() throws {
        #expect(inheritedTheme.spaces.spaceRowGapMedium != abstractTheme.spaces.spaceRowGapMedium)
        #expect(inheritedTheme.spaces.spaceRowGapMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapTall() throws {
        #expect(inheritedTheme.spaces.spaceRowGapTall != abstractTheme.spaces.spaceRowGapTall)
        #expect(inheritedTheme.spaces.spaceRowGapTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable type_body_length
