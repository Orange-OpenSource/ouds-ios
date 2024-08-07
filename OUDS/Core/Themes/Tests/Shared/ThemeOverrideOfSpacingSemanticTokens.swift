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
import OUDSThemesShared

// swiftlint:disable type_body_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In factn the `OUDSTheme` object is a class, which can be seens as an _asbtract class_, exposing through its extensions and protocols _spacing semantic tokens_.
/// These semantic tokens should be overriden by subclass like the `OrangeTheme` default theme.
/// **These tests checks if any _spacing semantic tokens_ can be surcharged by a child theme**
final class ThemeOverrideOfSpacingSemanticTokens: XCTestCase {

    private var abstractTheme: OUDSTheme!
    private var inheritedTheme: OUDSTheme!

    override func setUp() async throws {
        abstractTheme = OUDSTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Spacing - Layout fix

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixNone, abstractTheme.spaceLayoutFixNone)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixSmash, abstractTheme.spaceLayoutFixSmash)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixSmash == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixShortest, abstractTheme.spaceLayoutFixShortest)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixShorter, abstractTheme.spaceLayoutFixShorter)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixShort, abstractTheme.spaceLayoutFixShort)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixMedium, abstractTheme.spaceLayoutFixMedium)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixTall, abstractTheme.spaceLayoutFixTall)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixTaller, abstractTheme.spaceLayoutFixTaller)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixTallest, abstractTheme.spaceLayoutFixTallest)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixTallest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFixSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixSpacious, abstractTheme.spaceLayoutFixSpacious)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixSpacious == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Layout fluid

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidNone, abstractTheme.spaceLayoutFluidNone)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidSmash, abstractTheme.spaceLayoutFluidSmash)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidSmash == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidShortest, abstractTheme.spaceLayoutFluidShortest)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidShorter, abstractTheme.spaceLayoutFluidShorter)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidShort, abstractTheme.spaceLayoutFluidShort)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidMedium, abstractTheme.spaceLayoutFluidMedium)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidTall, abstractTheme.spaceLayoutFluidTall)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidTaller, abstractTheme.spaceLayoutFluidTaller)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidTallest, abstractTheme.spaceLayoutFluidTallest)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidTallest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceLayoutFluidSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidSpacious, abstractTheme.spaceLayoutFluidSpacious)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidSpacious == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inline

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentNone, abstractTheme.spacePaddingInlineComponentNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentShorter, abstractTheme.spacePaddingInlineComponentShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentShort, abstractTheme.spacePaddingInlineComponentShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentMedium, abstractTheme.spacePaddingInlineComponentMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentTall, abstractTheme.spacePaddingInlineComponentTall)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentTaller, abstractTheme.spacePaddingInlineComponentTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconNone, abstractTheme.spacePaddingInlineComponentIsIconNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconShorter, abstractTheme.spacePaddingInlineComponentIsIconShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconShort, abstractTheme.spacePaddingInlineComponentIsIconShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconMedium, abstractTheme.spacePaddingInlineComponentIsIconMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconTall, abstractTheme.spacePaddingInlineComponentIsIconTall)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconTaller, abstractTheme.spacePaddingInlineComponentIsIconTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsArrowNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowNone, abstractTheme.spacePaddingInlineComponentIsArrowNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsArrowShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowShorter, abstractTheme.spacePaddingInlineComponentIsArrowShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsArrowShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowShort, abstractTheme.spacePaddingInlineComponentIsArrowShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsArrowMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowMedium, abstractTheme.spacePaddingInlineComponentIsArrowMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsArrowTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowTaller, abstractTheme.spacePaddingInlineComponentIsArrowTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingInlineComponentIsArrowTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowTaller, abstractTheme.spacePaddingInlineComponentIsArrowTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowTaller == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding stack

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentNone, abstractTheme.spacePaddingBlockComponentNone)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentShorter, abstractTheme.spacePaddingBlockComponentShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentShort, abstractTheme.spacePaddingBlockComponentShort)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentMedium, abstractTheme.spacePaddingBlockComponentMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentTall, abstractTheme.spacePaddingBlockComponentTall)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentTaller, abstractTheme.spacePaddingBlockComponentTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentIsIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconNone, abstractTheme.spacePaddingBlockComponentIsIconNone)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentIsIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconShorter, abstractTheme.spacePaddingBlockComponentIsIconShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentIsIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconShort, abstractTheme.spacePaddingBlockComponentIsIconShort)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentIsIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconMedium, abstractTheme.spacePaddingBlockComponentIsIconMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentIsIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconTall, abstractTheme.spacePaddingBlockComponentIsIconTall)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpacePaddingBlockComponentIsIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconTaller, abstractTheme.spacePaddingBlockComponentIsIconTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconTaller == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Padding inset

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentNone, abstractTheme.spaceInsetComponentNone)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentSmash() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentSmash, abstractTheme.spaceInsetComponentSmash)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentSmash == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentShortest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentShortest, abstractTheme.spaceInsetComponentShortest)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentShortest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentShorter, abstractTheme.spaceInsetComponentShorter)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentShort, abstractTheme.spaceInsetComponentShort)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentMedium, abstractTheme.spaceInsetComponentMedium)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentTall, abstractTheme.spaceInsetComponentTall)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentTaller, abstractTheme.spaceInsetComponentTaller)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentTallest() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentTallest, abstractTheme.spaceInsetComponentTallest)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentTallest == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceInsetComponentSpacious() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentSpacious, abstractTheme.spaceInsetComponentSpacious)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentSpacious == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap inline

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentNone, abstractTheme.spaceColumnGapComponentNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentShorter, abstractTheme.spaceColumnGapComponentShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentShort, abstractTheme.spaceColumnGapComponentShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentMedium, abstractTheme.spaceColumnGapComponentMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentTall, abstractTheme.spaceColumnGapComponentTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentTaller, abstractTheme.spaceColumnGapComponentTaller)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconNone, abstractTheme.spaceColumnGapComponentIsIconNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconShorter, abstractTheme.spaceColumnGapComponentIsIconShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconShort, abstractTheme.spaceColumnGapComponentIsIconShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconMedium, abstractTheme.spaceColumnGapComponentIsIconMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconTall, abstractTheme.spaceColumnGapComponentIsIconTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconTaller, abstractTheme.spaceColumnGapComponentIsIconTaller)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsArrowNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowNone, abstractTheme.spaceColumnGapComponentIsArrowNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsArrowShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowShorter, abstractTheme.spaceColumnGapComponentIsArrowShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsArrowShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowShort, abstractTheme.spaceColumnGapComponentIsArrowShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsArrowMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowMedium, abstractTheme.spaceColumnGapComponentIsArrowMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsArrowTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowTall, abstractTheme.spaceColumnGapComponentIsArrowTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceColumnGapComponentIsArrowTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowTaller, abstractTheme.spaceColumnGapComponentIsArrowTaller)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowTaller == MockTheme.mockThemeSpaceRawToken)
    }

    // MARK: - Semantic token - Spacing - Padding - Gap stack

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentNone, abstractTheme.spaceRowGapComponentNone)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentShorter, abstractTheme.spaceRowGapComponentShorter)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentShort, abstractTheme.spaceRowGapComponentShort)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentMedium, abstractTheme.spaceRowGapComponentMedium)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentTall, abstractTheme.spaceRowGapComponentTall)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentTaller, abstractTheme.spaceRowGapComponentTaller)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentTaller == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentIsIconNone() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconNone, abstractTheme.spaceRowGapComponentIsIconNone)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconNone == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentIsIconShorter() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconShorter, abstractTheme.spaceRowGapComponentIsIconShorter)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconShorter == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentIsIconShort() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconShort, abstractTheme.spaceRowGapComponentIsIconShort)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconShort == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentIsIconMedium() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconMedium, abstractTheme.spaceRowGapComponentIsIconMedium)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconMedium == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentIsIconTall() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconTall, abstractTheme.spaceRowGapComponentIsIconTall)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconTall == MockTheme.mockThemeSpaceRawToken)
    }

    func testInheritedThemeCanOverrideSemanticTokenSpaceRowGapComponentIsIconTaller() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconTaller, abstractTheme.spaceRowGapComponentIsIconTaller)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconTaller == MockTheme.mockThemeSpaceRawToken)
    }
}

// swiftlint:enable type_body_length
