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
///   Ignored in indeterminate mode (the Material 3 animation is intrinsic to the mode).
struct CircularProgressIndicatorConfiguration: Equatable, Sendable {

    // MARK: - Properties

    /// Clamped progress in `[0, 1]`; `nil` means the indicator is indeterminate
    let progress: Double?

    /// Color status of the indicator
    let status: OUDSCircularProgressIndicator.Status

    /// Whether the track is displayed under the indicator arc.
    let track: Bool

    /// Size of the gap between the indicator and the track.
    let gapSize: OUDSCircularProgressIndicator.GapSize

    /// Whether the determinate indicator animates on first display (reveal from `0`) and on subsequent
    /// changes of `progress`. Ignored in indeterminate mode.
    let animated: Bool

    // MARK: - Initializer

    /// Creates a configuration. The `progress` value is clamped to `[0, 1]` when non-nil.
    ///
    /// - Parameters:
    ///    - progress: The current progress in the `[0, 1]` range, or `nil` for indeterminate.
    ///    - status: The color status of the indicator.
    ///    - track: Whether the track is displayed.
    ///    - gapSize: The size of the gap between the indicator and the track.
    ///    - animated: Whether the determinate indicator animates. Defaults to `true`. Ignored in indeterminate mode.
    init(progress: Double?,
         status: OUDSCircularProgressIndicator.Status,
         track: Bool,
         gapSize: OUDSCircularProgressIndicator.GapSize,
         animated: Bool = true)
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
    }

    // MARK: - Helpers

    /// Convenience: `true` when the indicator is indeterminate.
    var isIndeterminate: Bool {
        progress == nil
    }
}

// MARK: - Status / GapSize conformance

extension OUDSCircularProgressIndicator.Status: Equatable {}

extension OUDSCircularProgressIndicator.GapSize: Equatable {}
