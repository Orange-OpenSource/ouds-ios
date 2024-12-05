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
        XCTAssertNotEqual(inheritedTheme.spaceFixedNone, abstractTheme.spaceFixedNone)
        XCTAssertTrue(inheritedTheme.spaceFixedNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedSmash, abstractTheme.spaceFixedSmash)
        XCTAssertTrue(inheritedTheme.spaceFixedSmash == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedShortest, abstractTheme.spaceFixedShortest)
        XCTAssertTrue(inheritedTheme.spaceFixedShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedShorter, abstractTheme.spaceFixedShorter)
        XCTAssertTrue(inheritedTheme.spaceFixedShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedShort, abstractTheme.spaceFixedShort)
        XCTAssertTrue(inheritedTheme.spaceFixedShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedMedium, abstractTheme.spaceFixedMedium)
        XCTAssertTrue(inheritedTheme.spaceFixedMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedTall, abstractTheme.spaceFixedTall)
        XCTAssertTrue(inheritedTheme.spaceFixedTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedTaller, abstractTheme.spaceFixedTaller)
        XCTAssertTrue(inheritedTheme.spaceFixedTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedTallest, abstractTheme.spaceFixedTallest)
        XCTAssertTrue(inheritedTheme.spaceFixedTallest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedSpacious, abstractTheme.spaceFixedSpacious)
        XCTAssertTrue(inheritedTheme.spaceFixedSpacious == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedHuge() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedHuge, abstractTheme.spaceFixedHuge)
        XCTAssertTrue(inheritedTheme.spaceFixedHuge == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceFixedJumbo() throws {
        XCTAssertNotEqual(inheritedTheme.spaceFixedJumbo, abstractTheme.spaceFixedJumbo)
        XCTAssertTrue(inheritedTheme.spaceFixedJumbo == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Layout fluid

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledNoneMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledNoneMobile, abstractTheme.spaceScaledNoneMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledNoneMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledNoneTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledNoneTablet, abstractTheme.spaceScaledNoneTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledNoneTablet == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSmashMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledSmashMobile, abstractTheme.spaceScaledSmashMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledSmashMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSmashTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledSmashTablet, abstractTheme.spaceScaledSmashTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledSmashTablet == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortestMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShortestMobile, abstractTheme.spaceScaledShortestMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledShortestMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortestTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShortestTablet, abstractTheme.spaceScaledShortestTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledShortestTablet == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShorterMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShorterMobile, abstractTheme.spaceScaledShorterMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledShorterMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShorterTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShorterTablet, abstractTheme.spaceScaledShorterTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledShorterTablet == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShortMobile, abstractTheme.spaceScaledShortMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledShortMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShortTablet, abstractTheme.spaceScaledShortTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledShortTablet == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledMediumMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledMediumMobile, abstractTheme.spaceScaledMediumMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledMediumMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledMediumTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledMediumTablet, abstractTheme.spaceScaledMediumTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledMediumTablet == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTallMobile, abstractTheme.spaceScaledTallMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledTallMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTallTablet, abstractTheme.spaceScaledTallTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledTallTablet == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallerMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTallerMobile, abstractTheme.spaceScaledTallerMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledTallerMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallerTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTallerTablet, abstractTheme.spaceScaledTallerTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledTallerTablet == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallestMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTallestMobile, abstractTheme.spaceScaledTallestMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledTallestMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallestTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTallestTablet, abstractTheme.spaceScaledTallestTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledTallestTablet == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSpaciousMobile() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledSpaciousMobile, abstractTheme.spaceScaledSpaciousMobile)
        XCTAssertTrue(inheritedTheme.spaceScaledSpaciousMobile == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSpaciousTablet() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledSpaciousTablet, abstractTheme.spaceScaledSpaciousTablet)
        XCTAssertTrue(inheritedTheme.spaceScaledSpaciousTablet == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inline

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineNone, abstractTheme.spacePaddingInlineNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineSmash, abstractTheme.spacePaddingInlineSmash)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineSmash == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineShortest, abstractTheme.spacePaddingInlineShortest)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineShorter, abstractTheme.spacePaddingInlineShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineShort, abstractTheme.spacePaddingInlineShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineMedium, abstractTheme.spacePaddingInlineMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineTall, abstractTheme.spacePaddingInlineTall)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineTaller, abstractTheme.spacePaddingInlineTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineTallest, abstractTheme.spacePaddingInlineTallest)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineTallest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineSpacious, abstractTheme.spacePaddingInlineSpacious)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineSpacious == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineHuge() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineHuge, abstractTheme.spacePaddingInlineHuge)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineHuge == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding stack

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockNone, abstractTheme.spacePaddingBlockNone)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockShorter, abstractTheme.spacePaddingBlockShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockShort, abstractTheme.spacePaddingBlockShort)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockMedium, abstractTheme.spacePaddingBlockMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockTall, abstractTheme.spacePaddingBlockTall)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockTaller, abstractTheme.spacePaddingBlockTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockTallest, abstractTheme.spacePaddingBlockTallest)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockTallest == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inset

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetNone, abstractTheme.spaceInsetNone)
        XCTAssertTrue(inheritedTheme.spaceInsetNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetSmash, abstractTheme.spaceInsetSmash)
        XCTAssertTrue(inheritedTheme.spaceInsetSmash == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetShortest, abstractTheme.spaceInsetShortest)
        XCTAssertTrue(inheritedTheme.spaceInsetShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetShorter, abstractTheme.spaceInsetShorter)
        XCTAssertTrue(inheritedTheme.spaceInsetShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetShort, abstractTheme.spaceInsetShort)
        XCTAssertTrue(inheritedTheme.spaceInsetShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetMedium, abstractTheme.spaceInsetMedium)
        XCTAssertTrue(inheritedTheme.spaceInsetMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetTall, abstractTheme.spaceInsetTall)
        XCTAssertTrue(inheritedTheme.spaceInsetTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetTaller, abstractTheme.spaceInsetTaller)
        XCTAssertTrue(inheritedTheme.spaceInsetTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetTallest, abstractTheme.spaceInsetTallest)
        XCTAssertTrue(inheritedTheme.spaceInsetTallest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetSpacious, abstractTheme.spaceInsetSpacious)
        XCTAssertTrue(inheritedTheme.spaceInsetSpacious == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap inline

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapNone, abstractTheme.spaceColumnGapNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapShorter, abstractTheme.spaceColumnGapShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapShort, abstractTheme.spaceColumnGapShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapMedium, abstractTheme.spaceColumnGapMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapTall, abstractTheme.spaceColumnGapTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapTaller, abstractTheme.spaceColumnGapTaller)
        XCTAssertTrue(inheritedTheme.spaceColumnGapTaller == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap stack

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapNone, abstractTheme.spaceRowGapNone)
        XCTAssertTrue(inheritedTheme.spaceRowGapNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapShortest, abstractTheme.spaceRowGapShortest)
        XCTAssertTrue(inheritedTheme.spaceRowGapShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapShorter, abstractTheme.spaceRowGapShorter)
        XCTAssertTrue(inheritedTheme.spaceRowGapShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapShort, abstractTheme.spaceRowGapShort)
        XCTAssertTrue(inheritedTheme.spaceRowGapShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapMedium, abstractTheme.spaceRowGapMedium)
        XCTAssertTrue(inheritedTheme.spaceRowGapMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapTall, abstractTheme.spaceRowGapTall)
        XCTAssertTrue(inheritedTheme.spaceRowGapTall == MockTheme.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
