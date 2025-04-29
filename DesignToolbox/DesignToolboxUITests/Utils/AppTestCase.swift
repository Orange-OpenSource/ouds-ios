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

    // MARK: - l10n

    private let testBundle = Bundle(for: AppTestCase.self)

    func wording(for key: String) -> String {
        key.localized(bundle: testBundle)
    }

    // MARK: - Tuning

    override open func setUpWithError() throws {
        continueAfterFailure = false
    }

    override open func tearDownWithError() throws { }

    // MARK: - Application

    @MainActor
    func launchApp() -> XCUIApplication {
        let app = XCUIApplication()
        app.launch()
        return app
    }

    // MARK: - Button

    /// Tap on a UI element seen as a button (cf *Accessibility Inspector* with the given string as text
    @MainActor func tapButton(withText text: String, _ app: XCUIApplication) {
        let buttonToTap = app.buttons[text]
        XCTAssertTrue(buttonToTap.exists, "The button with text '\(text)' does not exist")
        buttonToTap.tap()
    }

    /// Tap on a UI element seen as a button (cf *Accessibility Inspector* with the given string as  wording key
    @MainActor func tapButton(withWording key: String, _ app: XCUIApplication) {
        let wording = wording(for: key)
        let buttonToTap = app.buttons[wording]
        XCTAssertTrue(buttonToTap.exists, "The button with wording key '\(key)' (value '\(wording)') does not exist")
        buttonToTap.tap()
    }

    // MARK: - Texts

    @MainActor
    func assertStaticTextExists(_ content: String, _ app: XCUIApplication) {
        let text = app.staticTexts[content]
        XCTAssertTrue(text.exists, "The expected text content '\(content)' does not exist")
    }

    // MARK: - Swipe

    @MainActor
    func swipeFromDownToUp(_ app: XCUIApplication) {
        app.swipeUp()
    }

    // MARK: - Images

    /// Tap on a UI element seen as a image with the given name
    @MainActor func tapImage(withName name: String, _ app: XCUIApplication) {
        let imageToTap = app.images[name]
        XCTAssertTrue(imageToTap.exists, "The image with name '\(name)' does not exist")
        imageToTap.tap()
    }

    // MARK: - Assertions

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

    // MARK: - Navigations helpers

    /// Opens the page of the components, i.e. tap on the 2nd of the tab bar
    @MainActor func goToComponentsSheet(_ app: XCUIApplication) {
        app.tabBars.buttons.element(boundBy: 1).tap()
    }
}

// swiftlint:enable required_deinit
// swiftlint:enable empty_xctest_method
