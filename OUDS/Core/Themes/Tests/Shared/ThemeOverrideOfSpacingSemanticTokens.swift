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

    /// Test overriding of spacing semantic tokens for layout fix
    func testInheritedThemeCanOverrideSpacingLayoutFixSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixNone, abstractTheme.spaceLayoutFixNone)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixSmash, abstractTheme.spaceLayoutFixSmash)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixSmash == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixShortest, abstractTheme.spaceLayoutFixShortest)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixShortest == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixShorter, abstractTheme.spaceLayoutFixShorter)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixShort, abstractTheme.spaceLayoutFixShort)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixMedium, abstractTheme.spaceLayoutFixMedium)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixTall, abstractTheme.spaceLayoutFixTall)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixTaller, abstractTheme.spaceLayoutFixTaller)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixTaller == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixTallest, abstractTheme.spaceLayoutFixTallest)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixTallest == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFixSpacious, abstractTheme.spaceLayoutFixSpacious)
        XCTAssertTrue(inheritedTheme.spaceLayoutFixSpacious == MockTheme.mockThemeSpaceRawToken)
    }

    /// Test overriding of spacing semantic tokens for layout fluid
    func testInheritedThemeCanOverrideSpacingLayoutFluidSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidNone, abstractTheme.spaceLayoutFluidNone)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidSmash, abstractTheme.spaceLayoutFluidSmash)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidSmash == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidShortest, abstractTheme.spaceLayoutFluidShortest)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidShortest == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidShorter, abstractTheme.spaceLayoutFluidShorter)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidShort, abstractTheme.spaceLayoutFluidShort)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidMedium, abstractTheme.spaceLayoutFluidMedium)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidTall, abstractTheme.spaceLayoutFluidTall)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidTaller, abstractTheme.spaceLayoutFluidTaller)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidTaller == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidTallest, abstractTheme.spaceLayoutFluidTallest)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidTallest == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceLayoutFluidSpacious, abstractTheme.spaceLayoutFluidSpacious)
        XCTAssertTrue(inheritedTheme.spaceLayoutFluidSpacious == MockTheme.mockThemeSpaceRawToken)
    }

    /// Test overriding of spacing semantic tokens for padding inline
    func testInheritedThemeCanOverrideSpacingPaddingInlineSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentNone, abstractTheme.spacePaddingInlineComponentNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentShorter, abstractTheme.spacePaddingInlineComponentShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentShort, abstractTheme.spacePaddingInlineComponentShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentMedium, abstractTheme.spacePaddingInlineComponentMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentTall, abstractTheme.spacePaddingInlineComponentTall)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentTaller, abstractTheme.spacePaddingInlineComponentTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentTaller == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconNone, abstractTheme.spacePaddingInlineComponentIsIconNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconShorter, abstractTheme.spacePaddingInlineComponentIsIconShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconShort, abstractTheme.spacePaddingInlineComponentIsIconShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconMedium, abstractTheme.spacePaddingInlineComponentIsIconMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconTall, abstractTheme.spacePaddingInlineComponentIsIconTall)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsIconTaller, abstractTheme.spacePaddingInlineComponentIsIconTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsIconTaller == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowNone, abstractTheme.spacePaddingInlineComponentIsArrowNone)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowShorter, abstractTheme.spacePaddingInlineComponentIsArrowShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowShort, abstractTheme.spacePaddingInlineComponentIsArrowShort)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowMedium, abstractTheme.spacePaddingInlineComponentIsArrowMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowTall, abstractTheme.spacePaddingInlineComponentIsArrowTall)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingInlineComponentIsArrowTaller, abstractTheme.spacePaddingInlineComponentIsArrowTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingInlineComponentIsArrowTaller == MockTheme.mockThemeSpaceRawToken)
    }

    /// Test overriding of spacing semantic tokens for padding block
    func testInheritedThemeCanOverrideSpacingPaddingBlockSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentNone, abstractTheme.spacePaddingBlockComponentNone)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentShorter, abstractTheme.spacePaddingBlockComponentShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentShort, abstractTheme.spacePaddingBlockComponentShort)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentMedium, abstractTheme.spacePaddingBlockComponentMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentTall, abstractTheme.spacePaddingBlockComponentTall)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentTaller, abstractTheme.spacePaddingBlockComponentTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentTaller == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconNone, abstractTheme.spacePaddingBlockComponentIsIconNone)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconShorter, abstractTheme.spacePaddingBlockComponentIsIconShorter)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconShort, abstractTheme.spacePaddingBlockComponentIsIconShort)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconMedium, abstractTheme.spacePaddingBlockComponentIsIconMedium)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconTall, abstractTheme.spacePaddingBlockComponentIsIconTall)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spacePaddingBlockComponentIsIconTaller, abstractTheme.spacePaddingBlockComponentIsIconTaller)
        XCTAssertTrue(inheritedTheme.spacePaddingBlockComponentIsIconTaller == MockTheme.mockThemeSpaceRawToken)
    }

    /// Test overriding of spacing semantic tokens for spacing inset component
    func testInheritedThemeCanOverrideSpacingInsetComponentSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentNone, abstractTheme.spaceInsetComponentNone)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentSmash, abstractTheme.spaceInsetComponentSmash)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentSmash == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentShortest, abstractTheme.spaceInsetComponentShortest)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentShortest == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentShorter, abstractTheme.spaceInsetComponentShorter)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentShort, abstractTheme.spaceInsetComponentShort)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentMedium, abstractTheme.spaceInsetComponentMedium)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentTall, abstractTheme.spaceInsetComponentTall)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentTaller, abstractTheme.spaceInsetComponentTaller)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentTaller == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentTallest, abstractTheme.spaceInsetComponentTallest)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentTallest == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceInsetComponentSpacious, abstractTheme.spaceInsetComponentSpacious)
        XCTAssertTrue(inheritedTheme.spaceInsetComponentSpacious == MockTheme.mockThemeSpaceRawToken)
    }

    /// Test overriding of spacing semantic tokens for spacing column gap
    func testInheritedThemeCanOverrideSpacingColumnGapSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentNone, abstractTheme.spaceColumnGapComponentNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentShorter, abstractTheme.spaceColumnGapComponentShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentShort, abstractTheme.spaceColumnGapComponentShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentMedium, abstractTheme.spaceColumnGapComponentMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentTall, abstractTheme.spaceColumnGapComponentTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentTaller, abstractTheme.spaceColumnGapComponentTaller)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentTaller == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconNone, abstractTheme.spaceColumnGapComponentIsIconNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconShorter, abstractTheme.spaceColumnGapComponentIsIconShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconShort, abstractTheme.spaceColumnGapComponentIsIconShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconMedium, abstractTheme.spaceColumnGapComponentIsIconMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconTall, abstractTheme.spaceColumnGapComponentIsIconTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsIconTaller, abstractTheme.spaceColumnGapComponentIsIconTaller)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsIconTaller == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowNone, abstractTheme.spaceColumnGapComponentIsArrowNone)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowShorter, abstractTheme.spaceColumnGapComponentIsArrowShorter)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowShort, abstractTheme.spaceColumnGapComponentIsArrowShort)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowMedium, abstractTheme.spaceColumnGapComponentIsArrowMedium)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowTall, abstractTheme.spaceColumnGapComponentIsArrowTall)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceColumnGapComponentIsArrowTaller, abstractTheme.spaceColumnGapComponentIsArrowTaller)
        XCTAssertTrue(inheritedTheme.spaceColumnGapComponentIsArrowTaller == MockTheme.mockThemeSpaceRawToken)
    }

    /// Test overriding of spacing semantic tokens for spacing row gap
    func testInheritedThemeCanOverrideSpacingRowGapSemanticTokens() throws {
        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentNone, abstractTheme.spaceRowGapComponentNone)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentShorter, abstractTheme.spaceRowGapComponentShorter)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentShort, abstractTheme.spaceRowGapComponentShort)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentMedium, abstractTheme.spaceRowGapComponentMedium)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentTall, abstractTheme.spaceRowGapComponentTall)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentTaller, abstractTheme.spaceRowGapComponentTaller)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentTaller == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconNone, abstractTheme.spaceRowGapComponentIsIconNone)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconNone == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconShorter, abstractTheme.spaceRowGapComponentIsIconShorter)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconShorter == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconShort, abstractTheme.spaceRowGapComponentIsIconShort)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconShort == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconMedium, abstractTheme.spaceRowGapComponentIsIconMedium)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconMedium == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconTall, abstractTheme.spaceRowGapComponentIsIconTall)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconTall == MockTheme.mockThemeSpaceRawToken)

        XCTAssertNotEqual(inheritedTheme.spaceRowGapComponentIsIconTaller, abstractTheme.spaceRowGapComponentIsIconTaller)
        XCTAssertTrue(inheritedTheme.spaceRowGapComponentIsIconTaller == MockTheme.mockThemeSpaceRawToken)
    }
}
