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
        #expect(inheritedTheme.elevations.elevationNone != abstractTheme.elevations.elevationNone)
        #expect(inheritedTheme.elevations.elevationNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeRaised() throws {
        #expect(inheritedTheme.elevations.elevationRaised != abstractTheme.elevations.elevationRaised)
        #expect(inheritedTheme.elevations.elevationRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeDrag() throws {
        #expect(inheritedTheme.elevations.elevationDrag != abstractTheme.elevations.elevationDrag)
        #expect(inheritedTheme.elevations.elevationDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayDefault() throws {
        #expect(inheritedTheme.elevations.elevationOverlayDefault != abstractTheme.elevations.elevationOverlayDefault)
        #expect(inheritedTheme.elevations.elevationOverlayDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeOverlayEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationOverlayEmphasized != abstractTheme.elevations.elevationOverlayEmphasized)
        #expect(inheritedTheme.elevations.elevationOverlayEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationCompositeSticky() throws {
        #expect(inheritedTheme.elevations.elevationSticky != abstractTheme.elevations.elevationSticky)
        #expect(inheritedTheme.elevations.elevationSticky == MockThemeElevationSemanticTokensProvider.mockThemeElevationCompositeSemanticToken)
    }
}

// swiftlint:enable type_name
