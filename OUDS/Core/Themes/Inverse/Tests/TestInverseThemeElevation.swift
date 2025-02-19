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
import OUDSThemesInverse
import Testing

/// `InverseTheme` is a quite particular theme with "inverse" color palette. Is it neither a light mode theme nor a dark mode theme.
/// This "inverse" mode as colors which, for a given semantic token, has the same value for both light and dark mode.
struct TestInverseThemeElevationColors {

    private var inverseTheme: OUDSTheme

    init() {
        inverseTheme = InverseTheme()
    }

    @Test
    func elevationColorDefault() throws {
        #expect(inverseTheme.elevations.elevationColorDefault.light == inverseTheme.elevations.elevationColorDefault.dark)
    }

    @Test
    func elevationColorNone() throws {
        #expect(inverseTheme.elevations.elevationColorNone.light == inverseTheme.elevations.elevationColorNone.dark)
    }

    @Test
    func elevationColorRaised() throws {
        #expect(inverseTheme.elevations.elevationColorRaised.light == inverseTheme.elevations.elevationColorRaised.dark)
    }

    @Test
    func elevationColorDrag() throws {
        #expect(inverseTheme.elevations.elevationColorDrag.light == inverseTheme.elevations.elevationColorDrag.dark)
    }

    @Test
    func elevationColorEmphasized() throws {
        #expect(inverseTheme.elevations.elevationColorEmphasized.light == inverseTheme.elevations.elevationColorEmphasized.dark)
    }

    @Test
    func elevationColorStickyDefault() throws {
        #expect(inverseTheme.elevations.elevationColorStickyDefault.light == inverseTheme.elevations.elevationColorStickyDefault.dark)
    }

    @Test
    func elevationColorStickyEmphasized() throws {
        #expect(inverseTheme.elevations.elevationColorStickyEmphasized.light == inverseTheme.elevations.elevationColorStickyEmphasized.dark)
    }

    @Test
    func elevationColorStickyNavigationScrolled() throws {
        #expect(inverseTheme.elevations.elevationColorStickyNavigationScrolled.light == inverseTheme.elevations.elevationColorStickyNavigationScrolled.dark)
    }
}
