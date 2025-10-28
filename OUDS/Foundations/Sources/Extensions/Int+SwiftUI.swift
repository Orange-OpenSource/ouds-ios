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

import SwiftUI

extension Int {

    /// `Int` extension to get `Font.Weight` of *SwiftUI* from its integer representation.
    public var weight: Font.Weight {
        if self < 0 { return Font.Weight.regular }
        if self <= 100 { return Font.Weight.thin }
        if self <= 200 { return Font.Weight.ultraLight }
        if self <= 300 { return Font.Weight.light }
        if self <= 400 { return Font.Weight.regular }
        if self <= 500 { return Font.Weight.medium }
        if self <= 600 { return Font.Weight.semibold }
        if self <= 700 { return Font.Weight.bold }
        // No Font.Weight.extraBold for 800
        // No Font.Weight.extraBlack for 950
        // From 701 to 950, assume it is the only higher value, i.e. black
        if self <= 950 { return Font.Weight.black }
        return Font.Weight.regular
    }
}
