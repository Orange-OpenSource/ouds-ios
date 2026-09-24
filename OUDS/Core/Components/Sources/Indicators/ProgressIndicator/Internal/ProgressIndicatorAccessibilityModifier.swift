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

/// Internal view modifier for accessibility used by ``OUDSLinearProgressIndicator`` and ``OUDSCircularProgressIndicator``
///
/// Applies accessibility traits and values on progress indicators (linear or circular).
///
/// - **Determinate**: exposes the percentage value (e.g. *"75 percent"*) as `accessibilityValue`, with
///   the optional `helperText` as `accessibilityLabel`. The `.updatesFrequently` and `.isStaticText`
///   traits are set so assistive technologies read the changing progress. On iOS 17+ /
///   macOS 14+ / visionOS 1+ / watchOS 10+ / tvOS 17+, the element opts out of user interaction via
///   `accessibilityRespondsToUserInteraction(false)` so that Full Keyboard Access does not focus it.
///
/// - **Indeterminate without helper text**: hidden from VoiceOver (`.accessibilityHidden(true)`),
///   which also excludes it from Full Keyboard Access navigation.
///
/// - **Indeterminate with helper text**: the helper text is exposed as `accessibilityLabel` so the
///   user still understands the context, but no value is exposed (no measurable progress).
///
/// - **Status prefix**: When the status is `.warning` or `.negative`, a prefix ("Warning," or "Error,")
///   is prepended to the accessibility label to vocalize the status.
struct ProgressIndicatorAccessibilityModifier: ViewModifier {

    // MARK: Properties

    let progress: Double?
    let accessibilityLabel: String?
    let status: OUDSProgressIndicatorStatus?

    // MARK: - Helpers

    private var statusPrefix: String? {
        guard let status else { return nil }
        return switch status {
        case .warning:
            "core_shared_warning_a11y".localized() + ","
        case .negative:
            "core_shared_negative_a11y".localized() + ","
        default:
            nil
        }
    }

    private var computedAccessibilityLabel: String {
        let prefix = statusPrefix ?? ""
        let label = accessibilityLabel ?? ""
        if prefix.isEmpty {
            return label
        } else if label.isEmpty {
            return prefix
        } else {
            return "\(prefix) \(label)"
        }
    }

    // MARK: Body

    func body(content: Content) -> some View {
        if let progress {
            let percent = Int((progress * 100).rounded())
            let percentValue = "core_progressIndicator_percent_value".localized(with: percent)

            let determinate = content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits([.updatesFrequently, .isStaticText])
                .accessibilityLabel(computedAccessibilityLabel)
                .accessibilityValue(percentValue)

            if #available(iOS 17, macOS 14, visionOS 1, watchOS 10, tvOS 17, *) {
                determinate.accessibilityRespondsToUserInteraction(false)
            } else {
                determinate
            }
        } else if let accessibilityLabel, !accessibilityLabel.isEmpty {
            // Indeterminate with helper text: expose the label but no value.
            let indeterminate = content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits(.isStaticText)
                .accessibilityLabel(computedAccessibilityLabel)

            if #available(iOS 17, macOS 14, visionOS 1, watchOS 10, tvOS 17, *) {
                indeterminate.accessibilityRespondsToUserInteraction(false)
            } else {
                indeterminate
            }
        } else {
            // Indeterminate without helper text: hidden from VoiceOver (and therefore from FKA too).
            content.accessibilityHidden(true)
        }
    }
}
