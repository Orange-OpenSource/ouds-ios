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

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInline4xs() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline4xs != abstractTheme.spaces.spacePaddingInline4xs)
        #expect(inheritedTheme.spaces.spacePaddingInline4xs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInline3xs() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline3xs != abstractTheme.spaces.spacePaddingInline3xs)
        #expect(inheritedTheme.spaces.spacePaddingInline3xs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInline2xs() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline2xs != abstractTheme.spaces.spacePaddingInline2xs)
        #expect(inheritedTheme.spaces.spacePaddingInline2xs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineXs() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineXs != abstractTheme.spaces.spacePaddingInlineXs)
        #expect(inheritedTheme.spaces.spacePaddingInlineXs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSm() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineSm != abstractTheme.spaces.spacePaddingInlineSm)
        #expect(inheritedTheme.spaces.spacePaddingInlineSm == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineMedium() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineMd != abstractTheme.spaces.spacePaddingInlineMd)
        #expect(inheritedTheme.spaces.spacePaddingInlineMd == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTall() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineLg != abstractTheme.spaces.spacePaddingInlineLg)
        #expect(inheritedTheme.spaces.spacePaddingInlineLg == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTaller() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineXl != abstractTheme.spaces.spacePaddingInlineXl)
        #expect(inheritedTheme.spaces.spacePaddingInlineXl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTallest() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline2xl != abstractTheme.spaces.spacePaddingInline2xl)
        #expect(inheritedTheme.spaces.spacePaddingInline2xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSpacious() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline3xl != abstractTheme.spaces.spacePaddingInline3xl)
        #expect(inheritedTheme.spaces.spacePaddingInline3xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineHuge() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline4xl != abstractTheme.spaces.spacePaddingInline4xl)
        #expect(inheritedTheme.spaces.spacePaddingInline4xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding stack

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockNone() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockNone != abstractTheme.spaces.spacePaddingBlockNone)
        #expect(inheritedTheme.spaces.spacePaddingBlockNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockXs() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockXs != abstractTheme.spaces.spacePaddingBlockXs)
        #expect(inheritedTheme.spaces.spacePaddingBlockXs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockSm() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockSm != abstractTheme.spaces.spacePaddingBlockSm)
        #expect(inheritedTheme.spaces.spacePaddingBlockSm == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockMedium() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockMd != abstractTheme.spaces.spacePaddingBlockMd)
        #expect(inheritedTheme.spaces.spacePaddingBlockMd == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTall() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockLg != abstractTheme.spaces.spacePaddingBlockLg)
        #expect(inheritedTheme.spaces.spacePaddingBlockLg == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTaller() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockXl != abstractTheme.spaces.spacePaddingBlockXl)
        #expect(inheritedTheme.spaces.spacePaddingBlockXl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTallest() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlock2xl != abstractTheme.spaces.spacePaddingBlock2xl)
        #expect(inheritedTheme.spaces.spacePaddingBlock2xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inset

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetNone() throws {
        #expect(inheritedTheme.spaces.spaceInsetNone != abstractTheme.spaces.spaceInsetNone)
        #expect(inheritedTheme.spaces.spaceInsetNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset4xs() throws {
        #expect(inheritedTheme.spaces.spaceInset4xs != abstractTheme.spaces.spaceInset4xs)
        #expect(inheritedTheme.spaces.spaceInset4xs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset3xs() throws {
        #expect(inheritedTheme.spaces.spaceInset3xs != abstractTheme.spaces.spaceInset3xs)
        #expect(inheritedTheme.spaces.spaceInset3xs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset2xs() throws {
        #expect(inheritedTheme.spaces.spaceInset2xs != abstractTheme.spaces.spaceInset2xs)
        #expect(inheritedTheme.spaces.spaceInset2xs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetXs() throws {
        #expect(inheritedTheme.spaces.spaceInsetXs != abstractTheme.spaces.spaceInsetXs)
        #expect(inheritedTheme.spaces.spaceInsetXs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetSm() throws {
        #expect(inheritedTheme.spaces.spaceInsetSm != abstractTheme.spaces.spaceInsetSm)
        #expect(inheritedTheme.spaces.spaceInsetSm == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetMedium() throws {
        #expect(inheritedTheme.spaces.spaceInsetMd != abstractTheme.spaces.spaceInsetMd)
        #expect(inheritedTheme.spaces.spaceInsetMd == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetTall() throws {
        #expect(inheritedTheme.spaces.spaceInsetLg != abstractTheme.spaces.spaceInsetLg)
        #expect(inheritedTheme.spaces.spaceInsetLg == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetTaller() throws {
        #expect(inheritedTheme.spaces.spaceInsetXl != abstractTheme.spaces.spaceInsetXl)
        #expect(inheritedTheme.spaces.spaceInsetXl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetTallest() throws {
        #expect(inheritedTheme.spaces.spaceInset2xl != abstractTheme.spaces.spaceInset2xl)
        #expect(inheritedTheme.spaces.spaceInset2xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetSpacious() throws {
        #expect(inheritedTheme.spaces.spaceInset3xl != abstractTheme.spaces.spaceInset3xl)
        #expect(inheritedTheme.spaces.spaceInset3xl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Column Gap

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapNone() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapNone != abstractTheme.spaces.spaceColumnGapNone)
        #expect(inheritedTheme.spaces.spaceColumnGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapXs() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapXs != abstractTheme.spaces.spaceColumnGapXs)
        #expect(inheritedTheme.spaces.spaceColumnGapXs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapSm() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapSm != abstractTheme.spaces.spaceColumnGapSm)
        #expect(inheritedTheme.spaces.spaceColumnGapSm == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapMedium() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapMd != abstractTheme.spaces.spaceColumnGapMd)
        #expect(inheritedTheme.spaces.spaceColumnGapMd == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapTall() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapLg != abstractTheme.spaces.spaceColumnGapLg)
        #expect(inheritedTheme.spaces.spaceColumnGapLg == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapTaller() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapXl != abstractTheme.spaces.spaceColumnGapXl)
        #expect(inheritedTheme.spaces.spaceColumnGapXl == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Row Gap

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapNone() throws {
        #expect(inheritedTheme.spaces.spaceRowGapNone != abstractTheme.spaces.spaceRowGapNone)
        #expect(inheritedTheme.spaces.spaceRowGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGap2xs() throws {
        #expect(inheritedTheme.spaces.spaceRowGap2xs != abstractTheme.spaces.spaceRowGap2xs)
        #expect(inheritedTheme.spaces.spaceRowGap2xs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapXs() throws {
        #expect(inheritedTheme.spaces.spaceRowGapXs != abstractTheme.spaces.spaceRowGapXs)
        #expect(inheritedTheme.spaces.spaceRowGapXs == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapSm() throws {
        #expect(inheritedTheme.spaces.spaceRowGapSm != abstractTheme.spaces.spaceRowGapSm)
        #expect(inheritedTheme.spaces.spaceRowGapSm == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapMedium() throws {
        #expect(inheritedTheme.spaces.spaceRowGapMd != abstractTheme.spaces.spaceRowGapMd)
        #expect(inheritedTheme.spaces.spaceRowGapMd == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapTall() throws {
        #expect(inheritedTheme.spaces.spaceRowGapLg != abstractTheme.spaces.spaceRowGapLg)
        #expect(inheritedTheme.spaces.spaceRowGapLg == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable type_body_length
