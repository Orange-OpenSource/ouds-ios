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

/// To wrap some utility methods for accessibility uses and Voice Over
enum VoiceOverUtils {

    /// Makes a Voice Over vocalization / announcement of the given message
    ///
    /// - Parameter message: The message to vocalize as is
    @MainActor static func announce(_ message: String) {
        #if canImport(UIKit)
        guard UIAccessibility.isVoiceOverRunning else { return }
        #endif
        if #available(iOS 17, visionOS 1, macOS 14, *) {
            var announcement = AttributedString(message)
            announcement.accessibilitySpeechAnnouncementPriority = .high
            AccessibilityNotification.Announcement(announcement).post()
        } else {
            #if canImport(UIKit)
            UIAccessibility.post(
                notification: .announcement,
                argument: message)
            #endif
        }
    }
}
