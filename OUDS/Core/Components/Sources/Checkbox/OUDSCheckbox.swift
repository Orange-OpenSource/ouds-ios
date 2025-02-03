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
    @Binding private var status: Status
    private let style: Style
    private let action: () -> Void

    @Environment(\.theme) private var theme

    // MARK: - Type

    /// All the combinations of options to define the checbkox component
    private enum `Type`{
        case selectorOnly
        case label(String)
        case dividedLabel(String)
        case labelAndIcon(String, Image)
        case dividedLabelAndIcon(String, Image)
        case labelAndHelper(label: String, helper: String)
        case dividedLabelAndHelper(label: String, helper: String)
        case labelAndHelperAndIcon(label: String, helper: String, icon: Image)
        case dividedLabelAndHelperAndIcon(label: String, helper: String, icon: Image)
    }

    // MARK: - State

    /// The internal state used by modifiers to handle all states of  the component
    enum State {
        case enabled
        case hover
        case pressed
        case disabled
        case readOnly
        // .loading not managed yet, for next version
        // .focus not managed as not such customizable
        // .skeleton not managed as dedicated view in the end
    }

    // MARK: - Component

    /// The objects we can find inside this component
    enum Item {
        case checkbox
        case label
        case helper
        case image
        case divider
    }

    // MARK: - Status

    /// Represents the status of a checkbox i.e. a kind of type or status
    public enum Status: CaseIterable {
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

        var isError: Bool {
            self == .errorSelected || self == .errorUnselected || self == .errorUndeterminate
        }

        func next() -> Status { // TODO: #264 - Unit tests
            let allStates = Self.allCases
            if let currentIndex = allStates.firstIndex(of: self) {
                return allStates[(currentIndex + 1) % allStates.count]
            } else {
                return self
            }
        }
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
    public init(status: Binding<Status>,
                style: Style,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = .selectorOnly
        layout = .selectorOnly
        self._status = status
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
                status: Binding<Status>,
                style: Style,
                layout: Layout = .default,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = divider ? .dividedLabel(label) : .label(label)
        self._status = status
        self.layout = layout
        self.style = style
        self.action = action

        if label.isEmpty {
            OL.warning("Label for OUDSCheckbox is empty, is it expected?")
        }
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
                status: Binding<Status>,
                style: Style,
                layout: Layout = .default,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = divider ? .dividedLabelAndIcon(label, icon) : .labelAndIcon(label, icon)
        self._status = status
        self.layout = layout
        self.style = style
        self.action = action

        if label.isEmpty {
            OL.warning("Label for OUDSCheckbox is empty, is it expected?")
        }
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
                status: Binding<Status>,
                style: Style,
                layout: Layout = .default,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = divider
        ? .dividedLabelAndHelper(label: label, helper: helper)
        : .labelAndHelper(label: label, helper: helper)
        self.layout = layout
        self._status = status
        self.style = style
        self.action = action

        if label.isEmpty {
            OL.warning("Label for OUDSCheckbox is empty, is it expected?")
        }

        if helper.isEmpty {
            OL.warning("Helper for OUDSCheckbox is empty, is it expected?")
        }
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
                status: Binding<Status>,
                style: Style,
                layout: Layout = .default,
                divider: Bool = false,
                action: @escaping () -> Void) {
        type = divider
        ? .dividedLabelAndHelperAndIcon(label: label, helper: helper, icon: icon)
        : .labelAndHelperAndIcon(label: label, helper: helper, icon: icon)
        self.layout = layout
        self._status = status
        self.style = style
        self.action = action

        if label.isEmpty {
            OL.warning("Label for OUDSCheckbox is empty, is it expected?")
        }

        if helper.isEmpty {
            OL.warning("Helper for OUDSCheckbox is empty, is it expected?")
        }
    }

    // MARK: - Body

    public var body: some View {
        body(for: type)
            .padding(theme.listItem.listItemSpaceInset)
    }

    @ViewBuilder
    private func body(for type: `Type`) -> some View {
        switch type {
        case .selectorOnly:
            Checkbox(status: $status, action: action)
        case .label(let label):
            Checkbox(label: label, isInversed: layout == .inverse, status: $status, action: action)
        case let .labelAndHelper(label, helper):
            Checkbox(label: label, helper: helper, isInversed: layout == .inverse, status: $status, action: action)
        case let .labelAndHelperAndIcon(label: label, helper: helper, icon: icon):
            Checkbox(label: label, helper: helper, icon: icon, isInversed: layout == .inverse, status: $status, action: action)
        case let .labelAndIcon(label, icon):
            Checkbox(label: label, icon: icon, isInversed: layout == .inverse, status: $status, action: action)
        // TODO: #264 - Implement other cases (divider)
        default:
            Text("Not implemented yet")
        }
    }
}
