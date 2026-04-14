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

// MARK: - Accessibility Delay

/// Contains some delays to apply to view modifiers' deadlines for vocalizations or accessibility notifications
private enum AccessibilityDelay: Double {
    /// Must be lower than accesibleFocusRequestDelay to start before
    case accessibleTitleNotificationDelay = 0.0
    /// Must be greater than accessibleTitleNotificationDelay to start after
    case accessibleFocusRequestDelay = 1.0
}

// MARK: - View extension

extension View {

    /// Adds a modifier to the current `View` so as to define a navigation title using the current `title`
    /// and also send a notification for accessibility layers for a change of screen when appeared.
    ///
    /// ```swift
    ///      SomeView().oudsNavigationTitle("your title key")
    /// ```
    ///
    /// - Parameters
    ///     - title: The navigation title
    ///     - subtitle: An optional subtitle for iOS > 26 only
    ///
    /// - Returns View: The view with a new modifier
    public func oudsNavigationTitle(_ title: String, subtitle: String? = nil) -> some View {
        #if canImport(UIKit)
        modifier(AccessibleNavigationTitleModifier(title: title,
                                                   subtitle: subtitle,
                                                   deadline: .now() + AccessibilityDelay.accessibleTitleNotificationDelay.rawValue))
        #else
        modifier(AccessibleNavigationTitleModifier(title: title, subtitle: subtitle))
        #endif
    }

    /// Adds a modifier to the current `View` so as to defer a focus request after the view is displayed
    ///
    /// ```swift
    ///     YourView: View {
    ///         @AccessibilityFocusState var requestFocus: Bool
    ///
    ///         var body: some View {
    ///             SomeView()
    ///                 .requestAccessibleFocus(_requestFocus)
    ///         }
    ///     }
    /// ```
    ///
    /// - Parameter requestFocus: The boolean binding (e.g. the `AccessibilityFocusState`)
    /// - Returns View: The view with a new modifier
    public func requestAccessibleFocus(_ requestFocus: AccessibilityFocusState<Bool>) -> some View {
        modifier(RequestAccessibleFocusModifier(requestFocus: requestFocus,
                                                deadline: .now() + AccessibilityDelay.accessibleFocusRequestDelay.rawValue))
    }

    /// Adds a modifier to the current `View` so as to defer a focus request after the view is displayed for the given element
    ///
    /// ```swift
    ///     YourView: View {
    ///         @AccessibilityFocusState var requestFocus: Bool
    ///
    ///         var body: some View {
    ///             SomeView()
    ///                 .requestAccessibleFocus(_requestFocus, for: .some(id: element.id))
    ///         }
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///    - requestFocus: The boolean binding (e.g. the `AccessibilityFocusState`)
    ///    - target: The item which will get the focus
    /// - Returns View: The view with a new modifier
    public func requestAccessibleFocus(_ requestFocus: AccessibilityFocusState<AccessibilityFocusable?>, for target: AccessibilityFocusable) -> some View {
        modifier(RestrictedRequestAccessibleFocusModifier(requestFocus: requestFocus,
                                                          target: target,
                                                          deadline: .now() + AccessibilityDelay.accessibleFocusRequestDelay.rawValue))
    }

    /// Adds a modifier to the current `View` so as to defer a focus request after the view is displayed
    ///
    /// ```swift
    ///     YourView: View {
    ///         @AccessibilityFocusState var requestFocus: Bool
    ///
    ///         var body: some View {
    ///             SomeView()
    ///                 .oudsRequestAccessibleFocus(_requestFocus)
    ///         }
    ///     }
    /// ```
    ///
    /// - Parameter requestFocus: The boolean binding (e.g. the `AccessibilityFocusState`)
    /// - Returns View: The view with a new modifier
    @available(*, deprecated, renamed: "requestAccessibleFocus(_:)", message: "Use requestAccessibleFocus(_:) instead")
    public func oudsRequestAccessibleFocus(_ requestFocus: AccessibilityFocusState<Bool>) -> some View {
        requestAccessibleFocus(requestFocus)
    }

    /// Adds a modifier to the current `View` so as to defer a focus request after the view is displayed for the given element
    ///
    /// ```swift
    ///     YourView: View {
    ///         @AccessibilityFocusState var requestFocus: Bool
    ///
    ///         var body: some View {
    ///             SomeView()
    ///                 .oudsRequestAccessibleFocus(_requestFocus, for: .some(id: element.id))
    ///         }
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///    - requestFocus: The boolean binding (e.g. the `AccessibilityFocusState`)
    ///    - target: The item which will get the focus
    /// - Returns View: The view with a new modifier
    @available(*, deprecated, renamed: "requestAccessibleFocus(_:for:)", message: "Use requestAccessibleFocus(_:for:) instead")
    public func oudsRequestAccessibleFocus(_ requestFocus: AccessibilityFocusState<AccessibilityFocusable?>, for target: AccessibilityFocusable) -> some View {
        requestAccessibleFocus(requestFocus, for: target)
    }
}
