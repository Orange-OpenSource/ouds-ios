//
// Software Name: OUDSThemesContract iOS
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
import OUDSTokensSemantic
import SwiftUI

/// A picker allowing to expose several checkboxes and select some of them within the others.
/// Each checkbox contains a "tag", i.e. a supposed to be unique value.
/// The picker will expose the choosen values using this "tag".
/// It has also some configuration elements which will override the one applied to nested ``OUDSCheckboxItem`` (divider, read only and error mode, layout and outlined)
///
/// ## Accessibility considerations
///
/// *Voice Over* will use several elements to describe the component: if component disabled / read only, if error context, the label and helper texts and a chekcbox trait.
/// The picker itself does no have any defined accessiiblity value, label or identifier ; it remains in the users hands to define which one will be used.
/// However if defined in the ``OUDSRadioPickerData`` the items inside the picker will have such accessibility identifiers.
/// In addition the root item of the picker has for accessiiblity identifier the displayed text.
///
/// ## Forbidden by design
///
/// The design system does not allow to have ``OUDSCheckboxItem`` in both an error situation and a read only state.
/// The design system does not allow to have ``OUDSCheckboxItem`` in both an error situation and a disabled state.
/// The design system does not allow to have ``OUDSCheckboxItem`` in both a read only and a disabled state.
///
/// ## Code samples
///
/// ```swift
///     // Define the elements to display in checkboxes using OUDSCheckboxPickerData.
///     // This object has the same properties as the OUDSCheckboxItem,
///     // and some of them are optional with default values set
///     var someDataToPopulate: [OUDSCheckboxPickerData<String>] {
///         [
///         OUDSCheckboxPickerData<String>(tag: "Choice_1",
///                                        label: "Virgin Holy Lava",
///                                        additionalLabel: "Very spicy",
///                                        helper: "No alcohol, only tasty flavors",
///                                        icon: Image(systemName: "flame")),
///
///         OUDSCheckboxPickerData<String>(tag: "Choice_2",
///                                        label: "IPA beer",
///                                        helper: "From Brewdog company",
///                                        icon: Image(systemName: "dog.fill")),
///
///         OUDSCheckboxPickerData<String>(tag: "Choice_3",
///                                        label: "Mineral water",
///                                        icon: Image(systemName: "waterbottle.fill")),
///         ]
///     }
///
///     // Prepare the selection, with a value previously selected
///     // Use the data and the binding for the picker.
///     @State var selections: [String] = ["Choice_1"] // or empty if nothing selected
///
///     // Here the picker is vertical by default
///     OUDSCheckboxPicker(selections: $selections, checkboxes: someDataToPopulate)
///
///     // The picker can be vertical and have a root item with a label and a counter
///     OUDSCheckboxPicker(selections: $selections,
///                        placement: .verticalRooted(label, .textAndCount))
///
///     // The picker can apply some settings to all its radio buttons.
///     // It can be also horizontal with a scroll indicator.
///     // Here all the the checkboxes are in read only mode and use reversed layout.
///     // Here the picker is horizontal and shows the scroll indicator
///     OUDSCheckboxPicker(selections: $selections,
///                        checkboxes: someDataToPopulate)
///                        isReversed: true,
///                        isReadOnly: true,
///                        placement: .horizontal(true))
/// ```
///
/// ## Design documentation
///
/// There is no online specification as this component is not an official OUDSThemesContract one
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A checkbox picker component in light and dark mode with Orange theme](component_checkboxPicker_Orange)
///
/// - Since: 0.14.0
public struct OUDSCheckboxPicker<Tag>: View where Tag: Hashable {

    // MARK: - Properties

    /// The tags of the selected checkbox
    var selections: Binding<[Tag]>

    /// The list of data to wrap in ``OUDSCheckboxItem`` inside this picker
    private let checkboxes: [OUDSCheckboxPickerData<Tag>]

    /// The type of layout the picker must have
    private let placement: OUDSCheckboxPickerPlacement

    /// Overrides any configuration applied to embeded ``OUDSCheckboxItem`` and forces them to apply the reversed layout
    private let isReversed: Bool

    /// Overrides any configuration applied to embeded ``OUDSCheckboxItem`` and forces them to error mode
    private let isError: Bool

    /// Overrides any configuration applied to embeded ``OUDSCheckboxItem`` and forces them to read only mode
    private let isReadOnly: Bool

    /// Overrides any configuration applied to embeded ``OUDSCheckboxItem`` and displays a divider (except for the last one)
    private let hasDivider: Bool

    /// The custom spacing to apply between items by user
    private let customItemsSpacing: SpaceSemanticToken?

    /// View model acting as coordinator between root checkbox and children checkboxes
    @StateObject private var coordinator: CheckboxPickerCoordinator

