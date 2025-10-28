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
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols dimensionspacing semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeSpaceSemanticTokensProvider``.
///
/// **These tests checks if any dimensionspaceemantic tokens_ can be surcharged by a child theme**
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

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed3xsmall() throws {
        #expect(inheritedTheme.spaces.spaceFixed3xsmall != abstractTheme.spaces.spaceFixed3xsmall)
        #expect(inheritedTheme.spaces.spaceFixed3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed2xsmall() throws {
        #expect(inheritedTheme.spaces.spaceFixed2xsmall != abstractTheme.spaces.spaceFixed2xsmall)
        #expect(inheritedTheme.spaces.spaceFixed2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedXsmall() throws {
        #expect(inheritedTheme.spaces.spaceFixedXsmall != abstractTheme.spaces.spaceFixedXsmall)
        #expect(inheritedTheme.spaces.spaceFixedXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedSmall() throws {
        #expect(inheritedTheme.spaces.spaceFixedSmall != abstractTheme.spaces.spaceFixedSmall)
        #expect(inheritedTheme.spaces.spaceFixedSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedMedium() throws {
        #expect(inheritedTheme.spaces.spaceFixedMedium != abstractTheme.spaces.spaceFixedMedium)
        #expect(inheritedTheme.spaces.spaceFixedMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedLarge() throws {
        #expect(inheritedTheme.spaces.spaceFixedLarge != abstractTheme.spaces.spaceFixedLarge)
        #expect(inheritedTheme.spaces.spaceFixedLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedXlarge() throws {
        #expect(inheritedTheme.spaces.spaceFixedXlarge != abstractTheme.spaces.spaceFixedXlarge)
        #expect(inheritedTheme.spaces.spaceFixedXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed2xlarge() throws {
        #expect(inheritedTheme.spaces.spaceFixed2xlarge != abstractTheme.spaces.spaceFixed2xlarge)
        #expect(inheritedTheme.spaces.spaceFixed2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed3xlarge() throws {
        #expect(inheritedTheme.spaces.spaceFixed3xlarge != abstractTheme.spaces.spaceFixed3xlarge)
        #expect(inheritedTheme.spaces.spaceFixed3xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed4xlarge() throws {
        #expect(inheritedTheme.spaces.spaceFixed4xlarge != abstractTheme.spaces.spaceFixed4xlarge)
        #expect(inheritedTheme.spaces.spaceFixed4xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed5xlarge() throws {
        #expect(inheritedTheme.spaces.spaceFixed5xlarge != abstractTheme.spaces.spaceFixed5xlarge)
        #expect(inheritedTheme.spaces.spaceFixed5xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
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

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled3xsmallMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xsmallMobile != abstractTheme.spaces.spaceScaled3xsmallMobile)
        #expect(inheritedTheme.spaces.spaceScaled3xsmallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled3xsmallTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xsmallTablet != abstractTheme.spaces.spaceScaled3xsmallTablet)
        #expect(inheritedTheme.spaces.spaceScaled3xsmallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled2xsmallMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xsmallMobile != abstractTheme.spaces.spaceScaled2xsmallMobile)
        #expect(inheritedTheme.spaces.spaceScaled2xsmallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled2xsmallTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xsmallTablet != abstractTheme.spaces.spaceScaled2xsmallTablet)
        #expect(inheritedTheme.spaces.spaceScaled2xsmallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledXsmallMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledXsmallMobile != abstractTheme.spaces.spaceScaledXsmallMobile)
        #expect(inheritedTheme.spaces.spaceScaledXsmallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledXsmallTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledXsmallTablet != abstractTheme.spaces.spaceScaledXsmallTablet)
        #expect(inheritedTheme.spaces.spaceScaledXsmallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSmallMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledSmallMobile != abstractTheme.spaces.spaceScaledSmallMobile)
        #expect(inheritedTheme.spaces.spaceScaledSmallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSmallTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledSmallTablet != abstractTheme.spaces.spaceScaledSmallTablet)
        #expect(inheritedTheme.spaces.spaceScaledSmallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledMediumMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledMediumMobile != abstractTheme.spaces.spaceScaledMediumMobile)
        #expect(inheritedTheme.spaces.spaceScaledMediumMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledMediumTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledMediumTablet != abstractTheme.spaces.spaceScaledMediumTablet)
        #expect(inheritedTheme.spaces.spaceScaledMediumTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledLargeMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledLargeMobile != abstractTheme.spaces.spaceScaledLargeMobile)
        #expect(inheritedTheme.spaces.spaceScaledLargeMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledLargeTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledLargeTablet != abstractTheme.spaces.spaceScaledLargeTablet)
        #expect(inheritedTheme.spaces.spaceScaledLargeTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledXlargeMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaledXlargeMobile != abstractTheme.spaces.spaceScaledXlargeMobile)
        #expect(inheritedTheme.spaces.spaceScaledXlargeMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledXlargeTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaledXlargeTablet != abstractTheme.spaces.spaceScaledXlargeTablet)
        #expect(inheritedTheme.spaces.spaceScaledXlargeTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled2xlargeMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xlargeMobile != abstractTheme.spaces.spaceScaled2xlargeMobile)
        #expect(inheritedTheme.spaces.spaceScaled2xlargeMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled2xlargeTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaled2xlargeTablet != abstractTheme.spaces.spaceScaled2xlargeTablet)
        #expect(inheritedTheme.spaces.spaceScaled2xlargeTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled3xlargeMobile() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xlargeMobile != abstractTheme.spaces.spaceScaled3xlargeMobile)
        #expect(inheritedTheme.spaces.spaceScaled3xlargeMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled3xlargeTablet() throws {
        #expect(inheritedTheme.spaces.spaceScaled3xlargeTablet != abstractTheme.spaces.spaceScaled3xlargeTablet)
        #expect(inheritedTheme.spaces.spaceScaled3xlargeTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inline

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineNone() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineNone != abstractTheme.spaces.spacePaddingInlineNone)
        #expect(inheritedTheme.spaces.spacePaddingInlineNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInline4xs() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline4xsmall != abstractTheme.spaces.spacePaddingInline4xsmall)
        #expect(inheritedTheme.spaces.spacePaddingInline4xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInline3xs() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline3xsmall != abstractTheme.spaces.spacePaddingInline3xsmall)
        #expect(inheritedTheme.spaces.spacePaddingInline3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInline2xs() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline2xsmall != abstractTheme.spaces.spacePaddingInline2xsmall)
        #expect(inheritedTheme.spaces.spacePaddingInline2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineXs() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineXsmall != abstractTheme.spaces.spacePaddingInlineXsmall)
        #expect(inheritedTheme.spaces.spacePaddingInlineXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSmall() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineSmall != abstractTheme.spaces.spacePaddingInlineSmall)
        #expect(inheritedTheme.spaces.spacePaddingInlineSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineMedium() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineMedium != abstractTheme.spaces.spacePaddingInlineMedium)
        #expect(inheritedTheme.spaces.spacePaddingInlineMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTall() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineLarge != abstractTheme.spaces.spacePaddingInlineLarge)
        #expect(inheritedTheme.spaces.spacePaddingInlineLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTaller() throws {
        #expect(inheritedTheme.spaces.spacePaddingInlineXlarge != abstractTheme.spaces.spacePaddingInlineXlarge)
        #expect(inheritedTheme.spaces.spacePaddingInlineXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTallest() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline2xlarge != abstractTheme.spaces.spacePaddingInline2xlarge)
        #expect(inheritedTheme.spaces.spacePaddingInline2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSpacious() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline3xlarge != abstractTheme.spaces.spacePaddingInline3xlarge)
        #expect(inheritedTheme.spaces.spacePaddingInline3xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineHuge() throws {
        #expect(inheritedTheme.spaces.spacePaddingInline4xlarge != abstractTheme.spaces.spacePaddingInline4xlarge)
        #expect(inheritedTheme.spaces.spacePaddingInline4xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding stack

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockNone() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockNone != abstractTheme.spaces.spacePaddingBlockNone)
        #expect(inheritedTheme.spaces.spacePaddingBlockNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock4xs() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlock4xsmall != abstractTheme.spaces.spacePaddingBlock4xsmall)
        #expect(inheritedTheme.spaces.spacePaddingBlock4xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock3xs() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlock3xsmall != abstractTheme.spaces.spacePaddingBlock3xsmall)
        #expect(inheritedTheme.spaces.spacePaddingBlock3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock2xs() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlock2xsmall != abstractTheme.spaces.spacePaddingBlock2xsmall)
        #expect(inheritedTheme.spaces.spacePaddingBlock2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockXs() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockXsmall != abstractTheme.spaces.spacePaddingBlockXsmall)
        #expect(inheritedTheme.spaces.spacePaddingBlockXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockSmall() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockSmall != abstractTheme.spaces.spacePaddingBlockSmall)
        #expect(inheritedTheme.spaces.spacePaddingBlockSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockMedium() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockMedium != abstractTheme.spaces.spacePaddingBlockMedium)
        #expect(inheritedTheme.spaces.spacePaddingBlockMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockLg() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockLarge != abstractTheme.spaces.spacePaddingBlockLarge)
        #expect(inheritedTheme.spaces.spacePaddingBlockLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockXl() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlockXlarge != abstractTheme.spaces.spacePaddingBlockXlarge)
        #expect(inheritedTheme.spaces.spacePaddingBlockXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock2xl() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlock2xlarge != abstractTheme.spaces.spacePaddingBlock2xlarge)
        #expect(inheritedTheme.spaces.spacePaddingBlock2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock3xl() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlock3xlarge != abstractTheme.spaces.spacePaddingBlock3xlarge)
        #expect(inheritedTheme.spaces.spacePaddingBlock3xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock4xl() throws {
        #expect(inheritedTheme.spaces.spacePaddingBlock4xlarge != abstractTheme.spaces.spacePaddingBlock4xlarge)
        #expect(inheritedTheme.spaces.spacePaddingBlock4xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inset

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetNone() throws {
        #expect(inheritedTheme.spaces.spaceInsetNone != abstractTheme.spaces.spaceInsetNone)
        #expect(inheritedTheme.spaces.spaceInsetNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset4xs() throws {
        #expect(inheritedTheme.spaces.spaceInset4xsmall != abstractTheme.spaces.spaceInset4xsmall)
        #expect(inheritedTheme.spaces.spaceInset4xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset3xs() throws {
        #expect(inheritedTheme.spaces.spaceInset3xsmall != abstractTheme.spaces.spaceInset3xsmall)
        #expect(inheritedTheme.spaces.spaceInset3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset2xs() throws {
        #expect(inheritedTheme.spaces.spaceInset2xsmall != abstractTheme.spaces.spaceInset2xsmall)
        #expect(inheritedTheme.spaces.spaceInset2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetXs() throws {
        #expect(inheritedTheme.spaces.spaceInsetXsmall != abstractTheme.spaces.spaceInsetXsmall)
        #expect(inheritedTheme.spaces.spaceInsetXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetSm() throws {
        #expect(inheritedTheme.spaces.spaceInsetSmall != abstractTheme.spaces.spaceInsetSmall)
        #expect(inheritedTheme.spaces.spaceInsetSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetMd() throws {
        #expect(inheritedTheme.spaces.spaceInsetMedium != abstractTheme.spaces.spaceInsetMedium)
        #expect(inheritedTheme.spaces.spaceInsetMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetLg() throws {
        #expect(inheritedTheme.spaces.spaceInsetLarge != abstractTheme.spaces.spaceInsetLarge)
        #expect(inheritedTheme.spaces.spaceInsetLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetXl() throws {
        #expect(inheritedTheme.spaces.spaceInsetXlarge != abstractTheme.spaces.spaceInsetXlarge)
        #expect(inheritedTheme.spaces.spaceInsetXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset2xl() throws {
        #expect(inheritedTheme.spaces.spaceInset2xlarge != abstractTheme.spaces.spaceInset2xlarge)
        #expect(inheritedTheme.spaces.spaceInset2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset3xl() throws {
        #expect(inheritedTheme.spaces.spaceInset3xlarge != abstractTheme.spaces.spaceInset3xlarge)
        #expect(inheritedTheme.spaces.spaceInset3xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Column Gap

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapNone() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapNone != abstractTheme.spaces.spaceColumnGapNone)
        #expect(inheritedTheme.spaces.spaceColumnGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGap3xs() throws {
        #expect(inheritedTheme.spaces.spaceColumnGap3xsmall != abstractTheme.spaces.spaceColumnGap3xsmall)
        #expect(inheritedTheme.spaces.spaceColumnGap3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGap2xs() throws {
        #expect(inheritedTheme.spaces.spaceColumnGap2xsmall != abstractTheme.spaces.spaceColumnGap2xsmall)
        #expect(inheritedTheme.spaces.spaceColumnGap2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapXs() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapXsmall != abstractTheme.spaces.spaceColumnGapXsmall)
        #expect(inheritedTheme.spaces.spaceColumnGapXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapSm() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapSmall != abstractTheme.spaces.spaceColumnGapSmall)
        #expect(inheritedTheme.spaces.spaceColumnGapSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapMd() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapMedium != abstractTheme.spaces.spaceColumnGapMedium)
        #expect(inheritedTheme.spaces.spaceColumnGapMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapLg() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapLarge != abstractTheme.spaces.spaceColumnGapLarge)
        #expect(inheritedTheme.spaces.spaceColumnGapLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapXl() throws {
        #expect(inheritedTheme.spaces.spaceColumnGapXlarge != abstractTheme.spaces.spaceColumnGapXlarge)
        #expect(inheritedTheme.spaces.spaceColumnGapXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGap2Xl() throws {
        #expect(inheritedTheme.spaces.spaceColumnGap2xlarge != abstractTheme.spaces.spaceColumnGap2xlarge)
        #expect(inheritedTheme.spaces.spaceColumnGap2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Row Gap

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapNone() throws {
        #expect(inheritedTheme.spaces.spaceRowGapNone != abstractTheme.spaces.spaceRowGapNone)
        #expect(inheritedTheme.spaces.spaceRowGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGap3xs() throws {
        #expect(inheritedTheme.spaces.spaceRowGap3xsmall != abstractTheme.spaces.spaceRowGap3xsmall)
        #expect(inheritedTheme.spaces.spaceRowGap3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGap2xs() throws {
        #expect(inheritedTheme.spaces.spaceRowGap2xsmall != abstractTheme.spaces.spaceRowGap2xsmall)
        #expect(inheritedTheme.spaces.spaceRowGap2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapXs() throws {
        #expect(inheritedTheme.spaces.spaceRowGapXsmall != abstractTheme.spaces.spaceRowGapXsmall)
        #expect(inheritedTheme.spaces.spaceRowGapXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapSm() throws {
        #expect(inheritedTheme.spaces.spaceRowGapSmall != abstractTheme.spaces.spaceRowGapSmall)
        #expect(inheritedTheme.spaces.spaceRowGapSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapMd() throws {
        #expect(inheritedTheme.spaces.spaceRowGapMedium != abstractTheme.spaces.spaceRowGapMedium)
        #expect(inheritedTheme.spaces.spaceRowGapMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapLg() throws {
        #expect(inheritedTheme.spaces.spaceRowGapLarge != abstractTheme.spaces.spaceRowGapLarge)
        #expect(inheritedTheme.spaces.spaceRowGapLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable type_body_length
