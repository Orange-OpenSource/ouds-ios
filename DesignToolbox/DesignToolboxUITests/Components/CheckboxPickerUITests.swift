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

// swiftlint:disable required_deinit

/// To make UI tests on some checkbox picker from OUDS
final class CheckboxPickerUITests: AppTestCase {

    @MainActor
    func testCheckboxPickerWithCount() throws {

        // GIVEN

        let app = launchApp()
        goToComponentsSheet(app)
        tapButton(withWording: "app_components_checkbox_label", app)
        tapButton(withWording: "app_components_checkboxPicker_label", app)

        // By default, one element is selected in the picker, wording cannot be used as is
        var expectedPickerRootItemString = wording(for: "app_components_checkboxPicker_root") + " (1)"
        assertStaticTextExists(expectedPickerRootItemString, app)

        // WHEN, THEN

        // Select all
        tapImage(withName: "dog.fill", app)
        tapImage(withName: "waterbottle.fill", app)
        expectedPickerRootItemString = wording(for: "app_components_checkboxPicker_root") + " (3)"
        assertStaticTextExists(expectedPickerRootItemString, app)

        // Unselect some
        tapImage(withName: "dog.fill", app)
        expectedPickerRootItemString = wording(for: "app_components_checkboxPicker_root") + " (2)"
        assertStaticTextExists(expectedPickerRootItemString, app)

        // Unselect all
        tapImage(withName: "flame", app)
        tapImage(withName: "waterbottle.fill", app)
        expectedPickerRootItemString = wording(for: "app_components_checkboxPicker_root")
    }
}

// swiftlint:enable required_deinit
