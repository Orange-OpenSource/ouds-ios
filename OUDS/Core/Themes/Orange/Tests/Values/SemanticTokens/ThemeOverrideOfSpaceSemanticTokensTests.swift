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

import OUDSThemesContract
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
        #expect(inheritedTheme.spaces.fixedNone != abstractTheme.spaces.fixedNone)
        #expect(inheritedTheme.spaces.fixedNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed3xsmall() throws {
        #expect(inheritedTheme.spaces.fixed3xsmall != abstractTheme.spaces.fixed3xsmall)
        #expect(inheritedTheme.spaces.fixed3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed2xsmall() throws {
        #expect(inheritedTheme.spaces.fixed2xsmall != abstractTheme.spaces.fixed2xsmall)
        #expect(inheritedTheme.spaces.fixed2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedXsmall() throws {
        #expect(inheritedTheme.spaces.fixedXsmall != abstractTheme.spaces.fixedXsmall)
        #expect(inheritedTheme.spaces.fixedXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedSmall() throws {
        #expect(inheritedTheme.spaces.fixedSmall != abstractTheme.spaces.fixedSmall)
        #expect(inheritedTheme.spaces.fixedSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedMedium() throws {
        #expect(inheritedTheme.spaces.fixedMedium != abstractTheme.spaces.fixedMedium)
        #expect(inheritedTheme.spaces.fixedMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedLarge() throws {
        #expect(inheritedTheme.spaces.fixedLarge != abstractTheme.spaces.fixedLarge)
        #expect(inheritedTheme.spaces.fixedLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixedXlarge() throws {
        #expect(inheritedTheme.spaces.fixedXlarge != abstractTheme.spaces.fixedXlarge)
        #expect(inheritedTheme.spaces.fixedXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed2xlarge() throws {
        #expect(inheritedTheme.spaces.fixed2xlarge != abstractTheme.spaces.fixed2xlarge)
        #expect(inheritedTheme.spaces.fixed2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed3xlarge() throws {
        #expect(inheritedTheme.spaces.fixed3xlarge != abstractTheme.spaces.fixed3xlarge)
        #expect(inheritedTheme.spaces.fixed3xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed4xlarge() throws {
        #expect(inheritedTheme.spaces.fixed4xlarge != abstractTheme.spaces.fixed4xlarge)
        #expect(inheritedTheme.spaces.fixed4xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceFixed5xlarge() throws {
        #expect(inheritedTheme.spaces.fixed5xlarge != abstractTheme.spaces.fixed5xlarge)
        #expect(inheritedTheme.spaces.fixed5xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Layout fluid

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledNoneMobile() throws {
        #expect(inheritedTheme.spaces.scaledNoneMobile != abstractTheme.spaces.scaledNoneMobile)
        #expect(inheritedTheme.spaces.scaledNoneMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledNoneTablet() throws {
        #expect(inheritedTheme.spaces.scaledNoneTablet != abstractTheme.spaces.scaledNoneTablet)
        #expect(inheritedTheme.spaces.scaledNoneTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled3xsmallMobile() throws {
        #expect(inheritedTheme.spaces.scaled3xsmallMobile != abstractTheme.spaces.scaled3xsmallMobile)
        #expect(inheritedTheme.spaces.scaled3xsmallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled3xsmallTablet() throws {
        #expect(inheritedTheme.spaces.scaled3xsmallTablet != abstractTheme.spaces.scaled3xsmallTablet)
        #expect(inheritedTheme.spaces.scaled3xsmallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled2xsmallMobile() throws {
        #expect(inheritedTheme.spaces.scaled2xsmallMobile != abstractTheme.spaces.scaled2xsmallMobile)
        #expect(inheritedTheme.spaces.scaled2xsmallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled2xsmallTablet() throws {
        #expect(inheritedTheme.spaces.scaled2xsmallTablet != abstractTheme.spaces.scaled2xsmallTablet)
        #expect(inheritedTheme.spaces.scaled2xsmallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledXsmallMobile() throws {
        #expect(inheritedTheme.spaces.scaledXsmallMobile != abstractTheme.spaces.scaledXsmallMobile)
        #expect(inheritedTheme.spaces.scaledXsmallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledXsmallTablet() throws {
        #expect(inheritedTheme.spaces.scaledXsmallTablet != abstractTheme.spaces.scaledXsmallTablet)
        #expect(inheritedTheme.spaces.scaledXsmallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSmallMobile() throws {
        #expect(inheritedTheme.spaces.scaledSmallMobile != abstractTheme.spaces.scaledSmallMobile)
        #expect(inheritedTheme.spaces.scaledSmallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledSmallTablet() throws {
        #expect(inheritedTheme.spaces.scaledSmallTablet != abstractTheme.spaces.scaledSmallTablet)
        #expect(inheritedTheme.spaces.scaledSmallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledMediumMobile() throws {
        #expect(inheritedTheme.spaces.scaledMediumMobile != abstractTheme.spaces.scaledMediumMobile)
        #expect(inheritedTheme.spaces.scaledMediumMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledMediumTablet() throws {
        #expect(inheritedTheme.spaces.scaledMediumTablet != abstractTheme.spaces.scaledMediumTablet)
        #expect(inheritedTheme.spaces.scaledMediumTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledLargeMobile() throws {
        #expect(inheritedTheme.spaces.scaledLargeMobile != abstractTheme.spaces.scaledLargeMobile)
        #expect(inheritedTheme.spaces.scaledLargeMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledLargeTablet() throws {
        #expect(inheritedTheme.spaces.scaledLargeTablet != abstractTheme.spaces.scaledLargeTablet)
        #expect(inheritedTheme.spaces.scaledLargeTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledXlargeMobile() throws {
        #expect(inheritedTheme.spaces.scaledXlargeMobile != abstractTheme.spaces.scaledXlargeMobile)
        #expect(inheritedTheme.spaces.scaledXlargeMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaledXlargeTablet() throws {
        #expect(inheritedTheme.spaces.scaledXlargeTablet != abstractTheme.spaces.scaledXlargeTablet)
        #expect(inheritedTheme.spaces.scaledXlargeTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled2xlargeMobile() throws {
        #expect(inheritedTheme.spaces.scaled2xlargeMobile != abstractTheme.spaces.scaled2xlargeMobile)
        #expect(inheritedTheme.spaces.scaled2xlargeMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled2xlargeTablet() throws {
        #expect(inheritedTheme.spaces.scaled2xlargeTablet != abstractTheme.spaces.scaled2xlargeTablet)
        #expect(inheritedTheme.spaces.scaled2xlargeTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled3xlargeMobile() throws {
        #expect(inheritedTheme.spaces.scaled3xlargeMobile != abstractTheme.spaces.scaled3xlargeMobile)
        #expect(inheritedTheme.spaces.scaled3xlargeMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceScaled3xlargeTablet() throws {
        #expect(inheritedTheme.spaces.scaled3xlargeTablet != abstractTheme.spaces.scaled3xlargeTablet)
        #expect(inheritedTheme.spaces.scaled3xlargeTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inline

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineNone() throws {
        #expect(inheritedTheme.spaces.paddingInlineNone != abstractTheme.spaces.paddingInlineNone)
        #expect(inheritedTheme.spaces.paddingInlineNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInline4xs() throws {
        #expect(inheritedTheme.spaces.paddingInline4xsmall != abstractTheme.spaces.paddingInline4xsmall)
        #expect(inheritedTheme.spaces.paddingInline4xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInline3xs() throws {
        #expect(inheritedTheme.spaces.paddingInline3xsmall != abstractTheme.spaces.paddingInline3xsmall)
        #expect(inheritedTheme.spaces.paddingInline3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInline2xs() throws {
        #expect(inheritedTheme.spaces.paddingInline2xsmall != abstractTheme.spaces.paddingInline2xsmall)
        #expect(inheritedTheme.spaces.paddingInline2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineXs() throws {
        #expect(inheritedTheme.spaces.paddingInlineXsmall != abstractTheme.spaces.paddingInlineXsmall)
        #expect(inheritedTheme.spaces.paddingInlineXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSmall() throws {
        #expect(inheritedTheme.spaces.paddingInlineSmall != abstractTheme.spaces.paddingInlineSmall)
        #expect(inheritedTheme.spaces.paddingInlineSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineMedium() throws {
        #expect(inheritedTheme.spaces.paddingInlineMedium != abstractTheme.spaces.paddingInlineMedium)
        #expect(inheritedTheme.spaces.paddingInlineMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTall() throws {
        #expect(inheritedTheme.spaces.paddingInlineLarge != abstractTheme.spaces.paddingInlineLarge)
        #expect(inheritedTheme.spaces.paddingInlineLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTaller() throws {
        #expect(inheritedTheme.spaces.paddingInlineXlarge != abstractTheme.spaces.paddingInlineXlarge)
        #expect(inheritedTheme.spaces.paddingInlineXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTallest() throws {
        #expect(inheritedTheme.spaces.paddingInline2xlarge != abstractTheme.spaces.paddingInline2xlarge)
        #expect(inheritedTheme.spaces.paddingInline2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSpacious() throws {
        #expect(inheritedTheme.spaces.paddingInline3xlarge != abstractTheme.spaces.paddingInline3xlarge)
        #expect(inheritedTheme.spaces.paddingInline3xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingInlineHuge() throws {
        #expect(inheritedTheme.spaces.paddingInline4xlarge != abstractTheme.spaces.paddingInline4xlarge)
        #expect(inheritedTheme.spaces.paddingInline4xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding stack

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockNone() throws {
        #expect(inheritedTheme.spaces.paddingBlockNone != abstractTheme.spaces.paddingBlockNone)
        #expect(inheritedTheme.spaces.paddingBlockNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock4xs() throws {
        #expect(inheritedTheme.spaces.paddingBlock4xsmall != abstractTheme.spaces.paddingBlock4xsmall)
        #expect(inheritedTheme.spaces.paddingBlock4xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock3xs() throws {
        #expect(inheritedTheme.spaces.paddingBlock3xsmall != abstractTheme.spaces.paddingBlock3xsmall)
        #expect(inheritedTheme.spaces.paddingBlock3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock2xs() throws {
        #expect(inheritedTheme.spaces.paddingBlock2xsmall != abstractTheme.spaces.paddingBlock2xsmall)
        #expect(inheritedTheme.spaces.paddingBlock2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockXs() throws {
        #expect(inheritedTheme.spaces.paddingBlockXsmall != abstractTheme.spaces.paddingBlockXsmall)
        #expect(inheritedTheme.spaces.paddingBlockXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockSmall() throws {
        #expect(inheritedTheme.spaces.paddingBlockSmall != abstractTheme.spaces.paddingBlockSmall)
        #expect(inheritedTheme.spaces.paddingBlockSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockMedium() throws {
        #expect(inheritedTheme.spaces.paddingBlockMedium != abstractTheme.spaces.paddingBlockMedium)
        #expect(inheritedTheme.spaces.paddingBlockMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockLg() throws {
        #expect(inheritedTheme.spaces.paddingBlockLarge != abstractTheme.spaces.paddingBlockLarge)
        #expect(inheritedTheme.spaces.paddingBlockLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlockXl() throws {
        #expect(inheritedTheme.spaces.paddingBlockXlarge != abstractTheme.spaces.paddingBlockXlarge)
        #expect(inheritedTheme.spaces.paddingBlockXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock2xl() throws {
        #expect(inheritedTheme.spaces.paddingBlock2xlarge != abstractTheme.spaces.paddingBlock2xlarge)
        #expect(inheritedTheme.spaces.paddingBlock2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock3xl() throws {
        #expect(inheritedTheme.spaces.paddingBlock3xlarge != abstractTheme.spaces.paddingBlock3xlarge)
        #expect(inheritedTheme.spaces.paddingBlock3xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpacePaddingBlock4xl() throws {
        #expect(inheritedTheme.spaces.paddingBlock4xlarge != abstractTheme.spaces.paddingBlock4xlarge)
        #expect(inheritedTheme.spaces.paddingBlock4xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inset

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetNone() throws {
        #expect(inheritedTheme.spaces.insetNone != abstractTheme.spaces.insetNone)
        #expect(inheritedTheme.spaces.insetNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset4xs() throws {
        #expect(inheritedTheme.spaces.inset4xsmall != abstractTheme.spaces.inset4xsmall)
        #expect(inheritedTheme.spaces.inset4xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset3xs() throws {
        #expect(inheritedTheme.spaces.inset3xsmall != abstractTheme.spaces.inset3xsmall)
        #expect(inheritedTheme.spaces.inset3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset2xs() throws {
        #expect(inheritedTheme.spaces.inset2xsmall != abstractTheme.spaces.inset2xsmall)
        #expect(inheritedTheme.spaces.inset2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetXs() throws {
        #expect(inheritedTheme.spaces.insetXsmall != abstractTheme.spaces.insetXsmall)
        #expect(inheritedTheme.spaces.insetXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetSm() throws {
        #expect(inheritedTheme.spaces.insetSmall != abstractTheme.spaces.insetSmall)
        #expect(inheritedTheme.spaces.insetSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetMd() throws {
        #expect(inheritedTheme.spaces.insetMedium != abstractTheme.spaces.insetMedium)
        #expect(inheritedTheme.spaces.insetMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetLg() throws {
        #expect(inheritedTheme.spaces.insetLarge != abstractTheme.spaces.insetLarge)
        #expect(inheritedTheme.spaces.insetLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInsetXl() throws {
        #expect(inheritedTheme.spaces.insetXlarge != abstractTheme.spaces.insetXlarge)
        #expect(inheritedTheme.spaces.insetXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset2xl() throws {
        #expect(inheritedTheme.spaces.inset2xlarge != abstractTheme.spaces.inset2xlarge)
        #expect(inheritedTheme.spaces.inset2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceInset3xl() throws {
        #expect(inheritedTheme.spaces.inset3xlarge != abstractTheme.spaces.inset3xlarge)
        #expect(inheritedTheme.spaces.inset3xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Column Gap

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapNone() throws {
        #expect(inheritedTheme.spaces.columnGapNone != abstractTheme.spaces.columnGapNone)
        #expect(inheritedTheme.spaces.columnGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGap3xs() throws {
        #expect(inheritedTheme.spaces.columnGap3xsmall != abstractTheme.spaces.columnGap3xsmall)
        #expect(inheritedTheme.spaces.columnGap3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGap2xs() throws {
        #expect(inheritedTheme.spaces.columnGap2xsmall != abstractTheme.spaces.columnGap2xsmall)
        #expect(inheritedTheme.spaces.columnGap2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapXs() throws {
        #expect(inheritedTheme.spaces.columnGapXsmall != abstractTheme.spaces.columnGapXsmall)
        #expect(inheritedTheme.spaces.columnGapXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapSm() throws {
        #expect(inheritedTheme.spaces.columnGapSmall != abstractTheme.spaces.columnGapSmall)
        #expect(inheritedTheme.spaces.columnGapSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapMd() throws {
        #expect(inheritedTheme.spaces.columnGapMedium != abstractTheme.spaces.columnGapMedium)
        #expect(inheritedTheme.spaces.columnGapMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapLg() throws {
        #expect(inheritedTheme.spaces.columnGapLarge != abstractTheme.spaces.columnGapLarge)
        #expect(inheritedTheme.spaces.columnGapLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGapXl() throws {
        #expect(inheritedTheme.spaces.columnGapXlarge != abstractTheme.spaces.columnGapXlarge)
        #expect(inheritedTheme.spaces.columnGapXlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceColumnGap2Xl() throws {
        #expect(inheritedTheme.spaces.columnGap2xlarge != abstractTheme.spaces.columnGap2xlarge)
        #expect(inheritedTheme.spaces.columnGap2xlarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Row Gap

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapNone() throws {
        #expect(inheritedTheme.spaces.rowGapNone != abstractTheme.spaces.rowGapNone)
        #expect(inheritedTheme.spaces.rowGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGap3xs() throws {
        #expect(inheritedTheme.spaces.rowGap3xsmall != abstractTheme.spaces.rowGap3xsmall)
        #expect(inheritedTheme.spaces.rowGap3xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGap2xs() throws {
        #expect(inheritedTheme.spaces.rowGap2xsmall != abstractTheme.spaces.rowGap2xsmall)
        #expect(inheritedTheme.spaces.rowGap2xsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapXs() throws {
        #expect(inheritedTheme.spaces.rowGapXsmall != abstractTheme.spaces.rowGapXsmall)
        #expect(inheritedTheme.spaces.rowGapXsmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapSm() throws {
        #expect(inheritedTheme.spaces.rowGapSmall != abstractTheme.spaces.rowGapSmall)
        #expect(inheritedTheme.spaces.rowGapSmall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapMd() throws {
        #expect(inheritedTheme.spaces.rowGapMedium != abstractTheme.spaces.rowGapMedium)
        #expect(inheritedTheme.spaces.rowGapMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenSpaceRowGapLg() throws {
        #expect(inheritedTheme.spaces.rowGapLarge != abstractTheme.spaces.rowGapLarge)
        #expect(inheritedTheme.spaces.rowGapLarge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable type_body_length
