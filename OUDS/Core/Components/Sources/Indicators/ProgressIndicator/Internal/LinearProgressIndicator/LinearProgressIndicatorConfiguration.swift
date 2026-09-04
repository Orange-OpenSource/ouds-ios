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

/// Internal configuration used to draw an ``OUDSLinearProgressIndicator``.
enum LinearProgressIndicatorConfiguration: Equatable, Sendable {

    case determinate(Determinate)
    case indeterminate(Indeterminate)

    // MARK: - Determinate

    /// Configuration parameters exclusive to the determinate variant.
    struct Determinate: Equatable, Sendable {

        /// Clamped progress in `[0, 1]`.
        let progress: Double

        /// Color status of the indicator.
        let status: OUDSProgressIndicatorStatus

        /// Whether the track is displayed on the right of the foreground bar.
        let track: Bool

        /// Whether a stop indicator is displayed at the end of the track.
        let stopIndicator: Bool

        /// Optional additional text displayed below the bar.
        let helperText: OUDSLinearProgressIndicator.HelperTextType?

        /// Size of the gap between the foreground bar and the track.
        let gapSize: OUDSProgressIndicatorGapSize

        /// Whether the reveal / update animation is played.
        let animated: Bool

        /// Accessibility name for VoiceOver (e.g., "progress bar", "download bar").
        let accessibilityName: String?

        /// Accessibility state for VoiceOver (e.g., "downloading", "step 1 of 4").
        let accessibilityState: String?

        /// Creates a determinate configuration. The `progress` value is clamped to `[0, 1]`.
        init(progress: Double,
             status: OUDSProgressIndicatorStatus,
             track: Bool,
             stopIndicator: Bool,
             helperText: OUDSLinearProgressIndicator.HelperTextType?,
             gapSize: OUDSProgressIndicatorGapSize,
             animated: Bool,
             accessibilityName: String? = nil,
             accessibilityState: String? = nil)
        {
            self.progress = min(max(progress, 0.0), 1.0)
            self.status = status
            self.track = track
            self.stopIndicator = stopIndicator
            self.helperText = helperText
            self.gapSize = gapSize
            self.animated = animated
            self.accessibilityName = accessibilityName
            self.accessibilityState = accessibilityState
        }
    }

    // MARK: - Indeterminate

    /// Configuration parameters exclusive to the indeterminate variant.
    struct Indeterminate: Equatable, Sendable {

        /// Color status of the indicator.
        let status: OUDSProgressIndicatorStatus

        /// Whether the track is displayed.
        let track: Bool

        /// Optional additional text displayed below the bar.
        let helperText: String?

        /// The alignment of the helper text.
        let helperTextAlignment: OUDSLinearProgressIndicator.HelperTextAlignment

        /// Size of the gap between the bars and the track.
        let gapSize: OUDSProgressIndicatorGapSize

        /// Accessibility name for VoiceOver (e.g., "progress bar", "download bar").
        let accessibilityName: String?

        /// Accessibility state for VoiceOver (e.g., "downloading", "step 1 of 4").
        let accessibilityState: String?

        init(status: OUDSProgressIndicatorStatus,
             track: Bool,
             helperText: String?,
             helperTextAlignment: OUDSLinearProgressIndicator.HelperTextAlignment,
             gapSize: OUDSProgressIndicatorGapSize,
             accessibilityName: String? = nil,
             accessibilityState: String? = nil)
        {
            self.status = status
            self.track = track
            self.helperText = helperText
            self.helperTextAlignment = helperTextAlignment
            self.gapSize = gapSize
            self.accessibilityName = accessibilityName
            self.accessibilityState = accessibilityState
        }
    }

    // MARK: - Convenience accessors

    /// Convenience: `true` when the indicator is indeterminate.
    var isIndeterminate: Bool {
        if case .indeterminate = self {
            return true
        }
        return false
    }

    /// The color status of the indicator, regardless of the variant.
    var status: OUDSProgressIndicatorStatus {
        switch self {
        case let .determinate(configuration):
            configuration.status
        case let .indeterminate(configuration):
            configuration.status
        }
    }

    /// Whether the track is displayed, regardless of the variant.
    var track: Bool {
        switch self {
        case let .determinate(configuration):
            configuration.track
        case let .indeterminate(configuration):
            configuration.track
        }
    }

    /// The size of the gap between the foreground and the track, regardless of the variant.
    var gapSize: OUDSProgressIndicatorGapSize {
        switch self {
        case let .determinate(configuration):
            configuration.gapSize
        case let .indeterminate(configuration):
            configuration.gapSize
        }
    }

    /// The current progress if determinate, `nil` if indeterminate.
    var progress: Double? {
        switch self {
        case let .determinate(configuration):
            configuration.progress
        case .indeterminate:
            nil
        }
    }

    var accessibilityLabel: String? {
        switch self {
        case let .determinate(configuration):
            var parts: [String] = []

            if let name = configuration.accessibilityName, !name.isEmpty {
                parts.append(name)
            }

            if let state = configuration.accessibilityState, !state.isEmpty {
                parts.append(state)
            }

            switch configuration.helperText {
            case let .description(description, _):
                if !description.isEmpty {
                    parts.append(description)
                }
            case let .percent(description, _):
                if let description, !description.isEmpty {
                    parts.append(description)
                }
            case .none:
                break
            }

            return parts.isEmpty ? nil : parts.joined(separator: ". ")

        case let .indeterminate(configuration):
            var parts: [String] = []

            if let name = configuration.accessibilityName, !name.isEmpty {
                parts.append(name)
            }

            if let state = configuration.accessibilityState, !state.isEmpty {
                parts.append(state)
            }

            if let helperText = configuration.helperText, !helperText.isEmpty {
                parts.append(helperText)
            }

            return parts.isEmpty ? nil : parts.joined(separator: ". ")
        }
    }
}
