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

/// The architecture of _OUDS iOS_ _Swift package_ library is based on _object oriented paradigm_ and overriding of classes.
/// In fact the `OUDSTheme` object is a class, which can be seen as an _asbtract class_, exposing through its extensions and protocols some properties.
/// These properties should be overridable by subclasses like the `OrangeTheme` default theme.
/// **These tests checks if any _non token properties_ can be surcharged by a child theme**
struct ThemeOverrideOfThemePropertiesTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme(fontFamily: "Mr R08øT")
    }

    @Test func inheritedThemeCanOverrideFontFamily() throws {
        #expect(inheritedTheme.fontFamily != abstractTheme.fontFamily)
        #expect(inheritedTheme.fontFamily == "Mr R08øT")
    }
}
