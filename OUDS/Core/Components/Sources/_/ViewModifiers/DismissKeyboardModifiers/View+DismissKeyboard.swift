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

extension View {

    /// Dismisses the software keyboard when the user taps on any non-interactive
    /// area of the screen outside a text input field.
    ///
    /// Apply this modifier on the parent view containing an ``OUDSTextInput``
    /// or ``OUDSTextArea`` for example.
    ///
    /// ```swift
    /// VStack {
    ///     OUDSTextInput(label: "Email", text: $email)
    ///     OUDSTextInput(label: "Name", text: $name)
    /// }
    /// .oudsHideKeyboardOnTap()
    /// ```
    public func oudsHideKeyboardOnTap() -> some View {
        #if os(iOS) || os(iPadOS) || os(visionOS)
        modifier(DismissKeyboardOnTapModifier())
        #else
        self
        #endif
    }
}
