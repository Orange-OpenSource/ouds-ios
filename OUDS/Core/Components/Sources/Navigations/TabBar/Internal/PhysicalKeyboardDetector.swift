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

#if os(iOS)

import GameController

/// Internal utility used by the `OUDSTabBar` to detect the presence of a physical keyboard connected to the device.
///
/// This is used as a proxy for detecting Full Keyboard Access (FKA), because iOS does not expose any public API
/// to read the FKA setting (unlike VoiceOver, Switch Control, etc.).
///
/// The rationale is UX-oriented: when a physical keyboard is connected, a tab bar item can enter the `focused`
/// state (via keyboard navigation / FKA). In this state the default OUDS style applies the bold `selectedFont`,
/// which at the fixed small font size used by `UITabBar` (10pt on iPhone, 13pt on iPad) can cause the title
/// text to be truncated. Falling back to the regular-weight font in this situation prevents the truncation.
enum PhysicalKeyboardDetector {

    /// `true` when a hardware keyboard is currently connected to the device, `false` otherwise.
    static var isPhysicalKeyboardConnected: Bool {
        GCKeyboard.coalesced != nil
    }
}

#endif
