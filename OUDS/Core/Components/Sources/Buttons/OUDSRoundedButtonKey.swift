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

// MARK: - Environment values for oudsRoundedButton

public struct OUDSRoundedButtonKey: EnvironmentKey {

    public static let defaultValue = false
}

extension EnvironmentValues {

    /// Used by the ``OUDSButton``, the value tells that button should be rounded or not.
    public var oudsRoundedButton: Bool {
        get {
            self[OUDSRoundedButtonKey.self]
        }
        set {
            self[OUDSRoundedButtonKey.self] = newValue
        }
    }
}
