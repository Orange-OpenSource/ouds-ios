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

import XCTest
import OUDS

// swiftlint:disable type_body_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _spacing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _spacing semantic tokens_ can be surcharged by a child theme**
final class TestThemeOverrideOfSpacingSemanticTokens: XCTestCase {

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

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledNone, abstractTheme.spaceScaledNone)
        XCTAssertTrue(inheritedTheme.spaceScaledNone.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledSmash, abstractTheme.spaceScaledSmash)
        XCTAssertTrue(inheritedTheme.spaceScaledSmash.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShortest, abstractTheme.spaceScaledShortest)
        XCTAssertTrue(inheritedTheme.spaceScaledShortest.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShorter, abstractTheme.spaceScaledShorter)
        XCTAssertTrue(inheritedTheme.spaceScaledShorter.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledShort, abstractTheme.spaceScaledShort)
        XCTAssertTrue(inheritedTheme.spaceScaledShort.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledMedium, abstractTheme.spaceScaledMedium)
        XCTAssertTrue(inheritedTheme.spaceScaledMedium.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTall, abstractTheme.spaceScaledTall)
        XCTAssertTrue(inheritedTheme.spaceScaledTall.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTaller, abstractTheme.spaceScaledTaller)
        XCTAssertTrue(inheritedTheme.spaceScaledTaller.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledTallest, abstractTheme.spaceScaledTallest)
        XCTAssertTrue(inheritedTheme.spaceScaledTallest.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceScaledSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaceScaledSpacious, abstractTheme.spaceScaledSpacious)
        XCTAssertTrue(inheritedTheme.spaceScaledSpacious.isEqual(MockTheme.mockThemeSpaceSemanticToken))
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inline

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineNone, abstractTheme.spacePaddingInlineNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineNone == MockTheme.mockThemeSpaceRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsIconNone, abstractTheme.spacePaddingInlineIsIconNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsIconShorter, abstractTheme.spacePaddingInlineIsIconShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsIconShort, abstractTheme.spacePaddingInlineIsIconShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsIconMedium, abstractTheme.spacePaddingInlineIsIconMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsIconTall, abstractTheme.spacePaddingInlineIsIconTall)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsIconTaller, abstractTheme.spacePaddingInlineIsIconTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsIconTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsArrowNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsArrowNone, abstractTheme.spacePaddingInlineIsArrowNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsArrowNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsArrowShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsArrowShorter, abstractTheme.spacePaddingInlineIsArrowShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsArrowShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsArrowShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsArrowShort, abstractTheme.spacePaddingInlineIsArrowShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsArrowShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsArrowMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsArrowMedium, abstractTheme.spacePaddingInlineIsArrowMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsArrowMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsArrowTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsArrowTaller, abstractTheme.spacePaddingInlineIsArrowTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsArrowTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineIsArrowTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineIsArrowTaller, abstractTheme.spacePaddingInlineIsArrowTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineIsArrowTaller == MockTheme.mockThemeSpaceRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockIsIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockIsIconNone, abstractTheme.spacePaddingBlockIsIconNone)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockIsIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockIsIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockIsIconShorter, abstractTheme.spacePaddingBlockIsIconShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockIsIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockIsIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockIsIconShort, abstractTheme.spacePaddingBlockIsIconShort)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockIsIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockIsIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockIsIconMedium, abstractTheme.spacePaddingBlockIsIconMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockIsIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockIsIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockIsIconTall, abstractTheme.spacePaddingBlockIsIconTall)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockIsIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockIsIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockIsIconTaller, abstractTheme.spacePaddingBlockIsIconTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockIsIconTaller == MockTheme.mockThemeSpaceRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsIconNone, abstractTheme.spaceColumnGapIsIconNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsIconShorter, abstractTheme.spaceColumnGapIsIconShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsIconShort, abstractTheme.spaceColumnGapIsIconShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsIconMedium, abstractTheme.spaceColumnGapIsIconMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsIconTall, abstractTheme.spaceColumnGapIsIconTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsIconTaller, abstractTheme.spaceColumnGapIsIconTaller)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsIconTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsArrowNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsArrowNone, abstractTheme.spaceColumnGapIsArrowNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsArrowNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsArrowShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsArrowShorter, abstractTheme.spaceColumnGapIsArrowShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsArrowShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsArrowShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsArrowShort, abstractTheme.spaceColumnGapIsArrowShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsArrowShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsArrowMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsArrowMedium, abstractTheme.spaceColumnGapIsArrowMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsArrowMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsArrowTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsArrowTall, abstractTheme.spaceColumnGapIsArrowTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsArrowTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapIsArrowTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapIsArrowTaller, abstractTheme.spaceColumnGapIsArrowTaller)
        XCTAssertTrue(inheritedTheme.spaceColumnGapIsArrowTaller == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap stack

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapNone, abstractTheme.spaceRowGapNone)
        XCTAssertTrue(inheritedTheme.spaceRowGapNone == MockTheme.mockThemeSpaceRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapTaller, abstractTheme.spaceRowGapTaller)
        XCTAssertTrue(inheritedTheme.spaceRowGapTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapIsIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapIsIconNone, abstractTheme.spaceRowGapIsIconNone)
        XCTAssertTrue(inheritedTheme.spaceRowGapIsIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapIsIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapIsIconShorter, abstractTheme.spaceRowGapIsIconShorter)
        XCTAssertTrue(inheritedTheme.spaceRowGapIsIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapIsIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapIsIconShort, abstractTheme.spaceRowGapIsIconShort)
        XCTAssertTrue(inheritedTheme.spaceRowGapIsIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapIsIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapIsIconMedium, abstractTheme.spaceRowGapIsIconMedium)
        XCTAssertTrue(inheritedTheme.spaceRowGapIsIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapIsIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapIsIconTall, abstractTheme.spaceRowGapIsIconTall)
        XCTAssertTrue(inheritedTheme.spaceRowGapIsIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapIsIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapIsIconTaller, abstractTheme.spaceRowGapIsIconTaller)
        XCTAssertTrue(inheritedTheme.spaceRowGapIsIconTaller == MockTheme.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable type_body_length
