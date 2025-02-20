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

// swiftlint:disable type_name
// swiftlint:disable line_length

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _elevation semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeElevationSemanticTokensProvider``.
///
/// **These tests checks if any _elevation multiple semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfElevationMultipleSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Elevation - Colors

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDefault, abstractTheme.elevations.elevationColorDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDefault.isEqual(MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorNone() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorNone, abstractTheme.elevations.elevationColorNone)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorNone.isEqual(MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorRaised() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorRaised, abstractTheme.elevations.elevationColorRaised)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorRaised.isEqual(MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDrag() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorDrag, abstractTheme.elevations.elevationColorDrag)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorDrag.isEqual(MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorEmphasized, abstractTheme.elevations.elevationColorEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorEmphasized.isEqual(MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyDefault() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyDefault, abstractTheme.elevations.elevationColorStickyDefault)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyDefault.isEqual(MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasized() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyEmphasized, abstractTheme.elevations.elevationColorStickyEmphasized)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyEmphasized.isEqual(MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken))
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolled() throws {
        XCTAssertNotEqual(inheritedTheme.elevations.elevationColorStickyNavigationScrolled, abstractTheme.elevations.elevationColorStickyNavigationScrolled)
        XCTAssertTrue(inheritedTheme.elevations.elevationColorStickyNavigationScrolled.isEqual(MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken))
    }
}

// swiftlint:enable type_name
// swiftlint:enable line_length
