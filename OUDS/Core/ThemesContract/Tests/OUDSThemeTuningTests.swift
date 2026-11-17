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
        #expect(Tuning.default.hasRoundedButton == false)
        #expect(Tuning.default.hasRoundedInput == false)
        #expect(Tuning.default.hasRoundedAlert == false)
        #expect(Tuning.default.hasRoundedProgressIndicator == false)
        #expect(Tuning.default.hasRoundedCardItem == false)
        #expect(Tuning.default.hasRoundedChatInput == false)
        #expect(Tuning.default.hasRoundedModal == false)
    }

    @Test
    @available(*, deprecated)
    func defaultThemeTuningDeprecatedProperties() {
        #expect(Tuning.default.hasRoundedButtons == false)
        #expect(Tuning.default.hasRoundedTextInputs == false)
        #expect(Tuning.default.hasRoundedAlertMessages == false)
        #expect(Tuning.default.hasRoundedProgressIndicators == false)
        #expect(Tuning.default.hasRoundedListItems == false)
    }

    // MARK: - Orange France

    @Test
    func orangeFranceThemeTuning() {
        #expect(Tuning.OrangeFrance.hasRoundedButton == false)
        #expect(Tuning.OrangeFrance.hasRoundedInput == false)
        #expect(Tuning.OrangeFrance.hasRoundedAlert == false)
        #expect(Tuning.OrangeFrance.hasRoundedProgressIndicator == false)
        #expect(Tuning.OrangeFrance.hasRoundedCardItem == false)
        #expect(Tuning.OrangeFrance.hasRoundedChatInput == true)
        #expect(Tuning.OrangeFrance.hasRoundedModal == false)
    }

    @Test
    @available(*, deprecated)
    func orangeFranceThemeTuningDeprecatedProperties() {
        #expect(Tuning.OrangeFrance.hasRoundedButtons == false)
        #expect(Tuning.OrangeFrance.hasRoundedTextInputs == false)
        #expect(Tuning.OrangeFrance.hasRoundedAlertMessages == false)
        #expect(Tuning.OrangeFrance.hasRoundedProgressIndicators == false)
        #expect(Tuning.OrangeFrance.hasRoundedListItems == false)
    }

    @Test
    func orangeFranceThemeTuningIsNotTheDefaultOne() {
        #expect(Tuning.OrangeFrance != Tuning.default)
    }

    // MARK: - Orange Business

    @Test
    func orangeBusinessThemeTuning() {
        #expect(Tuning.OrangeBusiness.hasRoundedButton == true)
        #expect(Tuning.OrangeBusiness.hasRoundedInput == true)
        #expect(Tuning.OrangeBusiness.hasRoundedAlert == true)
        #expect(Tuning.OrangeBusiness.hasRoundedProgressIndicator == true)
        #expect(Tuning.OrangeBusiness.hasRoundedCardItem == true)
        #expect(Tuning.OrangeBusiness.hasRoundedChatInput == true)
        #expect(Tuning.OrangeBusiness.hasRoundedModal == true)
    }

    @Test
    @available(*, deprecated)
    func orangeBusinessThemeTuningDeprecatedProperties() {
        #expect(Tuning.OrangeBusiness.hasRoundedButtons == true)
        #expect(Tuning.OrangeBusiness.hasRoundedTextInputs == true)
        #expect(Tuning.OrangeBusiness.hasRoundedAlertMessages == true)
        #expect(Tuning.OrangeBusiness.hasRoundedProgressIndicators == true)
        #expect(Tuning.OrangeBusiness.hasRoundedListItems == true)
    }

    @Test
    func orangeBusinessThemeTuningIsAllRounded() {
        #expect(Tuning.OrangeBusiness == Tuning.allRounded)
    }

    // MARK: - Max It

    @Test
    func maxItThemeTuning() {
        #expect(Tuning.MaxIt.hasRoundedButton == true)
        #expect(Tuning.MaxIt.hasRoundedInput == true)
        #expect(Tuning.MaxIt.hasRoundedAlert == true)
        #expect(Tuning.MaxIt.hasRoundedProgressIndicator == true)
        #expect(Tuning.MaxIt.hasRoundedCardItem == true)
        #expect(Tuning.MaxIt.hasRoundedChatInput == true)
        #expect(Tuning.MaxIt.hasRoundedModal == true)
    }

    @Test
    @available(*, deprecated)
    func maxItThemeTuningDeprecatedProperties() {
        #expect(Tuning.MaxIt.hasRoundedButtons == true)
        #expect(Tuning.MaxIt.hasRoundedTextInputs == true)
        #expect(Tuning.MaxIt.hasRoundedAlertMessages == true)
        #expect(Tuning.MaxIt.hasRoundedProgressIndicators == true)
        #expect(Tuning.MaxIt.hasRoundedListItems == true)
    }

    // MARK: - Helpers tuning

    @Test
    func nothingRoundedTuning() {
        #expect(Tuning.nothingRounded.hasRoundedButton == false)
        #expect(Tuning.nothingRounded.hasRoundedInput == false)
        #expect(Tuning.nothingRounded.hasRoundedAlert == false)
        #expect(Tuning.nothingRounded.hasRoundedProgressIndicator == false)
        #expect(Tuning.nothingRounded.hasRoundedCardItem == false)
        #expect(Tuning.nothingRounded.hasRoundedChatInput == false)
        #expect(Tuning.nothingRounded.hasRoundedModal == false)
    }

    @Test
    @available(*, deprecated)
    func nothingRoundedTuningDeprecatedProperties() {
        #expect(Tuning.nothingRounded.hasRoundedButtons == false)
        #expect(Tuning.nothingRounded.hasRoundedTextInputs == false)
        #expect(Tuning.nothingRounded.hasRoundedAlertMessages == false)
        #expect(Tuning.nothingRounded.hasRoundedProgressIndicators == false)
        #expect(Tuning.nothingRounded.hasRoundedListItems == false)
    }

    @Test
    func allRoundedTuning() {
        #expect(Tuning.allRounded.hasRoundedButton == true)
        #expect(Tuning.allRounded.hasRoundedInput == true)
        #expect(Tuning.allRounded.hasRoundedAlert == true)
        #expect(Tuning.allRounded.hasRoundedProgressIndicator == true)
        #expect(Tuning.allRounded.hasRoundedCardItem == true)
        #expect(Tuning.allRounded.hasRoundedChatInput == true)
        #expect(Tuning.allRounded.hasRoundedModal == true)
    }

    @Test
    @available(*, deprecated)
    func allRoundedTuningDeprecatedProperties() {
        #expect(Tuning.allRounded.hasRoundedButtons == true)
        #expect(Tuning.allRounded.hasRoundedTextInputs == true)
        #expect(Tuning.allRounded.hasRoundedAlertMessages == true)
        #expect(Tuning.allRounded.hasRoundedProgressIndicators == true)
        #expect(Tuning.allRounded.hasRoundedListItems == true)
    }

    // MARK: - Custom tuning

    @Test("Tuning init values must be reflected by old and new properties")
    @available(*, deprecated)
    func customTuningWithEveryValuesSet() {
        let tuning = Tuning(hasRoundedButtons: true,
                            hasRoundedChatInput: false,
                            hasRoundedTextInputs: false,
                            hasRoundedAlertMessages: true,
                            hasRoundedModal: true,
                            hasRoundedProgressIndicators: false,
                            hasRoundedListItems: true)
        #expect(tuning.hasRoundedButton == true)
        #expect(tuning.hasRoundedButtons == true)
        #expect(tuning.hasRoundedChatInput == false)
        #expect(tuning.hasRoundedInput == false)
        #expect(tuning.hasRoundedTextInputs == false)
        #expect(tuning.hasRoundedAlert == true)
        #expect(tuning.hasRoundedAlertMessages == true)
        #expect(tuning.hasRoundedModal == true)
        #expect(tuning.hasRoundedProgressIndicator == false)
        #expect(tuning.hasRoundedProgressIndicators == false)
        #expect(tuning.hasRoundedCardItem == true)
        #expect(tuning.hasRoundedListItems == true)
    }

    @Test
    func newPropertiesOnlyTuning() {
        let tuning = Tuning(hasRoundedChatInput: true, hasRoundedModal: true)
        #expect(tuning.hasRoundedChatInput == true)
        #expect(tuning.hasRoundedModal == true)
        #expect(tuning.hasRoundedButton == false)
        #expect(tuning.hasRoundedInput == false)
        #expect(tuning.hasRoundedAlert == false)
        #expect(tuning.hasRoundedProgressIndicator == false)
        #expect(tuning.hasRoundedCardItem == false)
    }

    @Test
    func tuningEquality() {
        #expect(Tuning(hasRoundedChatInput: true) == Tuning.OrangeFrance)
        #expect(Tuning(hasRoundedModal: true) != Tuning.default)
        #expect(Tuning(hasRoundedChatInput: true) != Tuning(hasRoundedModal: true))
    }
}
