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
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedNone == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedSmash, abstractTheme.spaces.spaceFixedSmash)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedSmash == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedShortest, abstractTheme.spaces.spaceFixedShortest)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedShortest == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedShorter, abstractTheme.spaces.spaceFixedShorter)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedShorter == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedShort, abstractTheme.spaces.spaceFixedShort)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedShort == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedMedium, abstractTheme.spaces.spaceFixedMedium)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedMedium == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedTall, abstractTheme.spaces.spaceFixedTall)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedTall == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedTaller, abstractTheme.spaces.spaceFixedTaller)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedTaller == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedTallest, abstractTheme.spaces.spaceFixedTallest)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedTallest == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedSpacious, abstractTheme.spaces.spaceFixedSpacious)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedSpacious == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedHuge() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedHuge, abstractTheme.spaces.spaceFixedHuge)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedHuge == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedJumbo() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceFixedJumbo, abstractTheme.spaces.spaceFixedJumbo)
        XCTAssertTrue(inheritedTheme.spaces.spaceFixedJumbo == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Layout fluid

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledNoneMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledNoneMobile, abstractTheme.spaces.spaceScaledNoneMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledNoneMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledNoneTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledNoneTablet, abstractTheme.spaces.spaceScaledNoneTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledNoneTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSmashMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSmashMobile, abstractTheme.spaces.spaceScaledSmashMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSmashMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSmashTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSmashTablet, abstractTheme.spaces.spaceScaledSmashTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSmashTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortestMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShortestMobile, abstractTheme.spaces.spaceScaledShortestMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShortestMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortestTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShortestTablet, abstractTheme.spaces.spaceScaledShortestTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShortestTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShorterMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShorterMobile, abstractTheme.spaces.spaceScaledShorterMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShorterMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShorterTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShorterTablet, abstractTheme.spaces.spaceScaledShorterTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShorterTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShortMobile, abstractTheme.spaces.spaceScaledShortMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShortMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledShortTablet, abstractTheme.spaces.spaceScaledShortTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledShortTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledMediumMobile, abstractTheme.spaces.spaceScaledMediumMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledMediumMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledMediumTablet, abstractTheme.spaces.spaceScaledMediumTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledMediumTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallMobile, abstractTheme.spaces.spaceScaledTallMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallTablet, abstractTheme.spaces.spaceScaledTallTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallerMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallerMobile, abstractTheme.spaces.spaceScaledTallerMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallerMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallerTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallerTablet, abstractTheme.spaces.spaceScaledTallerTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallerTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallestMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallestMobile, abstractTheme.spaces.spaceScaledTallestMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallestMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallestTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledTallestTablet, abstractTheme.spaces.spaceScaledTallestTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledTallestTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSpaciousMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSpaciousMobile, abstractTheme.spaces.spaceScaledSpaciousMobile)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSpaciousMobile == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSpaciousTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceScaledSpaciousTablet, abstractTheme.spaces.spaceScaledSpaciousTablet)
        XCTAssertTrue(inheritedTheme.spaces.spaceScaledSpaciousTablet == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inline

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineNone, abstractTheme.spaces.spacePaddingInlineNone)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineNone == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineSmash, abstractTheme.spaces.spacePaddingInlineSmash)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineSmash == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineShortest, abstractTheme.spaces.spacePaddingInlineShortest)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineShortest == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineShorter, abstractTheme.spaces.spacePaddingInlineShorter)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineShorter == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineShort, abstractTheme.spaces.spacePaddingInlineShort)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineShort == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineMedium, abstractTheme.spaces.spacePaddingInlineMedium)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineMedium == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineTall, abstractTheme.spaces.spacePaddingInlineTall)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineTall == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineTaller, abstractTheme.spaces.spacePaddingInlineTaller)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineTaller == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineTallest, abstractTheme.spaces.spacePaddingInlineTallest)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineTallest == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineSpacious, abstractTheme.spaces.spacePaddingInlineSpacious)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineSpacious == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineHuge() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingInlineHuge, abstractTheme.spaces.spacePaddingInlineHuge)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingInlineHuge == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding stack

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockNone, abstractTheme.spaces.spacePaddingBlockNone)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockNone == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockShorter, abstractTheme.spaces.spacePaddingBlockShorter)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockShorter == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockShort, abstractTheme.spaces.spacePaddingBlockShort)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockShort == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockMedium, abstractTheme.spaces.spacePaddingBlockMedium)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockMedium == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockTall, abstractTheme.spaces.spacePaddingBlockTall)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockTall == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockTaller, abstractTheme.spaces.spacePaddingBlockTaller)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockTaller == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spacePaddingBlockTallest, abstractTheme.spaces.spacePaddingBlockTallest)
        XCTAssertTrue(inheritedTheme.spaces.spacePaddingBlockTallest == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inset

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetNone, abstractTheme.spaces.spaceInsetNone)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetNone == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetSmash, abstractTheme.spaces.spaceInsetSmash)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetSmash == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetShortest, abstractTheme.spaces.spaceInsetShortest)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetShortest == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetShorter, abstractTheme.spaces.spaceInsetShorter)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetShorter == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetShort, abstractTheme.spaces.spaceInsetShort)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetShort == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetMedium, abstractTheme.spaces.spaceInsetMedium)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetMedium == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetTall, abstractTheme.spaces.spaceInsetTall)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetTall == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetTaller, abstractTheme.spaces.spaceInsetTaller)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetTaller == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetTallest, abstractTheme.spaces.spaceInsetTallest)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetTallest == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceInsetSpacious, abstractTheme.spaces.spaceInsetSpacious)
        XCTAssertTrue(inheritedTheme.spaces.spaceInsetSpacious == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap inline

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapNone, abstractTheme.spaces.spaceColumnGapNone)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapNone == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapShorter, abstractTheme.spaces.spaceColumnGapShorter)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapShorter == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapShort, abstractTheme.spaces.spaceColumnGapShort)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapShort == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapMedium, abstractTheme.spaces.spaceColumnGapMedium)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapMedium == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapTall, abstractTheme.spaces.spaceColumnGapTall)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapTall == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceColumnGapTaller, abstractTheme.spaces.spaceColumnGapTaller)
        XCTAssertTrue(inheritedTheme.spaces.spaceColumnGapTaller == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap stack

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapNone, abstractTheme.spaces.spaceRowGapNone)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapNone == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapShortest, abstractTheme.spaces.spaceRowGapShortest)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapShortest == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapShorter, abstractTheme.spaces.spaceRowGapShorter)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapShorter == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapShort, abstractTheme.spaces.spaceRowGapShort)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapShort == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapMedium, abstractTheme.spaces.spaceRowGapMedium)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapMedium == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaces.spaceRowGapTall, abstractTheme.spaces.spaceRowGapTall)
        XCTAssertTrue(inheritedTheme.spaces.spaceRowGapTall == MockThemeSpaceSemanticTokensWrapper.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
