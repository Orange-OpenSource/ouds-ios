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

#if canImport(UIKit) && (os(iOS) || os(iPadOS) || os(visionOS))
import SwiftUI
import UIKit

// MARK: - Dismiss Keyboard On Tap Modifier

/// A `ViewModifier` which dismisses the software keyboard when the user taps
/// anywhere on the screen outside a text input field.
///
/// Attaches a `UITapGestureRecognizer` directly to the key `UIWindow` so that
/// taps anywhere on the screen — including areas outside the modified view —
/// trigger keyboard dismissal. `cancelsTouchesInView` is set to `false` so
/// interactive child views (buttons, text fields, etc.) still receive their taps.
///
/// The gesture recognizer is added when the view appears and removed when it
/// disappears to avoid memory leaks.
///
/// Applied via ``SwiftUICore/View/oudsHideKeyboardOnTap()``.
struct DismissKeyboardOnTapModifier: ViewModifier {

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .onAppear {
                addGestureRecognizer()
            }
            .onDisappear {
                removeGestureRecognizer()
            }
    }

    // MARK: Private helpers

    private var keyWindow: UIWindow? {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap(\.windows)
            .first { $0.isKeyWindow }
    }

    private func addGestureRecognizer() {
        guard let window = keyWindow else { return }
        let recognizer = UITapGestureRecognizer(target: DismissKeyboardTarget.shared,
                                                action: #selector(DismissKeyboardTarget.dismissKeyboard))
        recognizer.cancelsTouchesInView = false
        recognizer.name = DismissKeyboardTarget.gestureRecognizerName
        window.addGestureRecognizer(recognizer)
    }

    private func removeGestureRecognizer() {
        guard let window = keyWindow else { return }
        window.gestureRecognizers?
            .filter { $0.name == DismissKeyboardTarget.gestureRecognizerName }
            .forEach { window.removeGestureRecognizer($0) }
    }
}

// MARK: - Dismiss Keyboard Target

/// Objective-C target for the `UITapGestureRecognizer` attached to the key window.
private final class DismissKeyboardTarget: NSObject {

    nonisolated(unsafe) static let shared = DismissKeyboardTarget()
    static let gestureRecognizerName = "OUDSDismissKeyboardOnTap"

    deinit {}

    @MainActor @objc func dismissKeyboard() {
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil)
    }
}
#endif
