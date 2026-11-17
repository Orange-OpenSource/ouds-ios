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

import Foundation
import OUDSThemesContract
import Testing

/// Some tests on the theme tunings setup
struct OUDSThemeTuningTests {

    // MARK: - Defaults

    @Test
    func defaultThemeTuning() {
        #expect(Tuning.default.hasRoundedButtons == false)
        #expect(Tuning.default.hasRoundedInputs == false)
        #expect(Tuning.default.hasRoundedAlerts == false)
        #expect(Tuning.default.hasRoundedProgressIndicators == false)
        #expect(Tuning.default.hasRoundedCardItems == false)
        #expect(Tuning.default.hasRoundedChatInputs == false)
        #expect(Tuning.default.hasRoundedModals == false)
    }

    @Test
    @available(*, deprecated)
    func defaultThemeTuningDeprecatedProperties() {
        #expect(Tuning.default.hasRoundedTextInputs == false)
        #expect(Tuning.default.hasRoundedAlertMessages == false)
        #expect(Tuning.default.hasRoundedListItems == false)
    }

    // MARK: - Orange France

    @Test
    func orangeFranceThemeTuning() {
        #expect(Tuning.OrangeFrance.hasRoundedButtons == false)
        #expect(Tuning.OrangeFrance.hasRoundedInputs == false)
        #expect(Tuning.OrangeFrance.hasRoundedAlerts == false)
        #expect(Tuning.OrangeFrance.hasRoundedProgressIndicators == false)
        #expect(Tuning.OrangeFrance.hasRoundedCardItems == false)
        #expect(Tuning.OrangeFrance.hasRoundedChatInputs == true)
        #expect(Tuning.OrangeFrance.hasRoundedModals == false)
    }

    @Test
    @available(*, deprecated)
    func orangeFranceThemeTuningDeprecatedProperties() {
        #expect(Tuning.OrangeFrance.hasRoundedTextInputs == false)
        #expect(Tuning.OrangeFrance.hasRoundedAlertMessages == false)
        #expect(Tuning.OrangeFrance.hasRoundedListItems == false)
    }

    @Test
    func orangeFranceThemeTuningIsNotTheDefaultOne() {
        #expect(Tuning.OrangeFrance != Tuning.default)
    }

    // MARK: - Orange Business

    @Test
    func orangeBusinessThemeTuning() {
        #expect(Tuning.OrangeBusiness.hasRoundedButtons == true)
        #expect(Tuning.OrangeBusiness.hasRoundedInputs == true)
        #expect(Tuning.OrangeBusiness.hasRoundedAlerts == true)
        #expect(Tuning.OrangeBusiness.hasRoundedProgressIndicators == true)
        #expect(Tuning.OrangeBusiness.hasRoundedCardItems == true)
        #expect(Tuning.OrangeBusiness.hasRoundedChatInputs == true)
        #expect(Tuning.OrangeBusiness.hasRoundedModals == true)
    }

    @Test
    @available(*, deprecated)
    func orangeBusinessThemeTuningDeprecatedProperties() {
        #expect(Tuning.OrangeBusiness.hasRoundedTextInputs == true)
        #expect(Tuning.OrangeBusiness.hasRoundedAlertMessages == true)
        #expect(Tuning.OrangeBusiness.hasRoundedListItems == true)
    }

    @Test
    func orangeBusinessThemeTuningIsAllRounded() {
        #expect(Tuning.OrangeBusiness == Tuning.allRounded)
    }

    // MARK: - Max It

    @Test
    func maxItThemeTuning() {
        #expect(Tuning.MaxIt.hasRoundedButtons == true)
        #expect(Tuning.MaxIt.hasRoundedInputs == true)
        #expect(Tuning.MaxIt.hasRoundedAlerts == true)
        #expect(Tuning.MaxIt.hasRoundedProgressIndicators == true)
        #expect(Tuning.MaxIt.hasRoundedCardItems == true)
        #expect(Tuning.MaxIt.hasRoundedChatInputs == true)
        #expect(Tuning.MaxIt.hasRoundedModals == true)
    }

