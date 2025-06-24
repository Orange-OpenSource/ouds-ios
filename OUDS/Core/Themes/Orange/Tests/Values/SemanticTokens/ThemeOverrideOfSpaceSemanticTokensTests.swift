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

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixed3xs() throws {
        #expect(inheritedTheme.spaces.spaceFixed3xs != abstractTheme.spaces.spaceFixed3xs)
        #expect(inheritedTheme.spaces.spaceFixed3xs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixed2xs() throws {
        #expect(inheritedTheme.spaces.spaceFixed2xs != abstractTheme.spaces.spaceFixed2xs)
        #expect(inheritedTheme.spaces.spaceFixed2xs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixedXs() throws {
        #expect(inheritedTheme.spaces.spaceFixedXs != abstractTheme.spaces.spaceFixedXs)
        #expect(inheritedTheme.spaces.spaceFixedXs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixedSm() throws {
        #expect(inheritedTheme.spaces.spaceFixedSm != abstractTheme.spaces.spaceFixedSm)
        #expect(inheritedTheme.spaces.spaceFixedSm == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixedMd() throws {
        #expect(inheritedTheme.spaces.spaceFixedMd != abstractTheme.spaces.spaceFixedMd)
        #expect(inheritedTheme.spaces.spaceFixedMd == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixedLg() throws {
        #expect(inheritedTheme.spaces.spaceFixedLg != abstractTheme.spaces.spaceFixedLg)
        #expect(inheritedTheme.spaces.spaceFixedLg == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixedXl() throws {
        #expect(inheritedTheme.spaces.spaceFixedXl != abstractTheme.spaces.spaceFixedXl)
        #expect(inheritedTheme.spaces.spaceFixedXl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixed2xl() throws {
        #expect(inheritedTheme.spaces.spaceFixed2xl != abstractTheme.spaces.spaceFixed2xl)
        #expect(inheritedTheme.spaces.spaceFixed2xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixed3xl() throws {
        #expect(inheritedTheme.spaces.spaceFixed3xl != abstractTheme.spaces.spaceFixed3xl)
        #expect(inheritedTheme.spaces.spaceFixed3xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixed4xl() throws {
        #expect(inheritedTheme.spaces.spaceFixed4xl != abstractTheme.spaces.spaceFixed4xl)
        #expect(inheritedTheme.spaces.spaceFixed4xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceFixed5xl() throws {
        #expect(inheritedTheme.spaces.spaceFixed5xl != abstractTheme.spaces.spaceFixed5xl)
        #expect(inheritedTheme.spaces.spaceFixed5xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xsMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xsMobile != abstractTheme.spaces.spaceScaled3xsMobile)
        #expect(inheritedTheme.spaces.spaceScaled3xsMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xsTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xsTablet != abstractTheme.spaces.spaceScaled3xsTablet)
        #expect(inheritedTheme.spaces.spaceScaled3xsTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xsMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xsMobile != abstractTheme.spaces.spaceScaled2xsMobile)
        #expect(inheritedTheme.spaces.spaceScaled2xsMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xsTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xsTablet != abstractTheme.spaces.spaceScaled2xsTablet)
        #expect(inheritedTheme.spaces.spaceScaled2xsTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXsMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledXsMobile != abstractTheme.spaces.spaceScaledXsMobile)
        #expect(inheritedTheme.spaces.spaceScaledXsMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXsTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledXsTablet != abstractTheme.spaces.spaceScaledXsTablet)
        #expect(inheritedTheme.spaces.spaceScaledXsTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledSmMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledSmMobile != abstractTheme.spaces.spaceScaledSmMobile)
        #expect(inheritedTheme.spaces.spaceScaledSmMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledSmTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledSmTablet != abstractTheme.spaces.spaceScaledSmTablet)
        #expect(inheritedTheme.spaces.spaceScaledSmTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledMdMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledMdMobile != abstractTheme.spaces.spaceScaledMdMobile)
        #expect(inheritedTheme.spaces.spaceScaledMdMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledMdTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledMdTablet != abstractTheme.spaces.spaceScaledMdTablet)
        #expect(inheritedTheme.spaces.spaceScaledMdTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledLgMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledLgMobile != abstractTheme.spaces.spaceScaledLgMobile)
        #expect(inheritedTheme.spaces.spaceScaledLgMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledLgTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledLgTablet != abstractTheme.spaces.spaceScaledLgTablet)
        #expect(inheritedTheme.spaces.spaceScaledLgTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXlMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledXlMobile != abstractTheme.spaces.spaceScaledXlMobile)
        #expect(inheritedTheme.spaces.spaceScaledXlMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaledXlTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledXlTablet != abstractTheme.spaces.spaceScaledXlTablet)
        #expect(inheritedTheme.spaces.spaceScaledXlTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xlMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xlMobile != abstractTheme.spaces.spaceScaled2xlMobile)
        #expect(inheritedTheme.spaces.spaceScaled2xlMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled2xlTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xlTablet != abstractTheme.spaces.spaceScaled2xlTablet)
        #expect(inheritedTheme.spaces.spaceScaled2xlTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xlMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xlMobile != abstractTheme.spaces.spaceScaled3xlMobile)
        #expect(inheritedTheme.spaces.spaceScaled3xlMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenspaceScaled3xlTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xlTablet != abstractTheme.spaces.spaceScaled3xlTablet)
        #expect(inheritedTheme.spaces.spaceScaled3xlTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
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

    // MARK: - Semantic token - Spacing - Padding - Column Gap

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

    // MARK: - Semantic token - Spacing - Padding - Row Gap

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
