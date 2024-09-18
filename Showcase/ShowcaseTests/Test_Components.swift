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

import OUDS_Showcase
import OUDSComponents
import OUDSThemesOrange
import OUDSThemesSosh
import OUDSThemesInverse
import SwiftUI
import XCTest

final class Test_Components: XCTestCase {

    struct TestFormsTextInput: View {
        @State private var value: String = ""

        var body: some View {
            OUDSFormsTextInput(placeholder: "AddText Here", value: $value)
        }
    }

    // ===========
    // MARK: Tests
    // ===========

    func testFormsTextInput() {
        let testName = "testFormsTextInput"
        Snapshot.assert(TestFormsTextInput().environment(\.theme, OrangeTheme()), testName: "\(#function)OrangeTheme")
        Snapshot.assert(TestFormsTextInput().environment(\.theme, SoshTheme()), testName: "\(#function)SoshTheme")
        Snapshot.assert(TestFormsTextInput().environment(\.theme, InverseTheme()), testName: "\(#function)InverseTheme")
    }

    func testElevation() {
        Snapshot.assert(ElevationsList().environment(\.theme, OrangeTheme()), testName: "\(#function)OrangeTheme")
        Snapshot.assert(ElevationsList().environment(\.theme, SoshTheme()), testName: "\(#function)SoshTheme")
        Snapshot.assert(ElevationsList().environment(\.theme, InverseTheme()), testName: "\(#function)InverseTheme")
    }
}
