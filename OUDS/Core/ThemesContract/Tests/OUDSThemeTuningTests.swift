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

/// Some tests on the default theme tuning setup
struct OUDSThemeTuningTests {

    // MARK: - Defaults

    @Test
    func `The default theme tuning must not have rounded corners`() {
        #expect(Tuning.default.hasRoundedButtons == false)
        #expect(Tuning.default.hasRoundedTextInputs == false)
        #expect(Tuning.default.hasRoundedAlertMessages == false)
        #expect(Tuning.default.hasRoundedProgressIndicators == false)
        #expect(Tuning.default.hasRoundedListItems == false)
        #expect(Tuning.default.hasRoundedCard == false)
    }

    // MARK: - Orange France

    @Test
    func `orange france theme tuning`() {
        #expect(Tuning.OrangeFrance.hasRoundedButtons == false)
        #expect(Tuning.OrangeFrance.hasRoundedTextInputs == false)
        #expect(Tuning.OrangeFrance.hasRoundedAlertMessages == false)
        #expect(Tuning.OrangeFrance.hasRoundedProgressIndicators == false)
        #expect(Tuning.OrangeFrance.hasRoundedListItems == false)
        #expect(Tuning.OrangeFrance.hasRoundedCard == false)
    }

    @Test
    func `orange france theme tuning is same as default`() {
        #expect(Tuning.OrangeFrance == Tuning.default)
    }

    // MARK: - Orange Business

    @Test
    func `orange business theme tuning`() {
        #expect(Tuning.OrangeBusiness.hasRoundedButtons == false)
        #expect(Tuning.OrangeBusiness.hasRoundedTextInputs == true)
        #expect(Tuning.OrangeBusiness.hasRoundedAlertMessages == false)
        #expect(Tuning.OrangeBusiness.hasRoundedProgressIndicators == false)
        #expect(Tuning.OrangeBusiness.hasRoundedListItems == false)
        #expect(Tuning.OrangeBusiness.hasRoundedCard == false)
    }

    // MARK: - Max It

    @Test
    func `The Max it tuning just has everything rounded`() {
        #expect(Tuning.MaxIt.hasRoundedButtons == true)
        #expect(Tuning.MaxIt.hasRoundedTextInputs == true)
        #expect(Tuning.MaxIt.hasRoundedAlertMessages == true)
        #expect(Tuning.MaxIt.hasRoundedProgressIndicators == true)
        #expect(Tuning.MaxIt.hasRoundedListItems == true)
        #expect(Tuning.MaxIt.hasRoundedCard == true)
    }

    // MARK: - Helpers tuning

    @Test
    func `nothing rounded tuning`() {
        #expect(Tuning.nothingRounded.hasRoundedButtons == false)
        #expect(Tuning.nothingRounded.hasRoundedTextInputs == false)
        #expect(Tuning.nothingRounded.hasRoundedAlertMessages == false)
        #expect(Tuning.nothingRounded.hasRoundedProgressIndicators == false)
        #expect(Tuning.nothingRounded.hasRoundedListItems == false)
        #expect(Tuning.nothingRounded.hasRoundedCard == false)
    }

    @Test
    func `all rounded tuning`() {
        #expect(Tuning.allRounded.hasRoundedButtons == true)
        #expect(Tuning.allRounded.hasRoundedTextInputs == true)
        #expect(Tuning.allRounded.hasRoundedAlertMessages == true)
        #expect(Tuning.allRounded.hasRoundedProgressIndicators == true)
        #expect(Tuning.allRounded.hasRoundedListItems == true)
        #expect(Tuning.allRounded.hasRoundedCard == true)
    }
}
