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
import OUDS
import Testing
import TestsUtils

/// Some tests on the default theme tuning setup
struct OUDSThemeThemeTuningTests {

    @Test("The default theme tuning must not have rounded corners")
    func defaultThemeTuningRoundedCorners() throws {
        #expect(OUDSTheme.ThemeTuning.default.hasRoundedCorners == false)
    }
}
