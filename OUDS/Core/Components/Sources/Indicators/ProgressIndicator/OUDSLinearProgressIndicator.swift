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
/// An optional text displayed below the progress bar to provide context or additional information.
///
/// In **determinate** mode, use ``OUDSLinearProgressIndicator/HelperTextType`` which offers two variants:
///
/// - **`.description(_:)`**: Displays a simple description text without the progress percentage.
///   The `alignment` parameter controls horizontal alignment (`.center`, `.start`, or `.end`).
///
/// - **`.percent(description:alignment:)`**: Displays the progress percentage with an optional description.
///   The percentage value and its `%` symbol are assembled through the localized wording key
///   `core_progressIndicator_percent_value`, so the symbol, its spacing and its position follow the
///   typographic rules of the current language (e.g. `"75%"` in English, `"75 %"` in French, `"٪75"` in Arabic).
///   - When `alignment` is `.center` (default), only the percentage is shown, centered.
///   - When `alignment` is `.start`, the percentage is at the leading edge and the description (if provided) at the trailing edge.
///   - When `alignment` is `.end`, the description (if provided) is at the leading edge and the percentage at the trailing edge.
///
/// In **indeterminate** mode, the `helperText` parameter is a simple `String?` with a separate `helperTextAlignment` parameter:
///
/// - **`.center`** (default): The text is centered under the progress bar.
/// - **`.start`**: The text is aligned to the leading edge.
/// - **`.end`**: The text is aligned to the trailing edge.
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
/// ### Determinate — Basic usage
///
/// ```swift
///     // Determinate — default (neutral, with track, default gap, reveal animation)
///     OUDSLinearProgressIndicator(progress: 0.75)
///
///     // Determinate with an accent status, no track and a helper text
///     OUDSLinearProgressIndicator(progress: 0.5,
///                                 status: .accent,
///                                 track: false,
///                                 helperText: .description("Uploading…"))
///
///     // Description aligned to the end
///     OUDSLinearProgressIndicator(progress: 0.5, helperText: .description("Uploading...", alignment: .end))
///
///     // Percentage centered (default)
///     OUDSLinearProgressIndicator(progress: 0.75, helperText: .percent())
///
///     // Percentage with description at start (percentage leading, description trailing)
///     OUDSLinearProgressIndicator(progress: 0.75,
///                                 helperText: .percent(description: "of 100 MB", alignment: .start))
///
///     // Indeterminate
///     OUDSLinearProgressIndicator(status: .info)
///     OUDSLinearProgressIndicator(status: .accent, helperText: "Processing…")
///
///     // Helper text aligned to the end
///     OUDSLinearProgressIndicator(status: .info,
///                                 helperText: "Loading data…",
///                                 helperTextAlignment: .end)
///
///     // Determinate with accessibility name and state for VoiceOver
///     OUDSLinearProgressIndicator(progress: 0.75,
///                                 accessibility: .init(name: "download bar", state: "downloading"))
///
///     // Determinate with accessibility and helper text
///     OUDSLinearProgressIndicator(progress: 0.5,
///                                 accessibility: .init(name: "progress bar", state: "step 1 of 4"),
///                                 helperText: .description("Loading..."))
///
///     // Indeterminate with accessibility
///     OUDSLinearProgressIndicator(status: .info,
///                                 accessibility: .init(name: "loading", state: "processing"))
/// ```
///
/// ## Accessibility considerations
///
/// - Use the `accessibility` parameter to provide a custom name and state for VoiceOver:
///   - `accessibility.name`: The name of the component (e.g., "progress bar", "download bar")
///   - `accessibility.state`: The state of the component (e.g., "downloading", "step 1 of 4")
/// - VoiceOver reads: **[name]. [state]. [helperText] [value]**. Example: *"download bar. downloading. 75 percent"*
/// - If `accessibility` is not provided, the behavior is unchanged: only the helper text (if provided) is used as label.
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
/// - Version: 1.2.0 (Figma component design version)
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSLinearProgressIndicator: View { // TODO: #1509 - Add hyperlink to documentation when ready

    // MARK: - Properties

    /// Embeds all configuration details for the linear progress indicator.
    private let configuration: LinearProgressIndicatorConfiguration

    // MARK: - Helper Text Alignment

    /// The alignment of the helper text for the linear progress indicator.
    ///
    /// - Since: 3.0.0
    @frozen public enum HelperTextAlignment: Equatable, Sendable {
        /// The helper text is centered under the progress bar.
        case center

        /// The helper text is aligned to the leading edge.
        case start

        /// The helper text is aligned to the trailing edge.
        case end
    }

    // MARK: - Determinate Progress Indicator Helper Text

    /// The helper text can be added in **determinate** indicator
    ///
    /// - Since: 3.0.0
    @frozen public enum HelperTextType: Equatable {

        /// The helper text with a description without any information of progress.
        ///
        /// - Parameters:
        ///   - description: The text to display
        ///   - alignment: Controls the horizontal alignment of the description text. Defaults to `.center`.
        case description(_ description: String, alignment: HelperTextAlignment = .center)

        /// Displays the progress information (percentage value with its `%` character) in the helper text
        /// according to the alignment.
        ///
        /// The value and its percent symbol are assembled using the localized wording key
        /// `core_progressIndicator_percent_value`, so the exact rendering (symbol, spacing, position) follows
        /// the typographic rules of the current language instead of being hardcoded (e.g. `"75%"` in English,
        /// `"75 %"` in French with a space before the symbol, `"٪75"` in Arabic with the Arabic percent sign
        /// before the value).
        ///
        /// - Parameters:
        ///   - description: Optional description text displayed alongside the percentage. Ignored when `alignment` is `.center`.
        ///   - alignment: The horizontal alignment of the helper text. Defaults to `.center`.
        case percent(description: String? = nil, alignment: HelperTextAlignment = .center)
    }

    // MARK: - Initializers

    /// Creates a **determinate** linear progress indicator.
    ///
    /// - Parameters:
    ///    - progress: The current progress in the `[0, 1]` range. Values outside of this range are coerced.
    ///    - status: The status of the indicator, driving its color. Defaults to ``OUDSProgressIndicatorStatus/neutral``.
    ///    - track: Whether the track is displayed. Defaults to `true`.
    ///    - stopIndicator: Whether a stop indicator is displayed at the end of the track. Defaults to
    ///      `false`.
    ///    - helperText: Optional additional text displayed below the bar. Defaults to `.percent` with alignment `.center`. The
    ///      percentage rendering (symbol, spacing, position) follows the localized wording key
    ///      `core_progressIndicator_percent_value`.
    ///    - gapSize: The size of the gap between the indicator and the track. Defaults to ``OUDSProgressIndicatorGapSize/default``.
    ///    - animated: When `true` (default), the indicator progressively fills from `0` to `progress` on
    ///      first display, and animates any subsequent change of `progress`. When `false`, the indicator
    ///      is displayed instantly at its target value with no animation. Animations are always disabled
    ///      when `accessibilityReduceMotion` is on or when Low Power Mode is enabled, regardless of this
    ///      flag.
    ///    - accessibility: Optional accessibility configuration for VoiceOver. Defaults to `nil`.
    public init(progress: Double,
                status: OUDSProgressIndicatorStatus = .neutral,
                track: Bool = true,
                stopIndicator: Bool = false,
                helperText: Self.HelperTextType? = .percent(alignment: .center),
                gapSize: OUDSProgressIndicatorGapSize = .default,
                animated: Bool = true,
                accessibility: OUDSAccessibilityConfiguration? = nil)
    {
        configuration = .determinate(.init(progress: progress,
                                           status: status,
                                           track: track,
                                           stopIndicator: stopIndicator,
                                           helperText: helperText,
                                           gapSize: gapSize,
                                           animated: animated,
                                           accessibilityName: accessibility?.name,
                                           accessibilityState: accessibility?.state))
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
    ///    - helperTextAlignment: The alignment of the helper text. Defaults to `.center`. Ignored if `helperText` is `nil`.
    ///    - gapSize: The size of the gap between the indicator and the track. Defaults to
    ///      ``OUDSProgressIndicatorGapSize/default``.
    ///    - accessibility: Optional accessibility configuration for VoiceOver. Defaults to `nil`.
    public init(status: OUDSProgressIndicatorStatus = .neutral,
                track: Bool = true,
                helperText: String? = nil,
                helperTextAlignment: HelperTextAlignment = .center,
                gapSize: OUDSProgressIndicatorGapSize = .default,
                accessibility: OUDSAccessibilityConfiguration? = nil)
    {
        configuration = .indeterminate(.init(status: status,
                                             track: track,
                                             helperText: helperText,
                                             helperTextAlignment: helperTextAlignment,
                                             gapSize: gapSize,
                                             accessibilityName: accessibility?.name,
                                             accessibilityState: accessibility?.state))
    }

    // MARK: - Body

    public var body: some View {
        LinearProgressIndicatorView(configuration: configuration)
    }
}
