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

// MARK: - OUDS Suggestion Chip

/// Chips help people enter information, make selections, filter content, or trigger actions.
/// Chips can show multiple interactive elements together in the same area, such as a list of selectable movie times, or a series of email contacts.
/// A suggestion chip is a compact UI element used to present recommended or predictive options based on user input or context.
/// This version of the suggestion chip uses the *text only* layout which displays only text, offering a clean and minimalistic look.
/// Best suited for category-based filters that do not require additional visual elements.
/// Other layouts are avaialble for this component like: *text + icon* and *icon only*.
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
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/73c701-components)
///
/// - Version: 1.2.0
/// - Since: 0.17.0
public struct OUDSSuggestionChip: View { // TODO: #407 - Add documentation hyperlink in doc above

    // MARK: Stored Properties

    private let layout: Chip.Layout
    private let action: () -> Void

    @Environment(\.theme) private var theme

    // MARK: Initializers

    /// Create a chip with text and icon.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - text: The text to display in the chip, should not be empty
    ///    - action: The action to perform when the user triggers the chip
    public init(icon: Image, text: String, action: @escaping () -> Void) {
        if text.isEmpty {
            OL.warning("The OUDSSuggestionChip should not have an empty text!")
        }
        layout = .textAndIcon(text: text, icon: icon, iconPosition: .leading)
        self.action = action
    }

    /// Create a chip with an icon only.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the chip action, should not be empty
    ///    - action: The action to perform when the user triggers the chip
    public init(icon: Image, accessibilityLabel: String, action: @escaping () -> Void) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSFilterChip should not have an empty accessibility label, think about your disabled users!")
        }
        layout = .icon(icon, accessibilityLabel)
        self.action = action
    }

    /// Create a chip with a text only.
    ///
    /// - Parameters:
    ///    - text: The text of the button to display,  should not be empty
    ///    - action: The action to perform when the user triggers the chip
    public init(text: String, action: @escaping () -> Void) {
        if text.isEmpty {
            OL.warning("The OUDSSuggestionChip should not have an empty text!")
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
