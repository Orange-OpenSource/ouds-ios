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

/// A circular indicator shows the progress of a task using a circle.
/// It can show a specific value (determinate) or just that something is in progress (indeterminate).
/// Useful when you need more visual focus or when space is limited.
///
/// ## Variants
///
/// Two variants are provided:
///
/// - **Determinate**: the caller provides a `progress` value in `[0, 1]`. Values outside this range are coerced.
/// Shows the exact progress of a task, usually as a percentage from 0% to 100%.
/// Provides clear and measurable feedback, helping users understand how long the task will take and reducing uncertainty.
/// Use determinate indicators whenever possible. Avoid indeterminate when progress can be measured, e.g.
/// when the progress value is known (e.g. file upload, installation, data sync) or when the system can estimate completion time or percentage
///
/// - **Indeterminate**: no `progress` is provided and the indicator loops continuously.
/// Shows that a process is active without indicating exact progress.
/// Used when the system cannot determine how long the task will take.
/// Communicates that the system is working, even without precise data, and prevents users from thinking the interface is frozen.
/// For long loading times (over 5 seconds), additional context must be provided.
/// This helps inform users about the system state, reduces uncertainty, and prevents the interface from being perceived as unresponsive.
///
/// ## Statuses
///
/// - **Neutral**: default status used when progress has no specific semantic meaning. Suitable for generic loading,
///  processing, synchronization or background tasks.
/// - **Accent**: used to highlight primary or brand-related actions (uploads, downloads, installations, onboarding).
/// - **Positive**: indicates successful progress or a process leading to a successful outcome.
/// - **Info**: indicates informational or system-related processes (background synchronization, data retrieval).
/// - **Warning**: indicates progress related to an operation that requires user attention or should be monitored.
/// - **Negative**: indicates progress related to an error, recovery, cancellation or failure.
///
/// ## Gap size
///
/// - **default**: standard gap between the indicator and the track (about 14° of arc).
/// - **small**: reduced gap for a more compact appearance.
///
/// ## Track
///
/// - `true` (default): the track is displayed. Recommended when the indicator is shown on its own and needs a clear
///  structure. The track helps define the full range of progress and makes the value easier to read.
/// - `false`: the track is hidden. Recommended when the indicator is embedded inside another component
///  (button, tag, toast) or when a more minimal appearance is needed.
///
/// ## Animation (determinate mode only)
///
/// When `animated` is `true` (default), the determinate indicator progressively fills from `0` to the target
/// `progress` on first display, and animates any subsequent change of `progress`. When `animated` is `false`,
/// the indicator is displayed instantly at its target value with no animation.
///
/// Animations are always disabled when `accessibilityReduceMotion` is `true` or when Low Power Mode is enabled,
/// regardless of the `animated` flag.
///
/// The indeterminate mode is not affected by this flag: its Android Material 3 animation is intrinsic to the mode.
///
/// ## Helper text
///
/// An optional text displayed below the circular indicator to provide context or additional information.
/// The helper text is always centered under the indicator.
///
/// In **determinate** mode, use ``OUDSCircularProgressIndicator/HelperTextType`` which offers two variants:
///
/// - **`.description(_:)`**: Displays a simple description text without the progress percentage.
///
/// - **`.percent(_:)`**: Displays the progress percentage with an optional description. The percentage
///   value and its `%` symbol are assembled through the localized wording key
///   `core_progressIndicator_percent_value`, so the symbol, its spacing and its position follow the
///   typographic rules of the current language (e.g. `"75%"` in English, `"75 %"` in French, `"٪75"` in Arabic).
///
/// In **indeterminate** mode, the `helperText` parameter is a simple `String?`.
///
/// ## Code samples
///
/// ```swift
///     // Determinate - default (neutral, with track, default gap, reveal animation on display)
///     OUDSCircularProgressIndicator(progress: 0.75)
///
///     // Determinate with an accent status and no track
///     OUDSCircularProgressIndicator(progress: 0.5, status: .accent, track: false)
///
///     // Determinate with a warning status and a small gap
///     OUDSCircularProgressIndicator(progress: 0.3, status: .warning, gapSize: .small)
///
///     // Determinate displayed instantly at its target value, without any animation
///     OUDSCircularProgressIndicator(progress: 0.75, animated: false)
///
///     // Determinate with helper text
///     OUDSCircularProgressIndicator(progress: 0.75, helperText: .description("Uploading..."))
///
///     // Determinate with percentage and description
///     OUDSCircularProgressIndicator(progress: 0.75,
///                                   helperText: .percent("of 100 MB"))
///
///     // Determinate with accessibility name and state for VoiceOver
///     OUDSCircularProgressIndicator(progress: 0.75,
///                                   accessibility: .init(name: "download bar", state: "downloading"))
///
///     // Determinate with accessibility and helper text
///     OUDSCircularProgressIndicator(progress: 0.5,
///                                   accessibility: .init(name: "progress bar", state: "step 1 of 4"),
///                                   helperText: .description("Loading..."))
///
///     // Indeterminate
///     OUDSCircularProgressIndicator()
///     OUDSCircularProgressIndicator(status: .info)
///
///     // Indeterminate with helper text
///     OUDSCircularProgressIndicator(status: .info, helperText: "Processing...")
/// ```
///
/// ## Accessibility considerations
///
/// - Use the `accessibility` parameter to provide a custom name and state for VoiceOver:
///   - `accessibility.name`: The name of the component (e.g., "progress bar", "download bar")
///   - `accessibility.state`: The state of the component (e.g., "downloading", "step 1 of 4")
/// - VoiceOver reads: **[name]. [state]. [helperText] [value]**. Example: *"download bar. downloading. 75 percent"*
/// - If `accessibility` is not provided, the behavior is unchanged: only the helper text (if provided) is used as label.
/// - In **determinate** mode, the view exposes the current progress as an accessibility value (percentage) so that
///   VoiceOver reads e.g. *"75 percent"*, and is marked with the `.updatesFrequently` trait so that assistive
///   technologies know the value is changing.
/// - The indicator never captures **Full Keyboard Access** focus, as no interaction is possible on a progress
///   indicator. On iOS 17+ / macOS 14+ / visionOS 1+ / watchOS 10+ / tvOS 17+, this is enforced via
///   `accessibilityRespondsToUserInteraction(false)`; on earlier OS versions, the semantic `.isStaticText`
///   trait is used.
/// - In **indeterminate** mode, the view is hidden from VoiceOver (`.accessibilityHidden(true)`) — and therefore
///   also excluded from Full Keyboard Access navigation: there is no readable value to expose and keeping the
///   element focusable would only pollute navigation.
/// - Animations are disabled when `accessibilityReduceMotion` is `true` or when Low Power Mode is enabled.
///
/// ## Colored surfaces
///
/// When placed on an ``OUDSColoredSurface``, the indicator switches to a **monochrome** rendering, the `status` is
/// ignored.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A circular progress indicator component in light and dark modes with Orange theme](component_progress_indicator_circular_Orange)
///
/// ### Orange Compact
///
/// ![A circular progress indicator component in light and dark modes with Orange Compact theme](component_progress_indicator_circular_OrangeCompact)
///
/// ### Sosh
///
/// ![A circular progress indicator component in light and dark modes with Sosh theme](component_progress_indicator_circular_Sosh)
///
/// ### Wireframe
///
/// ![A circular progress indicator component in light and dark modes with Wireframe theme](component_progress_indicator_circular_Wireframe)
///
/// - Version: 1.2.0 (Figma component design version)
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSCircularProgressIndicator: View { // TODO: #409 - Update documentation reference

    /// The default component size (matches the Android reference implementation and Material 3 defaults).
    public static let defaultSize: CGFloat = 48.0

    // MARK: - Properties

    /// Embeds all configuration details for the circular progress indicator
    private let configuration: CircularProgressIndicatorConfiguration

    // MARK: - Determinate Progress Indicator Helper Text

    /// The helper text can be added in **determinate** indicator
    ///
    /// - Since: 3.0.0
    @frozen public enum HelperTextType: Equatable {

        /// The helper text with a description without any information of progress.
        ///
        /// - Parameter description: The text to display
        case description(_ description: String)

        /// Displays the progress information (percentage value with its `%` character) in the helper text.
        ///
        /// The value and its percent symbol are assembled using the localized wording key
        /// `core_progressIndicator_percent_value`, so the exact rendering (symbol, spacing, position) follows
        /// the typographic rules of the current language instead of being hardcoded (e.g. `"75%"` in English,
        /// `"75 %"` in French with a space before the symbol, `"٪75"` in Arabic with the Arabic percent sign
        /// before the value).
        ///
        /// - Parameter description: Optional description text displayed alongside the percentage.
        case percent(_ description: String? = nil)
    }

    // MARK: - Initializers

    /// Creates a **determinate** circular progress indicator.
    ///
    /// - Parameters:
    ///    - progress: The current progress in the `[0, 1]` range. Values outside of this range are coerced.
    ///    - status: The status of the indicator, driving its color. Defaults to ``OUDSProgressIndicatorStatus/neutral``.
    ///    - track: Whether the track is displayed. Defaults to `true`.
    ///    - gapSize: The size of the gap between the indicator and the track. Defaults to ``OUDSProgressIndicatorGapSize/default``.
    ///    - animated: When `true` (default), the indicator progressively fills from `0` to `progress` on first
    ///      display, and animates any subsequent change of `progress`. When `false`, the indicator is displayed
    ///      instantly at its target value with no animation. Animations are always disabled when
    ///      `accessibilityReduceMotion` is on or when Low Power Mode is enabled, regardless of this flag.
    ///    - size: The size of the component could be adjusted if used internally by components.
    ///    - helperText: Optional helper text displayed below the indicator. Defaults to `nil`.
    ///    - accessibility: Optional accessibility configuration for VoiceOver. Defaults to `nil`.
    public init(progress: Double,
                status: OUDSProgressIndicatorStatus = .neutral,
                track: Bool = true,
                gapSize: OUDSProgressIndicatorGapSize = .default,
                animated: Bool = true,
                size: CGFloat = Self.defaultSize,
                helperText: Self.HelperTextType? = nil,
                accessibility: OUDSAccessibilityConfiguration? = nil)
    {
        configuration = CircularProgressIndicatorConfiguration(progress: progress,
                                                               status: status,
                                                               track: track,
                                                               gapSize: gapSize,
                                                               size: size,
                                                               animated: animated,
                                                               helperText: helperText,
                                                               accessibilityName: accessibility?.name,
                                                               accessibilityState: accessibility?.state)
    }

    /// Creates an **indeterminate** circular progress indicator.
    ///
    /// - Parameters:
    ///    - status: The status of the indicator, driving its color. Defaults to ``OUDSProgressIndicatorStatus/neutral``.
    ///    - track: Whether the track is displayed. Defaults to `true`.
    ///    - gapSize: The size of the gap between the indicator and the track. Defaults to ``OUDSProgressIndicatorGapSize/default``.
    ///    - size: The size of the component could be adjusted if used internally by components.
    ///    - helperText: Optional helper text displayed below the indicator. Defaults to `nil`.
    ///    - accessibility: Optional accessibility configuration for VoiceOver. Defaults to `nil`.
    public init(status: OUDSProgressIndicatorStatus = .neutral,
                track: Bool = true,
                gapSize: OUDSProgressIndicatorGapSize = .default,
                size: CGFloat = Self.defaultSize,
                helperText: String? = nil,
                accessibility: OUDSAccessibilityConfiguration? = nil)
    {
        configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                               status: status,
                                                               track: track,
                                                               gapSize: gapSize,
                                                               size: size,
                                                               animated: true,
                                                               helperText: .description(helperText ?? ""),
                                                               accessibilityName: accessibility?.name,
                                                               accessibilityState: accessibility?.state)
    }

    // MARK: - Body

    public var body: some View {
        CircularProgressIndicatorView(configuration: configuration)
    }
}
