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
}
