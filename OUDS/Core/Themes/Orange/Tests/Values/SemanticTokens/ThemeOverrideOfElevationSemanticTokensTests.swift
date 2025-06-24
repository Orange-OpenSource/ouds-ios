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
/// In fact, the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols _elevation semantic tokens_.
/// These semantic tokens should be overridable by subclasses like the ``OrangeThemeElevatioSemanticTokensProvider``.
///
/// **These tests checks if any _elevation semantic semantic tokens_ can be surcharged by a child theme**
/// **Also, it can help to find removed or renamed tokens by having tests no more compilable**
struct ThemeOverrideOfElevationSemanticTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Semantic token - Elevation - X

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXNone() throws {
        #expect(inheritedTheme.elevations.elevationXNone != abstractTheme.elevations.elevationXNone)
        #expect(inheritedTheme.elevations.elevationXNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXRaised() throws {
        #expect(inheritedTheme.elevations.elevationXRaised != abstractTheme.elevations.elevationXRaised)
        #expect(inheritedTheme.elevations.elevationXRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXDrag() throws {
        #expect(inheritedTheme.elevations.elevationXDrag != abstractTheme.elevations.elevationXDrag)
        #expect(inheritedTheme.elevations.elevationXDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXStickyDefault() throws {
        #expect(inheritedTheme.elevations.elevationXStickyDefault != abstractTheme.elevations.elevationXStickyDefault)
        #expect(inheritedTheme.elevations.elevationXStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXStickyEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationXStickyEmphasized != abstractTheme.elevations.elevationXStickyEmphasized)
        #expect(inheritedTheme.elevations.elevationXStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationXStickyNavigationScrolled() throws {
        #expect(inheritedTheme.elevations.elevationXStickyNavigationScrolled != abstractTheme.elevations.elevationXStickyNavigationScrolled)
        #expect(inheritedTheme.elevations.elevationXStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationXRawToken)
    }

    // MARK: - Semantic token - Elevation - Y

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYNone() throws {
        #expect(inheritedTheme.elevations.elevationYNone != abstractTheme.elevations.elevationYNone)
        #expect(inheritedTheme.elevations.elevationYNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYRaised() throws {
        #expect(inheritedTheme.elevations.elevationYRaised != abstractTheme.elevations.elevationYRaised)
        #expect(inheritedTheme.elevations.elevationYRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYDrag() throws {
        #expect(inheritedTheme.elevations.elevationYDrag != abstractTheme.elevations.elevationYDrag)
        #expect(inheritedTheme.elevations.elevationYDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYStickyDefault() throws {
        #expect(inheritedTheme.elevations.elevationYStickyDefault != abstractTheme.elevations.elevationYStickyDefault)
        #expect(inheritedTheme.elevations.elevationYStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYStickyEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationYStickyEmphasized != abstractTheme.elevations.elevationYStickyEmphasized)
        #expect(inheritedTheme.elevations.elevationYStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationYStickyNavigationScrolled() throws {
        #expect(inheritedTheme.elevations.elevationYStickyNavigationScrolled != abstractTheme.elevations.elevationYStickyNavigationScrolled)
        #expect(inheritedTheme.elevations.elevationYStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationYRawToken)
    }

    // MARK: - Semantic token - Elevation - Blur

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurNone() throws {
        #expect(inheritedTheme.elevations.elevationBlurNone != abstractTheme.elevations.elevationBlurNone)
        #expect(inheritedTheme.elevations.elevationBlurNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurRaised() throws {
        #expect(inheritedTheme.elevations.elevationBlurRaised != abstractTheme.elevations.elevationBlurRaised)
        #expect(inheritedTheme.elevations.elevationBlurRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurDrag() throws {
        #expect(inheritedTheme.elevations.elevationBlurDrag != abstractTheme.elevations.elevationBlurDrag)
        #expect(inheritedTheme.elevations.elevationBlurDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurStickyDefault() throws {
        #expect(inheritedTheme.elevations.elevationBlurStickyDefault != abstractTheme.elevations.elevationBlurStickyDefault)
        #expect(inheritedTheme.elevations.elevationBlurStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurStickyEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationBlurStickyEmphasized != abstractTheme.elevations.elevationBlurStickyEmphasized)
        #expect(inheritedTheme.elevations.elevationBlurStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationBlurStickyNavigationScrolled() throws {
        #expect(inheritedTheme.elevations.elevationBlurStickyNavigationScrolled != abstractTheme.elevations.elevationBlurStickyNavigationScrolled)
        #expect(inheritedTheme.elevations.elevationBlurStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationBlurRawToken)
    }

    // MARK: - Semantic token - Elevation - Colors

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDefault() throws {
        #expect(inheritedTheme.elevations.elevationColorDefault != abstractTheme.elevations.elevationColorDefault)
        #expect(inheritedTheme.elevations.elevationColorDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorNone() throws {
        #expect(inheritedTheme.elevations.elevationColorNone != abstractTheme.elevations.elevationColorNone)
        #expect(inheritedTheme.elevations.elevationColorNone == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorRaised() throws {
        #expect(inheritedTheme.elevations.elevationColorRaised != abstractTheme.elevations.elevationColorRaised)
        #expect(inheritedTheme.elevations.elevationColorRaised == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorDrag() throws {
        #expect(inheritedTheme.elevations.elevationColorDrag != abstractTheme.elevations.elevationColorDrag)
        #expect(inheritedTheme.elevations.elevationColorDrag == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationColorEmphasized != abstractTheme.elevations.elevationColorEmphasized)
        #expect(inheritedTheme.elevations.elevationColorEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyDefault() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyDefault != abstractTheme.elevations.elevationColorStickyDefault)
        #expect(inheritedTheme.elevations.elevationColorStickyDefault == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyEmphasized() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyEmphasized != abstractTheme.elevations.elevationColorStickyEmphasized)
        #expect(inheritedTheme.elevations.elevationColorStickyEmphasized == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }

    @Test func inheritedThemeCanOverrideSemanticTokenElevationColorStickyNavigationScrolled() throws {
        #expect(inheritedTheme.elevations.elevationColorStickyNavigationScrolled != abstractTheme.elevations.elevationColorStickyNavigationScrolled)
        #expect(inheritedTheme.elevations.elevationColorStickyNavigationScrolled == MockThemeElevationSemanticTokensProvider.mockThemeElevationColorRawToken)
    }
}

// swiftlint:enable type_name
