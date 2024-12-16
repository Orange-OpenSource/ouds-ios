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

private struct HorizontalSizeClassEnvironmentKey: EnvironmentKey {

    static let defaultValue = OUDSUserInterfaceSizeClass.regular
}

private struct VerticalSizeClassEnvironmentKey: EnvironmentKey {

    static let defaultValue = OUDSUserInterfaceSizeClass.regular
}

extension EnvironmentValues {

    /// The `OUDSUserInterfaceSizeClass` instance exposed as en environment values across the library for the horizontal viewport.
    ///
    /// You receive a ``OUDSUserInterfaceSizeClass`` value when you read this environment value.
    /// The value tells you about the amount of horizontal space available to the view that reads it.
    /// You can read this size class like any other of the ``EnvironmentValues``, by creating a property with the `Environment` property wrapper:
    ///
    ///     @Environment(\.oudsHorizontalSizeClass) private var horizontalSizeClass
    ///
    public var oudsHorizontalSizeClass: OUDSUserInterfaceSizeClass {
        get {
            self[HorizontalSizeClassEnvironmentKey.self]
        }
        set {
            self[HorizontalSizeClassEnvironmentKey.self] = newValue
        }
    }

    /// The `OUDSUserInterfaceSizeClass` instance exposed as en environment values across the library for the vertical viewport.
    ///
    /// You receive a ``OUDSUserInterfaceSizeClass`` value when you read this environment value.
    /// The value tells you about the amount of vertical space available to the view that reads it.
    /// You can read this size class like any other of the ``EnvironmentValues``, by creating a property with the `Environment` property wrapper:
    ///
    ///     @Environment(\.oudsVerticalSizeClass) private var verticalSizeClass
    ///
    public var oudsVerticalSizeClass: OUDSUserInterfaceSizeClass {
        get {
            self[VerticalSizeClassEnvironmentKey.self]
        }
        set {
            self[VerticalSizeClassEnvironmentKey.self] = newValue
        }
    }
}

/// Enumerates the size classes defined by the design system.
/// The __extraCompact__ size class if for screens with width < 389.
/// The __compact__ and __regular__ size classes are the standard Apple classes.
///
/// See: https://developer.apple.com/design/human-interface-guidelines/layout#iOS-iPadOS-device-size-classes
/// Remark: This enum is defined as a string to easily display its raw value.
///
/// To use it:
/// ```swift
///     @Environment(\.oudsHorizontalSizeClass) var horizontalSizeClass
///     @Environment(\.oudsVerticalSizeClass) var verticalSizeClass
/// ```
public enum OUDSUserInterfaceSizeClass: String, Sendable {
    case extraCompact = "Extra Compact"
    case compact = "Compact"
    case regular = "Regular"
}
