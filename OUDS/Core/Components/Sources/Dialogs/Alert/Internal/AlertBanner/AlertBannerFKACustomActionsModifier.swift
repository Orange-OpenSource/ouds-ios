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

#if canImport(UIKit)
import OUDSFoundations
import SwiftUI

// TODO: Voir a mutulaiser avec AlertMesaageFKACustomActionsModifier

/// Adds accessibility custom actions for the action link and the close button onto the combined text element.
/// Trick to let `OUDSAlertBanner` action link and close button elements be focusable in *Full Keyboard Access*.
/// Otherwise these elements can be reached from outside the component from elements in the same Y axis (duh!), and navigation order won't be acceptable.
/// If *Voice Over* enabled, do not add the actions because link and close button are already focusable with *Voice Over* and actions are not usable.
struct AlertBannerFKACustomActionsModifier: ViewModifier {
    // NOTE: This is very hacky
    // People needing both Full Keyboard Access and Voice Over will have "Voice Over enabled" behavior.
    // See original https://github.com/Orange-OpenSource/ouds-ios/issues/1564

    let actionLink: OUDSAlertBanner.ActionLink?
    let onClose: (() -> Void)?

    @Environment(\.accessibilityVoiceOverEnabled) private var isVoiceOverEnabled

    @ViewBuilder
    func body(content: Content) -> some View {
        if isVoiceOverEnabled {
            content
            // These actions will help to find and focus with FKA the alert message link and close button
            // (┛ಠ_ಠ)┛彡┻━┻
        } else if let actionLink {
            if let onClose {
                content
                    .accessibilityAction(named: Text(actionLink.text), actionLink.action)
                    .accessibilityAction(named: Text("core_alertBanner_close_a11y".localized()), onClose)
            } else {
                content
                    .accessibilityAction(named: Text(actionLink.text), actionLink.action)
            }
        } else if let onClose {
            content.accessibilityAction(named: Text("core_alertBanner_close_a11y".localized()), onClose)
        } else {
            content
        }
    }
}
#endif
