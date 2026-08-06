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
///
/// - `progress`: when `nil`, the indicator is **indeterminate**. When set, the value is clamped to `[0, 1]`.
/// - `status`: the color status of the indicator.
/// - `track`: whether the track is displayed on the right of the progress bar.
/// - `stopIndicator`: whether a small square is displayed at the end of the track to identify the end of the range.
/// - `helperText`: optional text displayed below the bar (centered, `labelDefaultMedium`, `contentDefault`).
/// - `gapSize`: the size of the gap between the foreground bar and the track.
/// - `animated`: whether the indicator animates on display / on progress updates (determinate), or whether
///   the indeterminate animation loops (indeterminate). When `false` a static fallback rendering is used.
struct LinearProgressIndicatorConfiguration: Equatable, Sendable {

    // MARK: - Properties

    /// Clamped progress in `[0, 1]`; `nil` means the indicator is indeterminate.
    let progress: Double?

    /// Color status of the indicator.
    let status: OUDSLinearProgressIndicator.Status

    /// Whether the track is displayed on the right of the foreground bar.
    let track: Bool

    /// Whether a stop indicator is displayed at the end of the track.
    let stopIndicator: Bool

    /// Optional additional text displayed below the bar.
    let helperText: String?

    /// Size of the gap between the foreground bar and the track.
    let gapSize: OUDSLinearProgressIndicator.GapSize

    /// Whether the indicator animates. When `false`, the determinate value is displayed instantly and
    /// the indeterminate mode falls back to a static bar (see ``LinearProgressIndicatorIndeterminateView/staticSweep``).
    let animated: Bool

    // MARK: - Initializer

    /// Creates a configuration. The `progress` value is clamped to `[0, 1]` when non-nil.
    ///
    /// - Parameters:
    ///    - progress: The current progress in the `[0, 1]` range, or `nil` for indeterminate.
    ///    - status: The color status of the indicator.
    ///    - track: Whether the track is displayed.
    ///    - stopIndicator: Whether a stop indicator is displayed at the end of the track.
    ///    - helperText: Optional text displayed below the bar.
    ///    - gapSize: The size of the gap between the indicator and the track.
    ///    - animated: Whether the indicator animates. Defaults to `true`.
    init(progress: Double?,
         status: OUDSLinearProgressIndicator.Status,
         track: Bool,
         stopIndicator: Bool,
         helperText: String?,
         gapSize: OUDSLinearProgressIndicator.GapSize,
         animated: Bool = true)
    {
        if let progress {
            self.progress = min(max(progress, 0.0), 1.0)
        } else {
            self.progress = nil
        }
        self.status = status
        self.track = track
        self.stopIndicator = stopIndicator
        self.helperText = helperText
        self.gapSize = gapSize
        self.animated = animated
    }

    // MARK: - Helpers

    /// Convenience: `true` when the indicator is indeterminate.
    var isIndeterminate: Bool {
        progress == nil
    }
}

// MARK: - Status / GapSize conformance

extension OUDSLinearProgressIndicator.Status: Equatable {}

extension OUDSLinearProgressIndicator.GapSize: Equatable {}
