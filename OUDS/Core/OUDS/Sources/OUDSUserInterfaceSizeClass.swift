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

import SwiftUICore
import UIKit

// MARK: - Environment values
// swiftlint:disable type_name
private struct HorizontalUserInterfaceSizeClassContractEnvironmentKey: EnvironmentKey {

    static let defaultValue = OUDSUserInterfaceSizeClass.regular
}
private struct VerticalUserInterfaceSizeClassContractEnvironmentKey: EnvironmentKey {

    static let defaultValue = OUDSUserInterfaceSizeClass.regular
}

extension EnvironmentValues {

    /// The `OUDSUserInterfaceSizeClass` instance exposed as en environment values across the library for the horizontal viewport.
    public var oudsHorizontalUserInterfaceSizeClass: OUDSUserInterfaceSizeClass {
        get {
            self[HorizontalUserInterfaceSizeClassContractEnvironmentKey.self]
        }
        set {
            self[HorizontalUserInterfaceSizeClassContractEnvironmentKey.self] = newValue
        }
    }

    /// The `OUDSUserInterfaceSizeClass` instance exposed as en environment values across the library for the vertical viewport.
    public var oudsVerticalUserInterfaceSizeClass: OUDSUserInterfaceSizeClass {
        get {
            self[VerticalUserInterfaceSizeClassContractEnvironmentKey.self]
        }
        set {
            self[VerticalUserInterfaceSizeClassContractEnvironmentKey.self] = newValue
        }
    }
}

public enum OUDSUserInterfaceSizeClass: String, Sendable {
    case extraCompact
    case compact
    case regular
}
