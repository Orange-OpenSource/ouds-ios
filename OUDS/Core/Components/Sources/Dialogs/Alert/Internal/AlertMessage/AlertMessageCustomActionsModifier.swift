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

/// Adds accessibility custom actions for the action link and the close button onto the combined text element.
/// Trick to let `OUDSAlertMessage` link and close button elements be focusable in *Full Keyboard Access*.
/// Otherwise these elements can be reached from outside the component from elements in the same Y axis (duh!).
/// If *Voice Over* enabled, do not add the actions because link and close button are focusable with *Voice Over*.
struct AlertMessageFKACustomActionsModifier: ViewModifier {
    // NOTE: This is very hacky
    // See https://github.com/Orange-OpenSource/ouds-ios/issues/1564

    let link: OUDSAlertMessage.Link?
    let onClose: (() -> Void)?

    func body(content: Content) -> some View {
        var result = AnyView(content)
        if !UIAccessibility.isVoiceOverRunning { // (┛ಠ_ಠ)┛彡┻━┻
            if let link {
                result = AnyView(result.accessibilityAction(named: Text(link.text), link.action))
            }
            if let onClose {
                result = AnyView(result.accessibilityAction(named: Text("core_alertMessage_close_a11y".localized()), onClose))
            }
            return result
        } else {
            return result
        }
    }
}
#endif
