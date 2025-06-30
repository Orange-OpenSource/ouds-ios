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

///
/// A ``OUDSFilterChip``is a compact UI element used in a design system to represent a filter option that can be selected or deselected by the user.
///
/// Filter chips allow users to refine content or data by applying one or more filters in a visually accessible and interactive way.
///
/// This version of the filter chip uses the *text only* layout which displays only text, offering a clean and minimalistic look.
///
/// Other layouts are available for this component: *text + icon* and *icon only*.
///
/// ## Code samples
///
/// ```swift
///     // Icon only layout as selected
///     OUDSFilterChip(icon: Image("ic_heart"), accessibilityLabel: "Heart", selected: true) { /* the action to process */ }
///
///     // Text only as not selected
///     OUDSFilterChip(text: "Label", selected: falss) { /* the action to process */ }
///
///     // Text and icon as selected
///     OUDSFilterChip(icon: Image("ic_heart"), text: "Label", selected: true) { /* the action to process */ }
/// ```
///
/// ## Design documentation
/// - TODO: Add OUDS documentation URL for chips
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/48a788-button)
///
/// - Version: 1.1.0
/// - Since: 0.16.0
public struct OUDSFilterChip: View {

    // MARK: Stored Properties

    private let layout: Chip.Layout
    private let action: () -> Void
    private let selected: Bool
    @Environment(\.theme) private var theme

    // MARK: Initializers

    /// Create a filter chip with text and icon.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - text: The text to display in the chip
    ///    - selected: Flag to know if chip is selected
    ///    - action: The action to perform when the user triggers the chip
    public init(icon: Image, text: String, selected: Bool, action: @escaping () -> Void) {
        layout = .textAndIcon(text: text, icon: icon, iconPosition: .trailing)
        self.action = action
        self.selected = selected
    }

    /// Create a chip with an icon only.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the chip action
    ///    - selected: Flag to know if chip is selected
    ///    - action: The action to perform when the user triggers the chip
    public init(icon: Image, accessibilityLabel: String, selected: Bool, action: @escaping () -> Void) {
        layout = .icon(icon, accessibilityLabel)
        self.action = action
        self.selected = selected
    }

    /// Create a chip with a text only.
    ///
    /// - Parameters:
    ///    - text: The text of the button to display
    ///    - selected: Flag to know if chip is selected
    ///    - action: The action to perform when the user triggers the chip
    public init(text: String, selected: Bool, action: @escaping () -> Void) {
        layout = .text(text)
        self.action = action
        self.selected = selected
    }

    // MARK: Body

    public var body: some View {
        InteractionButton(action: action) {
            Chip(layout: layout, selected: selected, interactionState: ChipInteractionState(with: $0))
        }
    }
}
