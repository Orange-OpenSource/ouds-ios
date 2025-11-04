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

    @Test("The default theme tuning must not have rounded corners")
    func defaultThemeTuningRoundedCorners() throws {
        #expect(Tuning.default.hasRoundedButtons == false)
        #expect(Tuning.default.hasRoundedTextInputs == false)
    }

    // MARK: - Orange France

    @Test("The Orange France tuning must not have rounded corners")
    func orangeFranceThemeTuning() throws {
        #expect(Tuning.OrangeFrance.hasRoundedButtons == false)
        #expect(Tuning.OrangeFrance.hasRoundedTextInputs == false)
    }

    @Test("The Orange France tuning is the same as the default tuning")
    func orangeFranceThemeTuningIsSameAsDefault() throws {
        #expect(Tuning.OrangeFrance == Tuning.default)
    }

    // MARK: - Orange Business

    @Test("The Orange Business tuning just has rounded text inputs")
    func orangeBusinessThemeTuning() throws {
        #expect(Tuning.OrangeBusiness.hasRoundedButtons == false)
        #expect(Tuning.OrangeBusiness.hasRoundedTextInputs == true)
    }

    // MARK: - Max It

    @Test("The Max it tuning just has everything rounded")
    func maxItThemeTuning() throws {
        #expect(Tuning.MaxIt.hasRoundedButtons == true)
        #expect(Tuning.MaxIt.hasRoundedTextInputs == true)
    }
}
