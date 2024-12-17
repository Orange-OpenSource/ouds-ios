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
import XCTest

// swiftlint:disable type_body_length
// swiftlint:disable required_deinit
// swiftlint:disable implicitly_unwrapped_optional

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _spacing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// 
/// **These tests checks if any _spaceemantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
final class TestThemeOverrideOfSpaceSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Spacing - Layout fix

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedNone, abstractTheme.spaces.spaceFixedNone)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedSmash, abstractTheme.spaces.spaceFixedSmash)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedSmash == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedShortest, abstractTheme.spaces.spaceFixedShortest)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedShortest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedShorter, abstractTheme.spaces.spaceFixedShorter)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedShort, abstractTheme.spaces.spaceFixedShort)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedMedium, abstractTheme.spaces.spaceFixedMedium)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedTall, abstractTheme.spaces.spaceFixedTall)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedTaller, abstractTheme.spaces.spaceFixedTaller)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedTallest, abstractTheme.spaces.spaceFixedTallest)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedTallest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedSpacious, abstractTheme.spaces.spaceFixedSpacious)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedSpacious == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedHuge() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedHuge, abstractTheme.spaces.spaceFixedHuge)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedHuge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedJumbo() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedJumbo, abstractTheme.spaces.spaceFixedJumbo)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedJumbo == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Layout fluid

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledNoneMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledNoneMobile, abstractTheme.spaces.spaceScaledNoneMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledNoneMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledNoneTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledNoneTablet, abstractTheme.spaces.spaceScaledNoneTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledNoneTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSmashMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSmashMobile, abstractTheme.spaces.spaceScaledSmashMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSmashMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSmashTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSmashTablet, abstractTheme.spaces.spaceScaledSmashTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSmashTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortestMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShortestMobile, abstractTheme.spaces.spaceScaledShortestMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShortestMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortestTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShortestTablet, abstractTheme.spaces.spaceScaledShortestTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShortestTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShorterMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShorterMobile, abstractTheme.spaces.spaceScaledShorterMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShorterMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShorterTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShorterTablet, abstractTheme.spaces.spaceScaledShorterTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShorterTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShortMobile, abstractTheme.spaces.spaceScaledShortMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShortMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShortTablet, abstractTheme.spaces.spaceScaledShortTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShortTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledMediumMobile, abstractTheme.spaces.spaceScaledMediumMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledMediumMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledMediumTablet, abstractTheme.spaces.spaceScaledMediumTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledMediumTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallMobile, abstractTheme.spaces.spaceScaledTallMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallTablet, abstractTheme.spaces.spaceScaledTallTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallerMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallerMobile, abstractTheme.spaces.spaceScaledTallerMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallerMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallerTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallerTablet, abstractTheme.spaces.spaceScaledTallerTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallerTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallestMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallestMobile, abstractTheme.spaces.spaceScaledTallestMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallestMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallestTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallestTablet, abstractTheme.spaces.spaceScaledTallestTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallestTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSpaciousMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSpaciousMobile, abstractTheme.spaces.spaceScaledSpaciousMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSpaciousMobile == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSpaciousTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSpaciousTablet, abstractTheme.spaces.spaceScaledSpaciousTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSpaciousTablet == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inline

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineNone, abstractTheme.spaces.spacePaddingInlineNone)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineSmash, abstractTheme.spaces.spacePaddingInlineSmash)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineSmash == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineShortest, abstractTheme.spaces.spacePaddingInlineShortest)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineShortest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineShorter, abstractTheme.spaces.spacePaddingInlineShorter)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineShort, abstractTheme.spaces.spacePaddingInlineShort)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineMedium, abstractTheme.spaces.spacePaddingInlineMedium)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineTall, abstractTheme.spaces.spacePaddingInlineTall)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineTaller, abstractTheme.spaces.spacePaddingInlineTaller)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineTallest, abstractTheme.spaces.spacePaddingInlineTallest)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineTallest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineSpacious, abstractTheme.spaces.spacePaddingInlineSpacious)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineSpacious == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineHuge() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineHuge, abstractTheme.spaces.spacePaddingInlineHuge)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineHuge == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding stack

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockNone, abstractTheme.spaces.spacePaddingBlockNone)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockShorter, abstractTheme.spaces.spacePaddingBlockShorter)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockShort, abstractTheme.spaces.spacePaddingBlockShort)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockMedium, abstractTheme.spaces.spacePaddingBlockMedium)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockTall, abstractTheme.spaces.spacePaddingBlockTall)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockTaller, abstractTheme.spaces.spacePaddingBlockTaller)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockTallest, abstractTheme.spaces.spacePaddingBlockTallest)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockTallest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inset

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetNone, abstractTheme.spaces.spaceInsetNone)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetSmash, abstractTheme.spaces.spaceInsetSmash)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetSmash == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetShortest, abstractTheme.spaces.spaceInsetShortest)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetShortest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetShorter, abstractTheme.spaces.spaceInsetShorter)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetShort, abstractTheme.spaces.spaceInsetShort)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetMedium, abstractTheme.spaces.spaceInsetMedium)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetTall, abstractTheme.spaces.spaceInsetTall)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetTaller, abstractTheme.spaces.spaceInsetTaller)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetTallest, abstractTheme.spaces.spaceInsetTallest)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetTallest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetSpacious, abstractTheme.spaces.spaceInsetSpacious)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetSpacious == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap inline

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapNone, abstractTheme.spaces.spaceColumnGapNone)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapShorter, abstractTheme.spaces.spaceColumnGapShorter)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapShort, abstractTheme.spaces.spaceColumnGapShort)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapMedium, abstractTheme.spaces.spaceColumnGapMedium)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapTall, abstractTheme.spaces.spaceColumnGapTall)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapTaller, abstractTheme.spaces.spaceColumnGapTaller)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapTaller == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap stack

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapNone, abstractTheme.spaces.spaceRowGapNone)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapNone == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapShortest, abstractTheme.spaces.spaceRowGapShortest)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapShortest == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapShorter, abstractTheme.spaces.spaceRowGapShorter)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapShorter == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapShort, abstractTheme.spaces.spaceRowGapShort)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapShort == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapMedium, abstractTheme.spaces.spaceRowGapMedium)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapMedium == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapTall, abstractTheme.spaces.spaceRowGapTall)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapTall == MockThemeSpaceSemanticTokensProvider.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
