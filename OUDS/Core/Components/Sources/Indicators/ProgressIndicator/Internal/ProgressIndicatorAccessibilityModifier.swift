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

import OUDSTokensSemantic
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
/// - **Status vocalization**: When the status is `.negative` or `.warning`, the status is vocalized
///   as part of the accessibility label (e.g. *"Error, 75 percent"* or *"Warning, Uploading, 50 percent"*).
struct ProgressIndicatorAccessibilityModifier: ViewModifier {

    // MARK: Properties

    let progress: Double?
    let accessibilityLabel: String?
    let status: OUDSProgressIndicatorStatus?

    // MARK: - Status vocalization

    private var statusVocalization: String {
        guard let status else { return "" }
        switch status {
        case .negative:
            return "core_shared_negative_a11y".localized() + ","
        case .warning:
            return "core_shared_warning_a11y".localized() + ","
        default:
            return ""
        }
    }

    // MARK: Body

    func body(content: Content) -> some View {
        if let progress {
            let percent = Int((progress * 100).rounded())
            let percentValue = "core_progressIndicator_percent_value".localized(with: percent)

            let label = statusVocalization + (accessibilityLabel ?? "")

            let determinate = content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits([.updatesFrequently, .isStaticText])
                .accessibilityLabel(label)
                .accessibilityValue(percentValue)

            if #available(iOS 17, macOS 14, visionOS 1, watchOS 10, tvOS 17, *) {
                determinate.accessibilityRespondsToUserInteraction(false)
            } else {
                determinate
            }
        } else if let accessibilityLabel, !accessibilityLabel.isEmpty {
            // Indeterminate with helper text: expose the label but no value.
            let label = statusVocalization + accessibilityLabel

            let indeterminate = content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits(.isStaticText)
                .accessibilityLabel(label)

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
