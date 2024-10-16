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
// swiftlint:disable file_length

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

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineTallest, abstractTheme.spacePaddingInlineTallest)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineTallest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithIconNone, abstractTheme.spacePaddingInlineWithIconNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithIconShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithIconShortest, abstractTheme.spacePaddingInlineWithIconShortest)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithIconShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithIconShorter, abstractTheme.spacePaddingInlineWithIconShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithIconShort, abstractTheme.spacePaddingInlineWithIconShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithIconMedium, abstractTheme.spacePaddingInlineWithIconMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithIconTall, abstractTheme.spacePaddingInlineWithIconTall)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithIconTaller, abstractTheme.spacePaddingInlineWithIconTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithIconTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithIconTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithIconTallest, abstractTheme.spacePaddingInlineWithIconTallest)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithIconTallest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithArrowNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithArrowNone, abstractTheme.spacePaddingInlineWithArrowNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithArrowNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithArrowShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithArrowShortest, abstractTheme.spacePaddingInlineWithArrowShortest)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithArrowShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithArrowShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithArrowShorter, abstractTheme.spacePaddingInlineWithArrowShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithArrowShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithArrowShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithArrowShort, abstractTheme.spacePaddingInlineWithArrowShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithArrowShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithArrowMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithArrowMedium, abstractTheme.spacePaddingInlineWithArrowMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithArrowMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithArrowTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithArrowTall, abstractTheme.spacePaddingInlineWithArrowTall)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithArrowTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithArrowTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithArrowTaller, abstractTheme.spacePaddingInlineWithArrowTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithArrowTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineWithArrowTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineWithArrowTallest, abstractTheme.spacePaddingInlineWithArrowTallest)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineWithArrowTallest == MockTheme.mockThemeSpaceRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockWithIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockWithIconNone, abstractTheme.spacePaddingBlockWithIconNone)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockWithIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockWithIconShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockWithIconShortest, abstractTheme.spacePaddingBlockWithIconShortest)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockWithIconShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockWithIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockWithIconShorter, abstractTheme.spacePaddingBlockWithIconShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockWithIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockWithIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockWithIconShort, abstractTheme.spacePaddingBlockWithIconShort)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockWithIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockWithIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockWithIconMedium, abstractTheme.spacePaddingBlockWithIconMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockWithIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockWithIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockWithIconTall, abstractTheme.spacePaddingBlockWithIconTall)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockWithIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockWithIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockWithIconTaller, abstractTheme.spacePaddingBlockWithIconTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockWithIconTaller == MockTheme.mockThemeSpaceRawToken)
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
    
    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithIconNone, abstractTheme.spaceColumnGapWithIconNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithIconShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithIconShortest, abstractTheme.spaceColumnGapWithIconShortest)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithIconShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithIconShorter, abstractTheme.spaceColumnGapWithIconShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithIconShort, abstractTheme.spaceColumnGapWithIconShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithIconMedium, abstractTheme.spaceColumnGapWithIconMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithIconTall, abstractTheme.spaceColumnGapWithIconTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithArrowNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithArrowNone, abstractTheme.spaceColumnGapWithArrowNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithArrowNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithArrowShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithArrowShortest, abstractTheme.spaceColumnGapWithArrowShortest)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithArrowShortest == MockTheme.mockThemeSpaceRawToken)
    }
    
    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithArrowShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithArrowShorter, abstractTheme.spaceColumnGapWithArrowShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithArrowShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithArrowShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithArrowShort, abstractTheme.spaceColumnGapWithArrowShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithArrowShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithArrowMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithArrowMedium, abstractTheme.spaceColumnGapWithArrowMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithArrowMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapWithArrowTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapWithArrowTall, abstractTheme.spaceColumnGapWithArrowTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapWithArrowTall == MockTheme.mockThemeSpaceRawToken)
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

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapWithIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapWithIconNone, abstractTheme.spaceRowGapWithIconNone)
        XCTAssertTrue(inheritedTheme.spaceRowGapWithIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapWithIconShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapWithIconShortest, abstractTheme.spaceRowGapWithIconShortest)
        XCTAssertTrue(inheritedTheme.spaceRowGapWithIconShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapWithIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapWithIconShorter, abstractTheme.spaceRowGapWithIconShorter)
        XCTAssertTrue(inheritedTheme.spaceRowGapWithIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapWithIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapWithIconShort, abstractTheme.spaceRowGapWithIconShort)
        XCTAssertTrue(inheritedTheme.spaceRowGapWithIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapWithIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapWithIconMedium, abstractTheme.spaceRowGapWithIconMedium)
        XCTAssertTrue(inheritedTheme.spaceRowGapWithIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapWithIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapWithIconTall, abstractTheme.spaceRowGapWithIconTall)
        XCTAssertTrue(inheritedTheme.spaceRowGapWithIconTall == MockTheme.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable implicitly_unwrapped_optional
// swiftlint:enable type_body_length
