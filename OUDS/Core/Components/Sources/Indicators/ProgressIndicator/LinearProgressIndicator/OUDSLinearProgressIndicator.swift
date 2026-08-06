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

/// A horizontal indicator that shows the progress of a task using a bar.
/// It can show a specific value (determinate) or just that something is in progress (indeterminate).
/// Best used inside layouts to show progress with more horizontal space than a circular indicator.
///
/// ## Variants
///
/// Two variants are provided:
///
/// - **Determinate**: the caller provides a `progress` value in `[0, 1]`. Values outside this range are coerced.
///   Shows the exact progress of a task, usually as a percentage from 0% to 100%.
///   Provides clear and measurable feedback, helping users understand how long the task will take and
///   reducing uncertainty.
///   Use determinate indicators whenever possible. Avoid indeterminate when progress can be measured, e.g.
///   when the progress value is known (file upload, installation, data sync) or when the system can estimate
///   completion time or percentage.
///
/// - **Indeterminate**: no `progress` is provided and the indicator loops continuously.
///   Shows that a process is active without indicating exact progress.
///   Used when the system cannot determine how long the task will take.
///   Communicates that the system is working, even without precise data, and prevents users from thinking
///   the interface is frozen.
///   For long loading times (over 5 seconds), additional context must be provided.
///
/// ## Statuses
///
/// - **Neutral**: default status used when progress has no specific semantic meaning. Suitable for generic
///   loading, processing, synchronization or background tasks.
/// - **Accent**: used to highlight primary or brand-related actions (uploads, downloads, installations,
///   onboarding).
/// - **Positive**: indicates successful progress or a process leading to a successful outcome.
/// - **Info**: indicates informational or system-related processes (background synchronization, data
///   retrieval).
/// - **Warning**: indicates progress related to an operation that requires user attention or should be
///   monitored.
/// - **Negative**: indicates progress related to an error, recovery, cancellation or failure.
///
/// ## Gap size
///
/// - **default**: standard gap between the bar and the track (`4pt`, Material 3 spec).
/// - **small**: reduced gap for a more compact appearance (`1pt`).
///
/// ## Track
///
/// - `true` (default): the track is displayed. Recommended when the indicator is shown on its own and needs
///   a clear structure. The track helps define the full range of progress and makes the value easier to
///   read.
/// - `false`: the track is hidden. Recommended when the indicator is embedded inside another component
///   (button, tag, toast) or when a more minimal appearance is needed.
///
/// ## Stop indicator
///
/// - `false` (default): no stop indicator is drawn.
/// - `true`: a small square is drawn at the end of the track to identify the end of the range easily.
///   Required by accessibility criteria when the track has a contrast below 3:1 with its container or the
///   surface behind the container.
///
/// ## Helper text
///
/// An optional string displayed centered below the bar. It can provide context about the process or show
/// the current progress value (e.g. `"Uploading..."`).
///
/// ## Animation
///
/// When `animated` is `true` (default), the determinate indicator progressively fills from `0` to the target
/// `progress` on first display and animates any subsequent change of `progress`, using the same Material 3
/// critically-damped spring as ``OUDSCircularProgressIndicator``. The indeterminate indicator plays the
/// Material 3 two-bar animation. When `animated` is `false`, both variants display a static bar without any
/// motion: the determinate indicator shows its target value instantly, and the indeterminate indicator falls
/// back to a bar filled at 70%.
///
/// Animations are always disabled and the static rendering is used when either
/// `accessibilityReduceMotion` is `true` or Low Power Mode is enabled, regardless of the `animated` flag.
///
/// ## Code samples
///
/// ```swift
///     // Determinate — default (neutral, with track, default gap, reveal animation)
///     OUDSLinearProgressIndicator(progress: 0.75)
///
///     // Determinate with an accent status, no track and a helper text
///     OUDSLinearProgressIndicator(progress: 0.5,
///                                 status: .accent,
///                                 track: false,
///                                 helperText: "Uploading…")
///
///     // Determinate with a warning status, a small gap and a stop indicator
///     OUDSLinearProgressIndicator(progress: 0.3,
///                                 status: .warning,
///                                 stopIndicator: true,
///                                 gapSize: .small)
///
///     // Determinate displayed instantly at its target value, without any animation
///     OUDSLinearProgressIndicator(progress: 0.75, animated: false)
///
///     // Indeterminate
///     OUDSLinearProgressIndicator()
///     OUDSLinearProgressIndicator(status: .info)
///
///     // Indeterminate without motion (static bar at 70%)
///     OUDSLinearProgressIndicator(animated: false)
/// ```
///
/// ## Accessibility considerations
///
/// - In **determinate** mode, the view exposes the current progress as an accessibility value (percentage)
///   so that VoiceOver reads e.g. *"75 percent"*, and is marked with the `.updatesFrequently` trait so that
///   assistive technologies know the value is changing. If a `helperText` is provided, it is exposed as the
///   accessibility label (VoiceOver reads e.g. *"Uploading. 75 percent"*).
/// - The indicator never captures **Full Keyboard Access** focus, as no interaction is possible on a
///   progress indicator. On iOS 17+ / macOS 14+ / visionOS 1+ / watchOS 10+ / tvOS 17+, this is enforced
///   via `accessibilityRespondsToUserInteraction(false)`; on earlier OS versions, the semantic
///   `.isStaticText` trait is used.
/// - In **indeterminate** mode without helper text, the view is hidden from VoiceOver
///   (`.accessibilityHidden(true)`) — and therefore also excluded from Full Keyboard Access navigation:
///   there is no readable value to expose. When a `helperText` is provided, the helper text is exposed
///   as accessibility label so the user still understands the context.
/// - Animations are disabled when `accessibilityReduceMotion` is `true` or when Low Power Mode is enabled.
///
/// ## Colored surfaces
///
/// When placed on an ``OUDSColoredSurface``, the indicator switches to a **monochrome** rendering, the
/// `status` is ignored.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A linear progress indicator component in light and dark modes with Orange theme](component_progress_indicator_linear_Orange)
///
/// ### Orange Compact
///
/// ![A linear progress indicator component in light and dark modes with Orange Compact theme](component_progress_indicator_linear_OrangeCompact)
///
/// ### Sosh
///
/// ![A linear progress indicator component in light and dark modes with Sosh theme](component_progress_indicator_linear_Sosh)
///
/// ### Wireframe
///
/// ![A linear progress indicator component in light and dark modes with Wireframe theme](component_progress_indicator_linear_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSLinearProgressIndicator: View {

    // MARK: - Public types

    /// The status of the progress indicator. It determines the color of the bar.
    ///
    /// - Since: 3.0.0
    @frozen
    public enum Status: Sendable {
        // TODO: #1509 - Mutualize / factorize with CircularProgressIndicator with a dedicated enum (e.g. Progress Indicator Status)

        /// Default status used when progress has no specific semantic meaning.
        case neutral

        /// Used to highlight primary or brand-related actions.
        case accent

        /// Indicates successful progress or a process leading to a successful outcome.
        case positive

        /// Indicates informational or system-related processes.
        case info

        /// Indicates progress related to an operation that requires user attention or should be monitored.
        case warning

        /// Indicates progress related to an error, recovery, cancellation or failure.
        case negative
    }

    /// The size of the gap between the progress bar and the track.
    ///
    /// - Since: 3.0.0
    @frozen
    public enum GapSize: Sendable {
        // TODO: #1509 - Mutualize / factorize with CircularProgressIndicator with a dedicated enum (e.g. Progress Indicator Gap Size)

        /// Standard gap size (4pt, Material 3 spec).
        case `default`

        /// Reduced gap size (1pt).
        case small
    }

    // MARK: - Properties

    /// Embeds all configuration details for the linear progress indicator.
    private let configuration: LinearProgressIndicatorConfiguration

    // MARK: - Initializers

    /// Creates a **determinate** linear progress indicator.
    ///
    /// - Parameters:
    ///    - progress: The current progress in the `[0, 1]` range. Values outside of this range are coerced.
    ///    - status: The status of the indicator, driving its color. Defaults to ``Status/neutral``.
    ///    - track: Whether the track is displayed. Defaults to `true`.
    ///    - stopIndicator: Whether a stop indicator is displayed at the end of the track. Defaults to
    ///      `false`.
    ///    - helperText: Optional additional text displayed below the bar. Defaults to `nil`.
    ///    - gapSize: The size of the gap between the indicator and the track. Defaults to ``GapSize/default``.
    ///    - animated: When `true` (default), the indicator progressively fills from `0` to `progress` on
    ///      first display, and animates any subsequent change of `progress`. When `false`, the indicator
    ///      is displayed instantly at its target value with no animation. Animations are always disabled
    ///      when `accessibilityReduceMotion` is on or when Low Power Mode is enabled, regardless of this
    ///      flag.
    public init(progress: Double,
                status: Status = .neutral,
                track: Bool = true,
                stopIndicator: Bool = false,
                helperText: String? = nil,
                gapSize: GapSize = .default,
                animated: Bool = true)
    {
        configuration = LinearProgressIndicatorConfiguration(progress: progress,
                                                             status: status,
                                                             track: track,
                                                             stopIndicator: stopIndicator,
                                                             helperText: helperText,
                                                             gapSize: gapSize,
                                                             animated: animated)
    }

    /// Creates an **indeterminate** linear progress indicator.
    ///
    /// - Parameters:
    ///    - status: The status of the indicator, driving its color. Defaults to ``Status/neutral``.
    ///    - track: Whether the track is displayed. Defaults to `true`.
    ///    - stopIndicator: Whether a stop indicator is displayed at the end of the track. Defaults to
    ///      `false`.
    ///    - helperText: Optional additional text displayed below the bar. Defaults to `nil`.
    ///    - gapSize: The size of the gap between the indicator and the track. Defaults to ``GapSize/default``.
    ///    - animated: When `true` (default), the indicator loops the Material 3 two-bar animation. When
    ///      `false`, a static bar filled at 70% is displayed. Animations are always disabled when
    ///      `accessibilityReduceMotion` is on or when Low Power Mode is enabled, regardless of this flag.
    public init(status: Status = .neutral,
                track: Bool = true,
                stopIndicator: Bool = false,
                helperText: String? = nil,
                gapSize: GapSize = .default,
                animated: Bool = true)
    {
        configuration = LinearProgressIndicatorConfiguration(progress: nil,
                                                             status: status,
                                                             track: track,
                                                             stopIndicator: stopIndicator,
                                                             helperText: helperText,
                                                             gapSize: gapSize,
                                                             animated: animated)
    }

    // MARK: - Body

    public var body: some View {
        LinearProgressIndicatorView(configuration: configuration)
    }
}
