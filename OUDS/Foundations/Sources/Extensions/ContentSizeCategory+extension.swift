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

extension ContentSizeCategory {

    /// True if the size in use is an accessible size (greater or equal than AM, i.e. 160 %)
    public var isAccessible: Bool {
        switch self {
        case .accessibilityExtraExtraExtraLarge,
             .accessibilityExtraExtraLarge,
             .accessibilityExtraLarge,
             .accessibilityLarge,
             .accessibilityMedium:
            true
        default:
            false
        }
    }

    /// True if sizes greater or equal than XL (110 %) are used, accessible sizes too
    public var isLargeTextUsed: Bool {
        switch self {
        case .accessibilityExtraExtraExtraLarge,
             .accessibilityExtraExtraLarge,
             .accessibilityExtraLarge,
             .accessibilityLarge,
             .accessibilityMedium,
             .extraExtraExtraLarge,
             .extraExtraLarge,
             .extraLarge:
            true
        default:
            false
        }
    }

    /// Can be used for sizes comparisons.
    /// *Percentage values have been picked from system debug.*
    public var percentageRate: Double {
        switch self {
        case .accessibilityExtraExtraExtraLarge:
            310
        case .accessibilityExtraExtraLarge:
            275
        case .accessibilityExtraLarge:
            235
        case .accessibilityLarge:
            190
        case .accessibilityMedium:
            160
        case .extraExtraExtraLarge:
            135
        case .extraExtraLarge:
            120
        case .extraLarge:
            110
        case .large:
            100
        case .medium:
            90
        case .small:
            85
        case .extraSmall:
            80
        default:
            0
        }
    }
}
