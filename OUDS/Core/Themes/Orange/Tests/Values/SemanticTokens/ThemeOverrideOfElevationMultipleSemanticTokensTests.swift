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

// swiftlint:disable type_name

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _elevation multiple semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeElevationMultipleSemanticTokensProvider``.
///
/// **These tests checks if any _elevation multiple semantic semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfElevationMultipleSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefault() throws {
        #expect(inheritedTheme.elevations.colorDefault != abstractTheme.elevations.colorDefault)
        #expect(inheritedTheme.elevations.colorDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorRaised() throws {
        #expect(inheritedTheme.elevations.colorRaised != abstractTheme.elevations.colorRaised)
        #expect(inheritedTheme.elevations.colorRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDrag() throws {
        #expect(inheritedTheme.elevations.colorDrag != abstractTheme.elevations.colorDrag)
        #expect(inheritedTheme.elevations.colorDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorEmphasized() throws {
        #expect(inheritedTheme.elevations.colorEmphasized != abstractTheme.elevations.colorEmphasized)
        #expect(inheritedTheme.elevations.colorEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorSticky() throws {
        #expect(inheritedTheme.elevations.colorSticky != abstractTheme.elevations.colorSticky)
        #expect(inheritedTheme.elevations.colorSticky == MockThemeElevationSemanticTokensProvider.mockThemeElevationMultipleColorSemanticToken)
    }
}

// swiftlint:enable type_name