    // MARK: - Environement variables

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.layoutDirection) private var layoutDirection
    @Environment(\.theme) private var theme

    // MARK: - Init

    /// Defines the picker view which displays using ``OUDSCheckboxItem`` view the ``OUDSCheckboxPickerData``
    /// - Parameters:
    ///    - selections: The current selected values
    ///    - checkboxes: The raw data to wrap in ``OUDSCheckboxItem`` for display
    ///    - placement: How checkboxes must be placed (default set to *vertical*)
    ///    - isReversed: If *true*, force all ``OUDSCheckboxItem`` to have reversed layout (default set to *false*)
    ///    - isError: If *true*, force all ``OUDSCheckboxItem`` to be in error mode (default set to *false*)
    ///    - isReadOnly: If *true*, force all ``OUDSCheckboxItem`` to be in read only mode (default set to *false*)
    ///    - hasDivider: If *true*, force all ``OUDSCheckboxItem`` except the last one to have a divider (default set to *false*)
    ///    - itemsSpacing: The custom spacing to apply between utems, default set to *nl*. If *nil* token *theme.spaces.fixedNone* will be used.
    public init(selections: Binding<[Tag]>,
                checkboxes: [OUDSCheckboxPickerData<Tag>],
                placement: OUDSCheckboxPickerPlacement = .vertical,
                isReversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                itemsSpacing: SpaceSemanticToken? = nil)
    {
        self.selections = selections
        self.checkboxes = checkboxes
        self.placement = placement
        self.isReversed = isReversed
        self.isError = isError
        self.isReadOnly = isReadOnly
        self.hasDivider = hasDivider
        customItemsSpacing = itemsSpacing
        _coordinator = StateObject(wrappedValue: CheckboxPickerCoordinator(selections.count, checkboxes.count))
        verifySelections()
    }

    // MARK: - Body

    public var body: some View {
        switch placement {
        case let .horizontal(showsIndicator):
            ScrollView(.horizontal, showsIndicators: showsIndicator) {
                HStack(alignment: .center, spacing: itemsSpacing) {
                    content(for: checkboxes)
                }
            }
        case .vertical:
            VStack(alignment: .leading, spacing: itemsSpacing) {
                content(for: checkboxes)
            }
        case let .verticalRooted(label, type):
            VStack(alignment: .leading, spacing: itemsSpacing) {
                rootItem(labeled: label, of: type)
                content(for: checkboxes)
            }
        }
    }

    /// Adds a root checkbox to handle groups of children checkboxes.
    /// If this particular checkbox is selected, all children checkboxes are selected.
    /// If this particular checkbox is unselected, all children checkboxes are unselected.
    /// - Parameters:
    ///    - text: The text to display in the root view
    ///    - type: The type of display for the root label
    private func rootItem(labeled text: String, of type: OUDSCheckboxPickerPlacement.DisplayType) -> some View {
        OUDSCheckboxItemIndeterminate(selection: $coordinator.selectionRootState,
                                      label: rootLabel(for: text, of: type),
                                      isReversed: isReversed,
                                      isError: isError,
                                      isReadOnly: isReadOnly,
                                      hasDivider: hasDivider)
        {
            if case .selected = coordinator.selectionRootState {
                selections.wrappedValue = checkboxes.map(\.tag)
            } else {
                selections.wrappedValue = []
            }
        }
        .accessibilityLabel(a11yLabel)
        .accessibilityHint(a11yHint.localized())
        .accessibilityValue(a11yValue)
        .accessibilityIdentifier(rootLabel(for: text, of: type))
    }

    /// Creates several ``OUDSCheckboxItem`` `View` objects from ``OUDSCheckboxPickerData`` objects
    /// - Parameter checkboxes: The data to display in ``OUDSCheckboxItem`
    /// - Returns: The view
    private func content(for checkboxes: [OUDSCheckboxPickerData<Tag>]) -> some View {
        ForEach(checkboxes, id: \.tag) { checkbox in
            if let a11yidentifier = checkbox.accessibilityIdentifier {
                content(for: checkbox,
                        noDivider: checkboxes[checkboxes.count - 1].tag == checkbox.tag) // No divider for last item
                    .accessibilityIdentifier(a11yidentifier)
            } else {
                content(for: checkbox,
                        noDivider: checkboxes[checkboxes.count - 1].tag == checkbox.tag) // No divider for last item
            }
        }
    }

    /// Creates a new ``OUDSCheckboxItem`` `View` from one ``OUDSCheckboxPickerData``
    /// - Parameters:
    ///    - checkbox: The data to display in ``OUDSCheckboxItem`
    ///    - noDivider: If true, do not add divider to the item
    /// - Returns: The view
    private func content(for checkbox: OUDSCheckboxPickerData<Tag>, noDivider: Bool) -> some View {
        OUDSCheckboxItem(isOn: isSelected(tag: checkbox.tag) ? .constant(true) : .constant(false),
                         label: checkbox.label,
                         helper: checkbox.helper,
                         icon: checkbox.icon,
                         isReversed: isReversed ? true : checkbox.isReversed,
                         isError: isError ? true : checkbox.isError,
                         isReadOnly: isReadOnly ? true : checkbox.isReadOnly,
                         hasDivider: hasDivider && !noDivider ? true : checkbox.hasDivider)
        {
            if isSelected(tag: checkbox.tag) {
                selections.wrappedValue.removeAll(where: { $0 == checkbox.tag })
            } else {
                selections.wrappedValue.append(checkbox.tag)
            }
            coordinator.updateSelectionsRoot(selections.count, checkboxes.count)
        }
    }

    /// Given the `type` enriches the given `text` or not.
    /// Displays the selections copunt or not depending to the layout direction.
    /// - Parameters:
    ///    - text: The text to display as label for the root checkbox, to update if needed
    ///    - type: The type of display
    /// - Returns: The final string to add in the view
    private func rootLabel(for text: OUDSCheckboxPickerPlacement.RootLabel,
                           of type: OUDSCheckboxPickerPlacement.DisplayType) -> String
    {
        let count = selections.count
        switch type {
        case .textAndCount:
            return layoutDirection == .leftToRight ? "\(text) (\(count))" : "(\(count)) \(text)"
        case .textAndPositiveCount where !selections.isEmpty:
            return layoutDirection == .leftToRight ? "\(text) (\(count))" : "(\(count)) \(text)"
        default: // .textOnly, .textAndPositiveCount where count <= 0
            return text
        }
    }

    // MARK: - Coordinator

    /// View model for coordination between root checkbox and children checkboxes.
    /// Defines the rules for the root checkbox indicator state:
    /// - if no children checkbox is selected, root checkbox is unselected
    /// - if all children checkboxes are selected, root check box is selected
    /// - otherwise, root checkbox is indeterminate
    private final class CheckboxPickerCoordinator: ObservableObject {

        @Published var selectionRootState: OUDSCheckboxIndicatorState = .unselected

        init(_ selectionsCount: Int, _ checkboxesCount: Int) {
            selectionRootState = Self.valueFor(selectionsCount, checkboxesCount)
        }

        deinit {}

        func updateSelectionsRoot(_ selectionsCount: Int, _ checkboxesCount: Int) {
            selectionRootState = Self.valueFor(selectionsCount, checkboxesCount)
        }

        private static func valueFor(_ selectionsCount: Int, _ checkboxesCount: Int) -> OUDSCheckboxIndicatorState {
            if selectionsCount == 0 {
                return .unselected
            }
            if selectionsCount == checkboxesCount {
                return .selected
            }
            return .indeterminate
        }
    }

    // MARK: - Helpers

    /// If user does not define a custom spacing, use a default one
    private var itemsSpacing: SpaceSemanticToken {
        customItemsSpacing ?? theme.spaces.fixedNone
    }

    /// Checks if the given selections are available within the checkbox configurations.
    /// If not, displays a error message in the logs.
    private func verifySelections() {
        let selections = selections.wrappedValue
        for selection in selections {
            let selectionCount = checkboxes.count(where: { $0.tag == selection })
            if selectionCount == 0 {
                OL.error("It seems the selection '\(selection)' is not available inside the checkboxes. Be sure the value is available in only one tag.")
            } else if selectionCount > 1 {
                OL.error("It seems the selection '\(selection)' is available more than one time. Be sure the value is available in only one tag.")
            }
        }
    }

    /// - Parameter tag: The value to test
    /// - Returns Bool: *true* if *tag* in *selections*, *false* otherwise
    private func isSelected(tag: Tag) -> Bool {
        selections.wrappedValue.contains(where: { $0 == tag })
    }

    // MARK: - A11Y

    /// Forges the label to vocalize with *Voice Over* for the root element
    private var a11yLabel: String {
        if case let .verticalRooted(label, _) = placement {
            label + (isError ? ", " + "core_common_onError_a11y".localized() : "")
        } else {
            ""
        }
    }

    /// Forges the value to vocalize with *Voice Over* for the root element
    private var a11yValue: String {
        if case .verticalRooted = placement {
            ", " + ("core_checkboxPicker_description_a11y" <- selections.wrappedValue.count)
        } else {
            ""
        }
    }

    /// Forges a string to vocalize with *Voice Over* explaining the hint for the user about the component (for the root element)
    private var a11yHint: String {
        if isReadOnly || !isEnabled {
            ""
        } else {
            switch coordinator.selectionRootState {
            case .selected:
                "core_checkboxPicker_selected_hint_a11y"
            case .unselected:
                "core_checkboxPicker_unselected_hint_a11y"
            case .indeterminate:
                "core_checkboxPicker_indeterminate_hint_a11y"
            }
        }
    }
}
