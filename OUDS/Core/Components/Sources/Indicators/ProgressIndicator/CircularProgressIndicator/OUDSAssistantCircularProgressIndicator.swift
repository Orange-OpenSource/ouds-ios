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

/// A circular indicator dedicated to AI assistant contexts, showing that an assistant is "thinking"
/// or processing a request.
///
/// It shares its drawing and animation code with ``OUDSCircularProgressIndicator`` but differs on
/// four points:
///
/// - It is **indeterminate only**
/// - It **never displays a track**
/// - It **always uses the default gap**
/// - Its foreground color driven by the four AI semantic tokens of colors (one color per sweep respiration cycle) with a short cross-fade between
///   two successive colors.
///
/// The rotation, sweep respiration, size and accessibility behavior are strictly identical to the
/// indeterminate variant of ``OUDSCircularProgressIndicator``.
///
/// ## Code samples
///
/// ```swift
///     OUDSAssistantCircularProgressIndicator()
///
///     // Custom size — stroke width and gap scale proportionally to the effective size
///     OUDSAssistantCircularProgressIndicator()
///         .frame(width: 96, height: 96)
/// ```
///
/// ## Accessibility considerations
///
/// - The view is always hidden from VoiceOver (`.accessibilityHidden(true)`): there is no readable
///   value to expose and keeping the element focusable would only pollute VoiceOver navigation.
///   As the view is hidden from the accessibility tree, it is also excluded from Full Keyboard
///   Access navigation.
/// - Motion is disabled when `accessibilityReduceMotion` is `true` or when Low Power Mode is
///   enabled: the arc is then displayed statically using `colorAiPrimary` and the color cycling
///   is paused.
///
/// ## Colored surfaces
///
/// When placed on an ``OUDSColoredSurface``, the indicator switches to a **monochrome** rendering:
/// the AI color cycling is disabled and the surface content color is used instead.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A circular progress indicator component in light and dark modes with Orange theme](component_progress_indicator_circular_assistant_Orange)
///
/// ### Orange Compact
///
/// ![A circular progress indicator component in light and dark modes with Orange Compact theme](component_progress_indicator_circular_assistant_OrangeCompact)
///
/// ### Sosh
///
/// ![A circular progress indicator component in light and dark modes with Sosh theme](component_progress_indicator_circular_assistant_Sosh)
///
/// ### Wireframe
///
/// ![A circular progress indicator component in light and dark modes with Wireframe theme](component_progress_indicator_circular_assistant_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSAssistantCircularProgressIndicator: View { // TODO: #409 - Update documentation reference

    // MARK: - Properties

    /// Embeds all configuration details for the circular progress indicator.
    private let configuration: CircularProgressIndicatorConfiguration

    // MARK: - Initializers

    /// Creates an **indeterminate** AI assistant circular progress indicator.
    public init() {
        configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                               status: .neutral,
                                                               track: false,
                                                               gapSize: .default,
                                                               animated: true,
                                                               appearance: .assistant)
    }

    // MARK: - Body

    public var body: some View {
        CircularProgressIndicatorView(configuration: configuration)
    }
}
