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

/// Class to make UI tests on the fake component `OUDSFormsTextInput` using the
/// [swift-snapshot-testing](https://github.com/pointfreeco/swift-snapshot-testing) library.
final class OUDSFormsTextInputUITests: XCTestCase {

    // MARK: - Wrapper

    private struct TestFormsTextInput: View {
        @State private var value: String = ""

        var body: some View {
            OUDSFormsTextInput(placeholder: "AddText Here", value: $value)
        }
    }

    // MARK: - Tests

    func testOUDSFormsTextInput_OrangeTheme() {
        Snapshot.assert(TestFormsTextInput().environment(\.theme, OrangeTheme()), testName: "\(#function)OrangeTheme")
    }

    func testOUDSFormsTextInput_SoshTheme() {
        Snapshot.assert(TestFormsTextInput().environment(\.theme, SoshTheme()), testName: "\(#function)SoshTheme")
    }

    func testOUDSFormsTextInput_InverseTheme() {
        Snapshot.assert(TestFormsTextInput().environment(\.theme, InverseTheme()), testName: "\(#function)InverseTheme")
    }
}
