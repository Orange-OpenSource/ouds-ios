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

/// Internal configuration used to draw an ``OUDSCircularProgressIndicator``.
///
/// - `progress`: when `nil`, the indicator is **indeterminate**. When set, the value is clamped to `[0, 1]`.
/// - `status`: the color status of the indicator.
/// - `track`: whether the track is displayed under the progress arc.
/// - `gapSize`: the size of the gap between the indicator and the track.
/// - `animated`: whether the determinate indicator animates on display and on progress updates.
///   Ignored in indeterminate mode (the Android Material 3 animation is intrinsic to the mode).
/// - `size`:  the size of the component could be adjusted if used interanly by components.
/// - `helperText`: optional helper text displayed below the indicator (always centered).
struct CircularProgressIndicatorConfiguration: Equatable, Sendable {

    // MARK: - Properties

    /// Clamped progress in `[0, 1]`; `nil` means the indicator is indeterminate
    let progress: Double?

    /// Color status of the indicator.
    let status: OUDSProgressIndicatorStatus

    /// Whether the track is displayed under the indicator arc.
    let track: Bool

    /// Size of the gap between the indicator and the track.
    let gapSize: OUDSProgressIndicatorGapSize

    /// Whether the determinate indicator animates on first display (reveal from `0`) and on subsequent
    /// changes of `progress`. Ignored in indeterminate mode.
    let animated: Bool

    /// Size of the component could be adjusted if used internally by components.
    let size: CGFloat

    /// Optional helper text displayed below the indicator (always centered).
    let helperTextType: OUDSCircularProgressIndicator.HelperTextType?

    /// Accessibility name for VoiceOver (e.g., "progress bar", "download bar").
    let accessibilityName: String?

    /// Accessibility state for VoiceOver (e.g., "downloading", "step 1 of 4").
    let accessibilityState: String?

    // MARK: - Initializer

    /// Creates a configuration. The `progress` value is clamped to `[0, 1]` when non-nil.
    ///
    /// - Parameters:
    ///    - progress: The current progress in the `[0, 1]` range, or `nil` for indeterminate.
    ///    - status: The color status of the indicator.
    ///    - track: Whether the track is displayed.
    ///    - gapSize: The size of the gap between the indicator and the track.
    ///    - size: The size of the component could be adjusted if used internally by components.
    ///    - animated: Whether the determinate indicator animates. Defaults to `true`. Ignored in indeterminate mode.
    ///    - helperText: Optional helper text. Defaults to `nil`.
    ///    - accessibilityName: Optional accessibility name for VoiceOver. Defaults to `nil`.
    ///    - accessibilityState: Optional accessibility state for VoiceOver. Defaults to `nil`.
    init(progress: Double?,
         status: OUDSProgressIndicatorStatus,
         track: Bool,
         gapSize: OUDSProgressIndicatorGapSize,
         size: CGFloat,
         animated: Bool = true,
         helperText: OUDSCircularProgressIndicator.HelperTextType? = nil,
         accessibilityName: String? = nil,
         accessibilityState: String? = nil)
    {
        if let progress {
            self.progress = min(max(progress, 0.0), 1.0)
        } else {
            self.progress = nil
        }
        self.status = status
        self.track = track
        self.gapSize = gapSize
        self.animated = animated
        self.size = size
        helperTextType = helperText
        self.accessibilityName = accessibilityName
        self.accessibilityState = accessibilityState
    }

    // MARK: - Helpers

    /// Convenience: `true` when the indicator is indeterminate.
    var isIndeterminate: Bool {
        progress == nil
    }

    /// The accessibility label based on accessibility name, state and helper text.
    /// VoiceOver reads: [name]. [state]. [helperText]
    var accessibilityLabel: String? {
        var parts: [String] = []

        if let name = accessibilityName, !name.isEmpty {
            parts.append(name)
        }

        if let state = accessibilityState, !state.isEmpty {
            parts.append(state)
        }

        switch helperTextType {
        case let .description(description):
            if !description.isEmpty {
                parts.append(description)
            }
        case let .percent(description):
            if let description, !description.isEmpty {
                parts.append(description)
            }
        case nil:
            break
        }

        return parts.isEmpty ? nil : parts.joined(separator: ". ")
    }
}
