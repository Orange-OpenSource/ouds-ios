//
// Software Name: OUDSThemesContract iOS
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
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _composite elevation semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeElevationSemanticTokensProvider``.
///
/// **These tests checks if any _elevation composite semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfElevationCompositeSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeNone() throws {
        #expect(inheritedTheme.elevations.none != abstractTheme.elevations.none)
        #expect(inheritedTheme.elevations.none == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeRaised() throws {
        #expect(inheritedTheme.elevations.raised != abstractTheme.elevations.raised)
        #expect(inheritedTheme.elevations.raised == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeDrag() throws {
        #expect(inheritedTheme.elevations.drag != abstractTheme.elevations.drag)
        #expect(inheritedTheme.elevations.drag == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeDefault() throws {
        #expect(inheritedTheme.elevations.default != abstractTheme.elevations.default)
        #expect(inheritedTheme.elevations.default == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeEmphasized() throws {
        #expect(inheritedTheme.elevations.emphasized != abstractTheme.elevations.emphasized)
        #expect(inheritedTheme.elevations.emphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeSticky() throws {
        #expect(inheritedTheme.elevations.sticky != abstractTheme.elevations.sticky)
        #expect(inheritedTheme.elevations.sticky == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }
}

// swiftlint:enable type_name
