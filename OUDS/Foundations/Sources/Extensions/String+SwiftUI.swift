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
import SwiftUI

extension String {

    public var color: Color! {
        Color(hexadecimalCode: self)
    }

    public var fontWeight: Font.Weight {
        if self == "thin" { return Font.Weight.thin }
        if self == "ultraLight" { return Font.Weight.ultraLight }
        if self == "light" { return Font.Weight.light }
        if self == "regular" { return Font.Weight.regular }
        if self == "medium" { return Font.Weight.medium }
        if self == "semibold" { return Font.Weight.semibold }
        if self == "bold" { return Font.Weight.bold }
        if self == "heavy" { return Font.Weight.heavy }
        return Font.Weight.regular
    }
}
