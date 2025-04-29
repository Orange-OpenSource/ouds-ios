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

// MARK: - Accessible Navigation Title Modifier

/// `ViewModifier` which defines a navigation title for the calling `View` and also uses `UIAccessibility` to notify for screen changed.
struct AccessibleNavigationTitleModifier: ViewModifier {

    /// The title used as a `LocalizedStringKey` to add as navigation title
    let title: String

    /// Elapsed time to wait before sending an accessibility notification of a screen change with the `title` in argument
    let deadline: DispatchTime

    func body(content: Content) -> some View {
        content
            .navigationTitle(LocalizedStringKey(title))
            .onAppear {
#if canImport(UIKit)
                DispatchQueue.main.asyncAfter(deadline: deadline) {
                    UIAccessibility.post(notification: .screenChanged, argument: title)
                }
#endif
            }
    }
}

// MARK: - Request Accessible Focus Modifier

/// `ViewModifier` to apply on a `View` so as to request the focus after a given time.
struct RequestAccessibleFocusModifier: ViewModifier {

    /// Flag to listen saying wether or not the `View` got the focus
    @AccessibilityFocusState var requestFocus: Bool

    /// Elapsed time to wait before requesting the focus
    let deadline: DispatchTime

    func body(content: Content) -> some View {
        content.onAppear {
            DispatchQueue.main.asyncAfter(deadline: deadline) {
                requestFocus = true
            }
        }
    }
}

// MARK: - Accessibility Focusable

/// Value to use as a `AccessibilityFocusState` to request focus.
///
/// ```swift
///     // In your view, add the following property
///     @AccessibilityFocusState private var requestFocus: AccessibilityFocusable?
///
///     var body: some View {
///         SomeView()
///         .accessibilityFocused($requestFocus, equals: .some(id: element.id))
///         .oudsRequestAccessibleFocus(_requestFocus, for: .some(id: elements[0].id))
///     }
/// ```
///
/// - Since: 0.8.0
public enum AccessibilityFocusable: Hashable {
    case none
    case some(id: String)
}

// MARK: - Restricted Request Accessible Focus Modifier

/// `ViewModifier` to apply on a `View` to request the focus on that `View` after a given time
struct RestrictedRequestAccessibleFocusModifier: ViewModifier {

    /// Flag to listen saying wether or not the `View` got the focus
    @AccessibilityFocusState var requestFocus: AccessibilityFocusable?

    /// The target to give the focus after the deadLine` delay
    let target: AccessibilityFocusable

    /// Elapsed time to wait before requesting the focus
    let deadline: DispatchTime

   func body(content: Content) -> some View {
        content.onAppear {
            DispatchQueue.main.asyncAfter(deadline: deadline) {
                requestFocus = target
            }
        }
    }
}
