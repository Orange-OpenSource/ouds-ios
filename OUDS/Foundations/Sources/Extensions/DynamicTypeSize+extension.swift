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

extension DynamicTypeSize {

    /// True if sizes greater or equal than XL (110 %) are used, accessible sizes too
    public var isLargeTextUsed: Bool {
        switch self {
        case .accessibility5,
             .accessibility4,
             .accessibility3,
             .accessibility2,
             .accessibility1,
             .xxxLarge,
             .xxLarge,
             .xLarge:
            true
        default:
            false
        }
    }

    /// Can be used for sizes comparisons.
    /// *Percentage values have been picked from system debug.*
    public var percentageRate: Double {
        switch self {
        case .accessibility5:
            310
        case .accessibility4:
            275
        case .accessibility3:
            235
        case .accessibility2:
            190
        case .accessibility1:
            160
        case .xxxLarge:
            135
        case .xxLarge:
            120
        case .xLarge:
            110
        case .large:
            100
        case .medium:
            90
        case .small:
            85
        case .xSmall:
            80
        default:
            0
        }
    }
}
