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

/// A linear indicator shows the progress of a task using a horizontal line.
/// It can show a specific value (determinate) or just that something is in progress (indeterminate).
/// Best used inside layouts to show progress.
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
/// - **default**: standard gap between the bar and the track (base Android Material 3 specification).
/// - **small**: reduced gap for a more compact appearance.
///
/// ## Track
///
/// - `true` (default): the track is displayed. Recommended when the indicator is shown on its own and needs
///   a clear structure. The track helps define the full range of progress and makes the value easier to
///   read.
/// - `false`: the track is hidden. Recommended when the indicator is embedded inside another component
///   (button, tag, toast) or when a more minimal appearance is needed.
///
/// ## Stop indicator (determinate only)
///
/// - `false` (default): no stop indicator is drawn.
/// - `true`: a small square (or dot if the theme uses rounded caps) is drawn at the end of the track to
///   identify the end of the range easily. Required by accessibility criteria when the track has a
///   contrast below 3:1 with its container or the surface behind the container.
///
/// The stop indicator is only available on the determinate variant, matching the Android Material 3
/// specification: the indeterminate variant has no meaningful end position for it.
///
/// ## Helper text
///
/// An optional string displayed below the bar. It can provide context about the process or show
/// the current progress value (e.g. `"Uploading..."`).
///
/// In **determinate** mode, the helper text supports three alignment options:
/// - **center**: the text is centered under the bar (default)
/// - **start**: the percentage is displayed at the leading edge, with optional description at the trailing edge
/// - **end**: the percentage is displayed at the trailing edge, with optional description at the leading edge
///
/// In **indeterminate** mode, the helper text also supports three alignment options:
/// - **center**: the text is centered under the bar (default)
/// - **start**: the text is aligned to the leading edge
/// - **end**: the text is aligned to the trailing edge
///
/// ## Animation
///
/// - **Determinate**: when `animated` is `true` (default), the indicator progressively fills from `0`
///   to the target `progress` on first display and animates any subsequent change of `progress`
///   (based on Android Material 3 specifications). When `animated` is `false`, the indicator is displayed instantly at its target value with no animation.
/// - **Indeterminate**: the Android Material 3 two-line animation is intrinsic to the mode and cannot be disabled from the call site; there is no `animated`
///   parameter on the indeterminate initializer.
///
/// Animations are always disabled and a static bar filled at 70% is displayed when either
/// `accessibilityReduceMotion` is `true` or Low Power Mode is enabled.
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
///     // Determinate with a warning status, a small gap, a stop indicator and no animation
///     OUDSLinearProgressIndicator(progress: 0.3,
///                                 status: .warning,
///                                 stopIndicator: true,
///                                 gapSize: .small,
///                                 animated: false)
///
///     // Indeterminate (always animated — Android Material 3 two-line race)
///     OUDSLinearProgressIndicator()
///     OUDSLinearProgressIndicator(status: .info)
///     OUDSLinearProgressIndicator(status: .accent, helperText: "Processing…")
///
///     // Indeterminate with helper text aligned to the start
///     OUDSLinearProgressIndicator(status: .info,
///                                 helperText: "Loading data…",
///                                 helperTextAlignment: .start)
///
///     // Indeterminate with helper text aligned to the end
///     OUDSLinearProgressIndicator(status: .info,
///                                 helperText: "Loading data…",
///                                 helperTextAlignment: .end)
/// ```
///
/// ## Accessibility considerations
///
/// - In **determinate** mode, the view exposes the current progress as an accessibility value (percentage)
///   so that Voice Over reads e.g. *"75 percent"*, and is marked with the `.updatesFrequently` trait so that
///   assistive technologies know the value is changing. If a `helperText` is provided, it is exposed as the
///   accessibility label (Voice Over reads e.g. *"Uploading. 75 percent"*).
/// - The indicator never captures **Full Keyboard Access** focus, as no interaction is possible on a
///   progress indicator. On iOS 17+ / macOS 14+ / visionOS 1+ / watchOS 10+ / tvOS 17+, this is enforced
///   via `accessibilityRespondsToUserInteraction(false)`; on earlier OS versions, the semantic
///   `.isStaticText` trait is used.
/// - In **indeterminate** mode without helper text, the view is hidden from Voice Over
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
public struct OUDSLinearProgressIndicator: View { // TODO: #1509 - Add hyperlink to documentation when ready

    // MARK: - Properties

    /// Embeds all configuration details for the linear progress indicator.
    private let configuration: LinearProgressIndicatorConfiguration

    // MARK: - Initializers

    /// Creates a **determinate** linear progress indicator.
    ///
    /// - Parameters:
    ///    - progress: The current progress in the `[0, 1]` range. Values outside of this range are coerced.
    ///    - status: The status of the indicator, driving its color. Defaults to ``OUDSProgressIndicatorStatus/neutral``.
    ///    - track: Whether the track is displayed. Defaults to `true`.
    ///    - stopIndicator: Whether a stop indicator is displayed at the end of the track. Defaults to
    ///      `false`.
    ///    - helperText: Optional additional text displayed below the bar. Defaults to `nil`.
    ///    - gapSize: The size of the gap between the indicator and the track. Defaults to ``OUDSProgressIndicatorGapSize/default``.
    ///    - animated: When `true` (default), the indicator progressively fills from `0` to `progress` on
    ///      first display, and animates any subsequent change of `progress`. When `false`, the indicator
    ///      is displayed instantly at its target value with no animation. Animations are always disabled
    ///      when `accessibilityReduceMotion` is on or when Low Power Mode is enabled, regardless of this
    ///      flag.
    public init(progress: Double,
                status: OUDSProgressIndicatorStatus = .neutral,
                track: Bool = true,
                stopIndicator: Bool = false,
                helperText: OUDSDeterminateProgressIndicatorHelperText? = nil,
                gapSize: OUDSProgressIndicatorGapSize = .default,
                animated: Bool = true)
    {
        configuration = .determinate(.init(progress: progress,
                                           status: status,
                                           track: track,
                                           stopIndicator: stopIndicator,
                                           helperText: helperText,
                                           gapSize: gapSize,
                                           animated: animated))
    }

    /// Creates an **indeterminate** linear progress indicator.
    ///
    /// The Android Material 3 two-line animation is intrinsic to this mode and is always played, except when
    /// `accessibilityReduceMotion` is on or when Low Power Mode is enabled — in which case a static
    /// bar filled at 70% is displayed automatically.
    ///
    /// - Parameters:
    ///    - status: The status of the indicator, driving its color. Defaults to ``OUDSProgressIndicatorStatus/neutral``.
    ///    - track: Whether the track is displayed. Defaults to `true`.
    ///    - helperText: Optional additional text displayed below the bar. Defaults to `nil`.
    ///    - helperTextAlignment: The alignment of the helper text. Defaults to `.center`.
    ///    - gapSize: The size of the gap between the indicator and the track. Defaults to
    ///      ``OUDSProgressIndicatorGapSize/default``.
    public init(status: OUDSProgressIndicatorStatus = .neutral,
                track: Bool = true,
                helperText: String? = nil,
                helperTextAlignment: OUDSIndeterminateHelperTextAlignment = .center,
                gapSize: OUDSProgressIndicatorGapSize = .default)
    {
        configuration = .indeterminate(.init(status: status,
                                             track: track,
                                             helperText: helperText,
                                             helperTextAlignment: helperTextAlignment,
                                             gapSize: gapSize))
    }

    // MARK: - Body

    public var body: some View {
        LinearProgressIndicatorView(configuration: configuration)
    }
}
