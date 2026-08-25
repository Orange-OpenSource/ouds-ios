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
        let helperText: OUDSDeterminateProgressIndicatorHelperText?

        /// Size of the gap between the foreground bar and the track.
        let gapSize: OUDSProgressIndicatorGapSize

        /// Whether the reveal / update animation is played.
        let animated: Bool

        /// Creates a determinate configuration. The `progress` value is clamped to `[0, 1]`.
        init(progress: Double,
             status: OUDSProgressIndicatorStatus,
             track: Bool,
             stopIndicator: Bool,
             helperText: OUDSDeterminateProgressIndicatorHelperText?,
             gapSize: OUDSProgressIndicatorGapSize,
             animated: Bool)
        {
            self.progress = min(max(progress, 0.0), 1.0)
            self.status = status
            self.track = track
            self.stopIndicator = stopIndicator
            self.helperText = helperText
            self.gapSize = gapSize
            self.animated = animated
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
        let helperTextAlignment: OUDSLinearProgressIndicatorHelperTextAlignment

        /// Size of the gap between the bars and the track.
        let gapSize: OUDSProgressIndicatorGapSize
    }

    // MARK: - Convenience accessors

    /// Convenience: `true` when the indicator is indeterminate.
    var isIndeterminate: Bool {
        if case .indeterminate = self { return true }
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
}
