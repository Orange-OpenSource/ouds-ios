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

extension Bundle {

    /// Returns the fist preferred localization according to `Bundle.main`, or at least, "en"
    static var preferredLocalization: String {
        guard let firstPreferredLocalization = Bundle.main.preferredLocalizations.first else {
            OL.warning("Not able to find first preferred localization!")
            return "en"
        }
        return firstPreferredLocalization
    }
}
