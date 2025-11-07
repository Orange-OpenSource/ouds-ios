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

import OUDSFoundations
import SwiftUI

/// Chips help people enter information, make selections, filter content, or trigger actions.
/// Chips can show multiple interactive elements together in the same area, such as a list of selectable movie times, or a serie of email contacts.
/// A *suggestion chip* is a compact UI element used to present recommended or predictive options based on user input or context.
/// This version of the *suggestion chip* uses the *text only* layout which displays only text, offering a clean and minimalistic look.
/// Best suited for category-based filters that do not require additional visual elements.
/// Other layouts are available for this component like: *text + icon* and *icon only*.
///
/// ## Accessibility considerations
///
/// This component does not define in its side some accessibility hints. If you use this component, you must define such hints so as to explain
/// to your users which actions are available for which interactions.
///
/// ## Code samples
///
/// ```swift
///     // Icon only
///     OUDSSuggestionChip(icon: Image("ic_heart"), accessibilityLabel: "Heart") { /* the action to process */ }
///
///     // Text only
///     OUDSSuggestionChip(text: "Heart") { /* the action to process */ }
///
///     // Text and icon
///     OUDSSuggestionChip(icon: Image("ic_heart"), text: "Heart") { /* the action to process */ }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/77fdea-chip/b/6578e5/t/2d71fd4bb4)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A suggestion chip component in light and dark mode with Orange theme](component_suggestionChip_Orange)
///
/// ### Orange Business Tools
///
/// ![A suggestion chip component in light and dark mode with Orange Business Tools theme](component_suggestionChip_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A suggestion chip component in light and dark mode with Sosh theme](component_suggestionChip_Sosh)
///
/// ### Wireframe
///
/// ![A suggestion chip component in light and dark mode with Wireframe theme](component_suggestionChip_Wireframe)
///
/// - Version: 1.3.0
/// - Since: 0.17.0
public struct OUDSSuggestionChip: View { // TODO: #407 - Add documentation hyperlink in doc above

    // MARK: - Stored Properties

    private let layout: Chip.Layout
    private let action: () -> Void

    // MARK: - Initializers

    /// Creates a chip with text and icon.
    ///
    /// No accessibility hint is defined for this component.
    /// **Do not forget to define your own accessibility hint depending to what you want to do for the user when a tap is made.**
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - text: The text to display in the chip, should not be empty
    ///    - action: The action to perform when the user triggers the chip
    public init(icon: Image, text: String, action: @escaping () -> Void) {
        if text.isEmpty {
            OL.warning("The OUDSSuggestionChip should not have an empty text! Prefer instead OUDSSuggestionChip(icon:accessibilityLabel:action).")
        }
        layout = .textAndIcon(text: text, icon: icon, iconPosition: .leading)
        self.action = action
    }

    /// Creates a chip with an icon only.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the chip action, should not be empty
    ///    - action: The action to perform when the user triggers the chip
    public init(icon: Image, accessibilityLabel: String, action: @escaping () -> Void) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSSuggestionChip should not have an empty accessibility label, think about your disabled users!")
        }
        layout = .icon(icon, accessibilityLabel)
        self.action = action
    }

    /// Creates a chip with a text only.
    ///
    /// - Parameters:
    ///    - text: The text of the button to display,  must not be empty
    ///    - action: The action to perform when the user triggers the chip
    public init(text: String, action: @escaping () -> Void) {
        if text.isEmpty {
            OL.fatal("The OUDSSuggestionChip must not have an empty text!")
        }
        layout = .text(text)
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        InteractionButton(action: action) {
            Chip(layout: layout, selected: false, interactionState: ChipInteractionState(with: $0))
        }
        .accessibilityLabel(accessibilityLabel)
    }

    private var accessibilityLabel: String {
        switch layout {
        case let .text(text), let .textAndIcon(text, _, _), let .icon(_, text):
            text
        }
    }
}
