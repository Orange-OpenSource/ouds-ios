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

// Conditional import and use of UIKit for documentation generation (see #628 #626)
import SwiftUI
#if canImport(UIKit)
import UIKit
#endif

// MARK: - Environment values

extension EnvironmentValues {

    /// The `oudsHorizontalSizeClass` instance exposed as en environment values across the library for the horizontal viewport.
    ///
    /// You receive a ``OUDSUserInterfaceSizeClass`` value when you read this environment value.
    /// The value tells you about the amount of horizontal space available to the view that reads it.
    /// You can read this size class like any other of the ``EnvironmentValues``, by creating a property with the `Environment` property wrapper:
    ///
    ///     @Environment(\.oudsHorizontalSizeClass) private var horizontalSizeClass
    ///
    @Entry public var oudsHorizontalSizeClass: OUDSUserInterfaceSizeClass = .regular
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
/// ```
///
/// - Since: 0.8.0
// @frozen: three fixed size classes matching the design system spec; no new cases expected.
@frozen public enum OUDSUserInterfaceSizeClass: String, Sendable {
    case extraCompact = "Extra Compact"
    case compact = "Compact"
    case regular = "Regular"
}
