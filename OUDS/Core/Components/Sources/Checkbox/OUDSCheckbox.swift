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

// MARK: - OUDS Checbkox

// TODO: #264 - Update documentation

/// The ``OUDSChebckbox`` proposes...
///
/// ## Hierarchies
///
/// ## Code samples
///
/// ## Styles
///
/// ## Colored Surface
///
/// ## Design documentation
///
/// - Since: 0.11.0
public struct OUDSCheckbox: View {

    // MARK: - Properties

    private let type: `Type`
    private let layout: Layout
    private let status: Status
    private let style: Style
    private let action: () -> Void

    // MARK: - Type

    /// All the combinations of options to define the checbkox component
    private enum `Type`{
        case selectorOnly
        case dividedSelectorOnly
        case label(String)
        case dividedLabel(String)
        case labelAndIcon(String, Image)
        case dividedLabelAndIcon(String, Image)
        case labelAndHelper(label: String, helper: String)
        case dividedLabelAndHelper(label: String, helper: String)
        case labelAndHelperAndIcon(label: String, helper: String, icon: Image)
        case dividedLabelAndHelperAndIcon(label: String, helper: String, icon: Image)
    }

    // MARK: - Status

    /// Represents the status of a checkbox i.e. a kind of type or status
    public enum Status {
        /// The checkbox is selected
        case selected

        /// The checkbox is not selected
        case unselected

        /// The checkbox is in an undeterminate state, i.e. preselected for example
        case undeterminate

        /// The checkbox is selected but is related to an error situation
        case errorSelected

        /// The checkbox is not selectedbut is related to an error situation
        case errorUnselected

        /// The checbkox is in an undeterminate state, i.e. preselected for example, but is related to an error situation
        case errorUndeterminate
    }

    // MARK: - Style

    /// Defines the state of the checkbox, e.g. loading or not, for the style
    public enum Style {
        /// The default style, the checkbox could be in states: enabled, disabled, hover, pressed, focused, read only, skeleton
        case `default`

        /// The loading style means a loading action is in progress, sometimes just after user tapped on chekcbix
        case loading
    }

    // MARK: - Layout

    /// Defines the layout of the checbkox, i.e. only a selector, default layout or inverse layout
    public enum Layout {
        /// Only a selector to display
        case selectorOnly

        /// Default layout, i.e. leading checkbox, trailing icon
        case `default`

        /// Invzrse layout, i.e. leading icon, trailing checkbox
        case inverse
    }

    // MARK: - Initializers

    /// Create a checkbox with only a selector
    ///
    /// - Parameters:
    ///    - status: How must look or be filled the checkbox
    ///    - style: The checkbox style
    ///    - divider: Flag to rise if a divider must be placed under the component, `false` by default
    ///    - action: The action to perform when the user change the checkbox value
    public init(status: Status,
                style: Style,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = divider ? .dividedSelectorOnly : .selectorOnly
        layout = .selectorOnly
        self.status = status
        self.style = style
        self.action = action
    }

    /// Create a checkbox with a label
    ///
    /// - Parameters:
    ///    - label: The text of the label
    ///    - status: How must look or be filled the checkbox
    ///    - style: The checkbox style
    ///    - layout: The layout for the component, `default` by default
    ///    - divider: Flag to rise if a divider must be placed under the component, `false` by default
    ///    - action: The action to perform when the user change the checkbox value
    public init(label: String,
                status: Status,
                style: Style,
                layout: Layout = .default,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = divider ? .dividedLabel(label) : .label(label)
        self.status = status
        self.layout = layout
        self.style = style
        self.action = action
    }

    /// Create a checkbox with a label and an icon
    ///
    /// - Parameters:
    ///    - label: The text of the label
    ///    - icon: The image to display
    ///    - status: How must look or be filled the checkbox
    ///    - style: The checkbox style
    ///    - layout: The layout for the component, `default` by default
    ///    - divider: Flag to rise if a divider must be placed under the component, `false` by default
    ///    - action: The action to perform when the user change the checkbox value
    public init(label: String,
                icon: Image,
                status: Status,
                style: Style,
                layout: Layout = .default,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = divider ? .dividedLabelAndIcon(label, icon) : .labelAndIcon(label, icon)
        self.status = status
        self.layout = layout
        self.style = style
        self.action = action
    }

    /// Create a checkbox with a label and an helper text
    ///
    /// - Parameters:
    ///    - label: The text of the label
    ///    - helper: The helper text to dispay
    ///    - status: How must look or be filled the checkbox
    ///    - style: The checkbox style
    ///    - layout: The layout for the component, `default` by default
    ///    - divider: Flag to rise if a divider must be placed under the component, `false` by default
    ///    - action: The action to perform when the user change the checkbox value
    public init(label: String,
                helper: String,
                status: Status,
                style: Style,
                layout: Layout = .default,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = divider
        ? .dividedLabelAndHelper(label: label, helper: helper)
        : .labelAndHelper(label: label, helper: helper)
        self.layout = layout
        self.status = status
        self.style = style
        self.action = action
    }

    /// Create a checkbox with a label, an helper text and an icon
    ///
    /// - Parameters:
    ///    - label: The text of the label
    ///    - helper: The helper text to dispay
    ///    - icon: The image to display
    ///    - status: How must look or be filled the checkbox
    ///    - style: The checkbox style
    ///    - layout: The layout for the component, `default` by default
    ///    - divider: Flag to rise if a divider must be placed under the component, `false` by default
    ///    - action: The action to perform when the user change the checkbox value
    public init(label: String,
                helper: String,
                icon: Image,
                status: Status,
                style: Style,
                layout: Layout = .default,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = divider
        ? .dividedLabelAndHelperAndIcon(label: label, helper: helper, icon: icon)
        : .labelAndHelperAndIcon(label: label, helper: helper, icon: icon)
        self.layout = layout
        self.status = status
        self.style = style
        self.action = action
    }

    // MARK: - Body

    public var body: some View {
        Text("Hello world!")
    }
}
