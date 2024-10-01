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

// MARK: - Accessible Navigation Title Modifier

/// `ViewModifier` which defines a navigation title for the calling `View` and also uses `UIAccessibility` to notify for screen changed.
struct AccessibleNavigationTitleModifier: ViewModifier {

    let title: String
    let deadline: DispatchTime

    func body(content: Content) -> some View {
        content
            .navigationTitle(LocalizedStringKey(title))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: deadline) {
                    UIAccessibility.post(notification: .screenChanged, argument: title)
                }
            }
    }
}

// MARK: - Request Accessible Focus Modifier

struct RequestAccessibleFocusModifier: ViewModifier {

    @AccessibilityFocusState var requestFocus: Bool
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

public enum AccessibilityFocusable: Hashable {
    case none
    case some(id: String)
}

// MARK: - Restricted Request Accessible Focus Modifier

struct RestrictedRequestAccessibleFocusModifier: ViewModifier {

    @AccessibilityFocusState var requestFocus: AccessibilityFocusable?
    let target: AccessibilityFocusable
    let deadline: DispatchTime

   func body(content: Content) -> some View {
        content.onAppear {
            DispatchQueue.main.asyncAfter(deadline: deadline) {
                requestFocus = target
            }
        }
    }
}