    @Test
    @available(*, deprecated)
    func maxItThemeTuningDeprecatedProperties() {
        #expect(Tuning.MaxIt.hasRoundedTextInputs == true)
        #expect(Tuning.MaxIt.hasRoundedAlertMessages == true)
        #expect(Tuning.MaxIt.hasRoundedListItems == true)
    }

    // MARK: - Helpers tuning

    @Test
    func nothingRoundedTuning() {
        #expect(Tuning.nothingRounded.hasRoundedButtons == false)
        #expect(Tuning.nothingRounded.hasRoundedInputs == false)
        #expect(Tuning.nothingRounded.hasRoundedAlerts == false)
        #expect(Tuning.nothingRounded.hasRoundedProgressIndicators == false)
        #expect(Tuning.nothingRounded.hasRoundedCardItems == false)
        #expect(Tuning.nothingRounded.hasRoundedChatInputs == false)
        #expect(Tuning.nothingRounded.hasRoundedModals == false)
    }

    @Test
    @available(*, deprecated)
    func nothingRoundedTuningDeprecatedProperties() {
        #expect(Tuning.nothingRounded.hasRoundedTextInputs == false)
        #expect(Tuning.nothingRounded.hasRoundedAlertMessages == false)
        #expect(Tuning.nothingRounded.hasRoundedListItems == false)
    }

    @Test
    func allRoundedTuning() {
        #expect(Tuning.allRounded.hasRoundedButtons == true)
        #expect(Tuning.allRounded.hasRoundedInputs == true)
        #expect(Tuning.allRounded.hasRoundedAlerts == true)
        #expect(Tuning.allRounded.hasRoundedProgressIndicators == true)
        #expect(Tuning.allRounded.hasRoundedCardItems == true)
        #expect(Tuning.allRounded.hasRoundedChatInputs == true)
        #expect(Tuning.allRounded.hasRoundedModals == true)
    }

    @Test
    @available(*, deprecated)
    func allRoundedTuningDeprecatedProperties() {
        #expect(Tuning.allRounded.hasRoundedTextInputs == true)
        #expect(Tuning.allRounded.hasRoundedAlertMessages == true)
        #expect(Tuning.allRounded.hasRoundedListItems == true)
    }

    // MARK: - Custom tuning

    @Test("Tuning init values must be reflected by old and new properties")
    @available(*, deprecated)
    func customTuningWithEveryValuesSet() {
        let tuning = Tuning(hasRoundedButtons: true,
                            hasRoundedChatInputs: false,
                            hasRoundedTextInputs: false,
                            hasRoundedAlertMessages: true,
                            hasRoundedModals: true,
                            hasRoundedProgressIndicators: false,
                            hasRoundedListItems: true)
        #expect(tuning.hasRoundedButtons == true)
        #expect(tuning.hasRoundedChatInputs == false)
        #expect(tuning.hasRoundedInputs == false)
        #expect(tuning.hasRoundedTextInputs == false)
        #expect(tuning.hasRoundedAlerts == true)
        #expect(tuning.hasRoundedAlertMessages == true)
        #expect(tuning.hasRoundedModals == true)
        #expect(tuning.hasRoundedProgressIndicators == false)
        #expect(tuning.hasRoundedCardItems == true)
        #expect(tuning.hasRoundedListItems == true)
    }

    @Test
    func newPropertiesOnlyTuning() {
        let tuning = Tuning(hasRoundedChatInputs: true, hasRoundedModals: true)
        #expect(tuning.hasRoundedChatInputs == true)
        #expect(tuning.hasRoundedModals == true)
        #expect(tuning.hasRoundedButtons == false)
        #expect(tuning.hasRoundedInputs == false)
        #expect(tuning.hasRoundedAlerts == false)
        #expect(tuning.hasRoundedProgressIndicators == false)
        #expect(tuning.hasRoundedCardItems == false)
    }

    @Test
    func tuningEquality() {
        #expect(Tuning(hasRoundedChatInputs: true) == Tuning.OrangeFrance)
        #expect(Tuning(hasRoundedModals: true) != Tuning.default)
        #expect(Tuning(hasRoundedChatInputs: true) != Tuning(hasRoundedModals: true))
    }
}
