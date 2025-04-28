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
// swiftlint:disable empty_xctest_method

/// Provides utility functions and tools for tests like actions on views and components
open class AppTestCase: XCTestCase {

    // MARK: l10n

    let testBundle = Bundle(for: AppTestCase.self)

    private var currentLanguage: (langCode: String, localeCode: String)? {
        let currentLocale = Locale(identifier: Locale.preferredLanguages.first!)
        guard let langCode = currentLocale.languageCode else {
            return nil
        }
        var localeCode = langCode
        if let scriptCode = currentLocale.scriptCode {
            localeCode = "\(langCode)-\(scriptCode)"
        } else if let regionCode = currentLocale.regionCode {
            localeCode = "\(langCode)-\(regionCode)"
        }
        return (langCode, localeCode)
    }

    // MARK: Tuning

    override open func setUpWithError() throws {
        continueAfterFailure = false
    }

    override open func tearDownWithError() throws { }

    // MARK: Application

    @MainActor
    func launchApp() -> XCUIApplication {
        let app = XCUIApplication()
        app.launch()
        return app
    }

    // MARK: Button

    @MainActor
    func tap(button: String, _ app: XCUIApplication) {
        let buttonToTap = app.buttons[button]
        XCTAssertTrue(buttonToTap.exists, "The button with id '\(button)' does not exist")
        buttonToTap.tap()
    }

    // MARK: Text

    @MainActor
    func tap(text: String, at index: Int, _ app: XCUIApplication) {
        let elements = app.staticTexts.matching(identifier: text)
        XCTAssertTrue(elements.count >= index, "Not enough items with id '\(text)'")
        let element = elements.element(boundBy: index)
        XCTAssertTrue(element.exists, "The text with id '\(text)' does not exist")
        element.tap()
    }

    // MARK: Text Field

    @MainActor
    func write(_ text: String, in textField: String, _ app: XCUIApplication) {
        let textFieldInput = app.textFields[textField]
        XCTAssertTrue(textFieldInput.exists, "The text field with id '\(textField)' does not exist")
        textFieldInput.tap()
        textFieldInput.typeText(text)
        XCTAssertEqual(textFieldInput.value as? String, text, "The text to write is not the expected one: \(String(describing: textFieldInput.value))")
    }

    // MARK: Toggle

    @MainActor
    func toggle(toggle: String, switchedOn: Bool, _ app: XCUIApplication) {
        let `switch` = app.switches[toggle]
        XCTAssertTrue(`switch`.exists, "The toggle with id '\(toggle)' does not exist")
        let initialState = `switch`.isOn
        if switchedOn && !`switch`.isOn {
            `switch`.switches.firstMatch.tap()
            XCTAssertNotEqual(`switch`.isOn, initialState, "Toogle state was not changed.")
        } else if !switchedOn && `switch`.isOn {
            `switch`.switches.firstMatch.tap()
            XCTAssertNotEqual(`switch`.isOn, initialState, "Toogle state was not changed.")
        }
    }

    // MARK: Swipe

    @MainActor
    func swipeFromDownToUp(_ app: XCUIApplication) {
        app.swipeUp()
    }
 
    // MARK: Navigation
 
    @MainActor
    func goBack(_ app: XCUIApplication) {
        app.navigationBars.children(matching: .button).firstMatch.tap()
    }

    // MARK: Assertions

    @MainActor
    func assertText(_ id: String, at index: Int, contains text: String, _ app: XCUIApplication) {
        let elements = app.staticTexts.matching(identifier: id)
        XCTAssertTrue(elements.count >= index, "Not enough items with id '\(id)'")
        let element = elements.element(boundBy: index)
        let value = element.label
        XCTAssertTrue(value == text, "The value is not the expected one. Got '\(String(describing: value))' and expected: '\(text)'")
    }

    @MainActor
    func assertText(_ id: String, contains text: String, _ app: XCUIApplication) {
        let staticText = app.staticTexts[id]
        XCTAssertTrue(staticText.exists, "The static text with id '\([id])' does not exist")
        let value = staticText.label
        XCTAssertTrue(value == text, "The value is not the expected one. Got '\(String(describing: value))' and expected: '\(text)'")
    }

    @MainActor
    func assertTextExists(_ id: String, _ app: XCUIApplication) {
        let text = app.textFields[id]
        XCTAssertTrue(text.exists, "The element with id '\(id)' does not exist")
    }

    // MARK: - Helpers

    @MainActor
    func goToComponentsSheet(_ app: XCUIApplication) {
        tap(button: A11YID.Tabs.components, app)
    }
}

// MARK: - Extensions

extension XCUIElement {

    var isOn: Bool {
        (value as? String) == "1"
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable empty_xctest_method
