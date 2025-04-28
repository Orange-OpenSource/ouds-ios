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
    func testCheckboxPicker() throws {

        // GIVEN (add or edit baby view)

        let app = launchApp()
        goToComponentsSheet(app)
        swipeFromDownToUp(app)
        tap(text: A11YID.ComponentsPages.checkboxPage, at: 0, app)
        tap(text: A11YID.Components.Checkbox.checkboxPicker, at: 0, app)

//        // WHEN (add or edit baby view)
//        
//        write(babyFirstname, in: A11YID.AddOrEditBaby.inputFirstName, app)
//        write(babyLastname, in: A11YID.AddOrEditBaby.inputLastName, app)
//        tap(button: A11YID.AddOrEditBaby.selectGender, app)
//        tap(button: babyGenderA11YID, app)
//        toggle(toggle: A11YID.AddOrEditBaby.toggleUnknownBirthdate, switchedOn: true, app)
//        write(babyBirthplace, in: A11YID.AddOrEditBaby.inputBirthPlace, app)
//        // Here by default "Unknown blood type" is switched on
//        // Here by default "No use of photo" is switched on
//        swipeFromDownToUp(app)
//        tap(button: A11YID.AddOrEditBaby.formSubmit, app)
//        tap(button: A11YID.AddOrEditBaby.confirmAddBaby, app)
//        
//        // THEN (babies list view)
//        
//        assertText(A11YID.BabiesList.firstName, at: expectedIndexOfNewBabyInList, contains: babyFirstname, app)
//        assertText(A11YID.BabiesList.lastName, at: expectedIndexOfNewBabyInList, contains: babyLastname.uppercased(), app)
//        assertText(A11YID.BabiesList.gender, at: expectedIndexOfNewBabyInList, contains: babyGenderString, app)
//        
//        // AND (baby details view)
//    
//        tap(text: A11YID.BabiesList.firstName, at: expectedIndexOfNewBabyInList, app)
//        assertText(A11YID.DisplayBaby.firstName, contains: babyFirstname, app)
//        assertText(A11YID.DisplayBaby.lastName, contains: babyLastname.uppercased(), app)
//        assertText(A11YID.BabiesList.gender, contains: babyGenderString, app)
//        assertText(A11YID.DisplayBaby.birthDay, contains: wording(for: "shared.no_value"), app)
//        assertText(A11YID.DisplayBaby.birthPlace, contains: babyBirthplace, app)
//        swipeFromDownToUp(app)
//        assertText(A11YID.DisplayBaby.bloodType, contains: wording(for: "shared.no_value"), app)
//        assertText(A11YID.DisplayBaby.noParents, contains: wording(for: "babies.add_new_baby.no_parents"), app)
    }
}

// swiftlint:enable required_deinit
