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

// MARK: - Environment values

public struct ButtonOnColoredSurfaceEnvironmentKey: EnvironmentKey {

    public static let defaultValue = false
}

extension EnvironmentValues {

    /// Indicate if button is on colored surface
    public var buttonOnColoredSurface: Bool {
        get {
            self[ButtonOnColoredSurfaceEnvironmentKey.self]
        }
        set {
            self[ButtonOnColoredSurfaceEnvironmentKey.self] = newValue
        }
    }
}
