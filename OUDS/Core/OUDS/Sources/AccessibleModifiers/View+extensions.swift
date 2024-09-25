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

import Foundation
import SwiftUI

// ===========================
// MARK: - Accessibility Delay
// ===========================

/// Contains some delays to apply to view modifiers' deadlines for vocalizations or accessibility notifications
private struct AccessibilityDelay {
    // Must be lower than accesibleFocusRequestDelay to start before
    fileprivate static let accessibleTitleNotificationDelay = 0.0
    // Must be greater than accessibleTitleNotificationDelay to start after
    fileprivate static let accessibleFocusRequestDelay = 1.0
}

// ======================
// MARK: - View extension
// ======================

extension View {

    /// Adds a modifier to the current `View` so as to define a navigation title using the current `title`
    /// and also send a notification for accessibility layers for a change of screen when appeared.
    /// - Parameter title: The navigation title
    /// - Returns View: The view with a new modifier
    public func oudsNavigationTitle(_ title: String) -> some View {
        self.modifier(AccessibleNavigationTitleModifier(title: title,
                                                        deadline: .now() + AccessibilityDelay.accessibleTitleNotificationDelay))
    }

    /// Adds a modifier to the current `View` so as to defer a focus request after the view is displayed
    /// - Parameter requestFocus: The boolean binding (e.g. the `AccessibilityFocusState`)
    /// - Returns View: The view with a new modifier
    public func oudsRequestAccessibleFocus(_ requestFocus: AccessibilityFocusState<Bool>) -> some View {
        self.modifier(RequestAccessibleFocusModifier(requestFocus: requestFocus,
                                                     deadline: .now() + AccessibilityDelay.accessibleFocusRequestDelay))
    }

    /// Adds a modifier to the current `View` so as to defer a focus request after the view is displayed for the given elment
    /// - Parameters:
    ///    - requestFocus: The boolean binding (e.g. the `AccessibilityFocusState`)
    ///    - target: The item which will get the focus
    /// - Returns View: The view with a new modifier
    public func oudsRequestAccessibleFocus(_ requestFocus: AccessibilityFocusState<AccessibilityFocusable?>, for target: AccessibilityFocusable) -> some View {
        self.modifier(RestrictedRequestAccessibleFocusModifier(requestFocus: requestFocus,
                                                               target: target,
                                                               deadline: .now() + AccessibilityDelay.accessibleFocusRequestDelay))
    }
}
