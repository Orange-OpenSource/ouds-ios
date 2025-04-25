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
///     // TODO: #587
/// ```
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

    /// Overrides any configuration applied to embeded ``OUDSCheckboxItem`` and displays a divider (except for the last one)
    private let hasDivider: Bool

    /// Overrides any configuration applied to embeded ``OUDSCheckboxItem`` and forces them to read only mode
    private let isReadOnly: Bool

    /// Overrides any configuration applied to embeded ``OUDSCheckboxItem`` and forces them to error mode
    private let isError: Bool

    /// Overrides any configuration applied to embeded ``OUDSCheckboxItem`` and forces them to apply the reversed layout
    private let isReversed: Bool

    /// Overrides any configuration applied to embeded ``OUDSCheckboxItem`` and forces them to apply the outlined layout
    private let isOutlined: Bool

    /// An internal binding for the picker if the `placement` is *verticalRooted*
    private var selectionsRoot: Binding<OUDSCheckboxIndicatorState>

    @Environment(\.theme) private var theme

    // MARK: - Init

    /// Defines the picker view which displays using ``OUDSCheckboxItem`` view the ``OUDSCheckboxPickerData``
    /// - Parameters:
    ///    - selection: The current selected value
    ///    - checkboxes: The raw data to wrap in ``OUDSCheckboxItem`` for display
    ///    - placement: How checkboxes must be placed (default set to *vertical*)
    ///    - isOutlined: If *true*, force all ``OUDSCheckboxItem`` to be outlined (default set to *false*)
    ///    - isReversed: If *true*, force all ``OUDSCheckboxItem`` to have reversed layout (default set to *false*)
    ///    - isError: If *true*, force all ``OUDSCheckboxItem`` to be in error mode (default set to *false*)
    ///    - isReadOnly: If *true*, force all ``OUDSCheckboxItem`` to be in read only mode (default set to *false*)
    ///    - hasDivider: If *true*, force all ``OUDSCheckboxItem`` except the last one to have a divider (default set to *false*)
    public init(selections: Binding<[Tag]>,
                checkboxes: [OUDSCheckboxPickerData<Tag>],
                placement: OUDSCheckboxPickerPlacement = .vertical,
                isOutlined: Bool = false,
                isReversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false) {
        self.selections = selections
        self.checkboxes = checkboxes
        self.placement = placement
        self.isOutlined = isOutlined
        self.isReversed = isReversed
        self.isError = isError
        self.isReadOnly = isReadOnly
        self.hasDivider = hasDivider
        self.selectionsRoot = .constant(.unselected)
        verifySelections()
        updateSelectionsRoot()
    }

    // MARK: - Body

    public var body: some View {
        switch placement {
        case .horizontal(let showsIndicator):
            ScrollView(.horizontal, showsIndicators: showsIndicator) {
                HStack(alignment: .center, spacing: theme.spaces.spaceFixedNone) {
                    content(for: checkboxes)
                }
            }
        case .vertical:
            VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                content(for: checkboxes)
            }
        case .verticalRooted(let label):
            VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                rootItem(labeled: label)
                content(for: checkboxes, shiftedBy: theme.spaces.spaceFixedMedium)
            }
        }
    }

    /// Adds a root checkbox to handle groups of children checkboxes
    /// - Parameter labeled: The text to display in the root view
    private func rootItem(labeled: String) -> some View {
        OUDSCheckboxItemIndeterminate(selection: selectionsRoot, label: labeled)
    }

    /// Creates several ``OUDSCheckboxItem`` `View` objects from ``OUDSCheckboxPickerData`` objects
    /// - Parameters:
    ///    - checkboxes: The data to display in ``OUDSCheckboxItem`
    ///    - offset: Leading padding to add
    /// - Returns: The view
    private func content(for checkboxes: [OUDSCheckboxPickerData<Tag>],
                         shiftedBy offset: SpaceSemanticToken? = nil) -> some View {
        ForEach(checkboxes, id: \.tag) { checkbox in
            if let offset {
                content(for: checkbox,
                        noDivider: (checkboxes[checkboxes.count - 1].tag == checkbox.tag)) // No divider for last item
                .padding(.leading, offset)
            } else {
                content(for: checkbox,
                        noDivider: (checkboxes[checkboxes.count - 1].tag == checkbox.tag)) // No divider for last item
            }
        }
    }

    /// Creates a new ``OUDSCheckboxItem`` `View` from one ``OUDSCheckboxPickerData``
    /// - Parameters:
    ///    - checkbox: The data to display in ``OUDSCheckboxItem`
    ///    - noDivider: If true, do not add divider to the item
    /// - Returns: The view
    private func content(for checkbox: OUDSCheckboxPickerData<Tag>, noDivider: Bool) -> some View {
        OUDSCheckboxItem<Tag>(isOn: isSelected(tag: checkbox.tag) ? .constant(true) : .constant(false),
                              tag: checkbox.tag,
                              label: checkbox.label,
                              helper: checkbox.helper,
                              icon: checkbox.icon,
                              isReversed: isReversed ? true : checkbox.isReversed,
                              isError: isError ? true : checkbox.isError,
                              isReadOnly: isReadOnly ? true : checkbox.isReadOnly,
                              hasDivider: hasDivider && !noDivider ? true : checkbox.hasDivider) {
            if isSelected(tag: checkbox.tag) {
                selections.wrappedValue.removeAll(where: { $0 == checkbox.tag })
            } else {
                selections.wrappedValue.append(checkbox.tag)
            }
            updateSelectionsRoot()
        }
    }

    // MARK: - Helpers

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

    /// Defines the binding for the selections root depending to the state of the checkboxes
    private func updateSelectionsRoot() {
        let selectionsCount = selections.wrappedValue.count
        print("@@@ selectionsCount = \(selectionsCount)")
        if selectionsCount == 0 {
            selectionsRoot.wrappedValue = .unselected
        } else if selectionsCount == checkboxes.count {
            selectionsRoot.wrappedValue = .selected
        } else {
            selectionsRoot.wrappedValue = .indeterminate
        }
    }

    /// - Parameter tag: The value to test
    /// - Returns Bool: *true* if *tag* in *selections*, *false* otherwise
    private func isSelected(tag: Tag) -> Bool {
        selections.wrappedValue.contains(where: { $0 == tag })
    }
}
