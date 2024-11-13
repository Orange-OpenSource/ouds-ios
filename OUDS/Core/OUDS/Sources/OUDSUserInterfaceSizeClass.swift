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
private struct OudsHorizontalSizeClassEnvironmentKey: EnvironmentKey {

    static let defaultValue = OUDSUserInterfaceSizeClass.regular
}

private struct OudsVerticalSizeClassEnvironmentKey: EnvironmentKey {

    static let defaultValue = OUDSUserInterfaceSizeClass.regular
}

extension EnvironmentValues {

    /// The `OUDSUserInterfaceSizeClass` instance exposed as en environment values across the library for the horizontal viewport.
    ///
    /// You receive a ``OUDSUserInterfaceSizeClass`` value when you read this
    /// environment value. The value tells you about the amount of horizontal
    /// space available to the view that reads it. You can read this
    /// size class like any other of the ``EnvironmentValues``, by creating a
    /// property with the ``Environment`` property wrapper:
    ///
    ///     @Environment(\.oudsHorizontalSizeClass) private var horizontalSizeClass
    ///
    public var oudsHorizontalSizeClass: OUDSUserInterfaceSizeClass {
        get {
            self[OudsHorizontalSizeClassEnvironmentKey.self]
        }
        set {
            self[OudsHorizontalSizeClassEnvironmentKey.self] = newValue
        }
    }

    /// The `OUDSUserInterfaceSizeClass` instance exposed as en environment values across the library for the vertical viewport.
    ///
    /// You receive a ``OUDSUserInterfaceSizeClass`` value when you read this
    /// environment value. The value tells you about the amount of vertical
    /// space available to the view that reads it. You can read this
    /// size class like any other of the ``EnvironmentValues``, by creating a
    /// property with the ``Environment`` property wrapper:
    ///
    ///     @Environment(\.oudsVerticalSizeClass) private var verticalSizeClass
    ///
    public var oudsVerticalSizeClass: OUDSUserInterfaceSizeClass {
        get {
            self[OudsVerticalSizeClassEnvironmentKey.self]
        }
        set {
            self[OudsVerticalSizeClassEnvironmentKey.self] = newValue
        }
    }
}

/// Enumerates the size class defined by the deisgn system.
/// The __extraCompact__ size class if for screens with width < 389.
/// The __compact__ and regular size classes are the standard apple classes.
/// see: https://developer.apple.com/design/human-interface-guidelines/layout#iOS-iPadOS-device-size-classes
///
/// remark: This enum is defined as a string to easally displays its raw value.
public enum OUDSUserInterfaceSizeClass: String, Sendable {
    case extraCompact = "Extra Compact"
    case compact = "Compact"
    case regular = "Regular"
}
// swiftlint:enable type_name
