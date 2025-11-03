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

/// A picker allowing to expose several *filter chips* and proposing two kinds of selection:
/// - **single**: used to select only one option within the others
/// - **multiple**: used to select several options within the others
///
/// Each chip contains a "tag", i.e. a supposed to be unique value.
/// The picker will expose choosen values through this "tag".
/// It has also some configuration elements which will override the one applied to nested ``OUDSFilterChip``.
///
/// ## Accessibility considerations
///
/// *Voice Over* will use several elements to describe the component.
/// The picker itself does no have any defined accessiiblity value, label or identifier ; it remains in the users hands to define which one will be used.
/// However if defined in the ``OUDSChipPickerData`` the items inside the picker will have such accessibility identifiers.
///
/// ## Code samples
///
/// ```swift
///     // Define the elements to display in filter chip using OUDSChipPickerData.
///     enum Drink: String, CaseIterable {
///         case virginHolyLava, ipaBeer, mineralWater
///     }
///
///     var someDataToPopulate: [OUDSChipPickerData<Drink>] {
///         [
///             OUDSChipPickerData(tag: Drink.virginHolyLava,
///                                layout: .textAndIcon("Virgin Holy Lava", icon: Image(systemName: "flame")),
///
///             OUDSChipPickerData(tag: Dring.ipaBeer,
///                                layout: .textAndIcon("IPA Beer", icon: Image(systemName: "dog.fill")),
///
///             OUDSChipPickerData(tag: Drink.mineralWater,
///                                layout: .textAndIcon("Mineral water", icon: Image(systemName: "waterbottle.fill")),
///         ]
///     }
///
///     /// Single selection case
///
///     // Prepare the selection, with a value previously selected
///     // Use the data and the binding for the picker.
///     @State var selection: Drink = .mineralWater
///
///     // Here the picker with title, selection and data
///     OUDSChipPicker(title: "Select a drink", selection: $selection, chips: someDataToPopulate)
///
///     /// Multiple selection case
///
///     // Prepare the selection, with a value previously selected
///     // Use the data and the binding for the picker.
///     @State var selections: [Drink] = [.mineralWater]
///
///     // Here the picker with title, selection and data
///     OUDSChipPicker(title: "Select a drink", selections: $selections, chips: someDataToPopulate)
/// ```
///
/// ## Design documentation
///
/// There is no online specification as this component is not an official OUDSThemesContract one.
///
/// ## Theme rendering
///
/// ### Orange
///
/// ![A chip picker component in light and dark mode with Orange theme](component_chipPicker_Orange)
///
/// ### Orange Business Tools
///
/// ![A chip picker component in light and dark mode with Orange Business Tools theme](component_chipPicker_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A chip picker component in light and dark mode with Sosh theme](component_chipPicker_Sosh)
///
/// ### Wireframe
///
/// ![A chip picker component in light and dark mode with Wireframe theme](component_chipPicker_Wireframe)
///
/// - Since: 0.17.0
public struct OUDSChipPicker<Tag>: View where Tag: Hashable {

    /// The title of the picker
    let title: String?

    /// The type of selection
    var selectionType: SelectionType

    /// The list of data to wrap in ``OUDSFilterChip`` inside this picker
    private let chips: [OUDSChipPickerData<Tag>]

    /// The custom spacing to apply between items by user
    private let customItemsSpacing: SpaceSemanticToken?

    @Environment(\.theme) private var theme

    /// The type of selection
    enum SelectionType {
        /// Single selection with tag of the selected chip, but selection can be empty
        case singleOrNone(Binding<Tag?>)

        /// Single selection with tag of the selected chip
        case single(Binding<Tag>)

        /// Multiple selection with tags of the selected chips
        case multiple(Binding<[Tag]>)
    }

    // MARK: - Init

    // swiftlint:disable function_default_parameter_at_end
    /// Defines the single selection picker view which displays using ``OUDSFilterChip`` view the ``OUDSChipPickerData``.
    /// The user will be able to choose zero or one option in this picker.
    ///
    /// - Parameters:
    ///    - title: The title of the picker, can be nil
    ///    - selection: The current selected value
    ///    - chips: The raw data to wrap in ``OUDSFilterChip`` for display
    ///    - itemsSpacing: The custom spacing to apply between utems, default set to *nl*. If *nil* token *theme.spaces.fixedNone* will be used.
    public init(title: String? = nil, selection: Binding<Tag?>, chips: [OUDSChipPickerData<Tag>], itemsSpacing: SpaceSemanticToken? = nil) {
        if let title, title.isEmpty {
            OL.warning("The title of the OUDSChipPicker is empty, prefer nil instead")
        }
        self.title = title?.localized()
        self.chips = chips
        customItemsSpacing = itemsSpacing
        selectionType = .singleOrNone(selection)
    }

    /// Defines the single selection picker view which displays using ``OUDSFilterChip`` view the ``OUDSChipPickerData``
    /// The user will be able to choose only one option in this picker.
    ///
    /// - Parameters:
    ///    - title: The title of the picker, can be nil
    ///    - selection: The current selected value
    ///    - chips: The raw data to wrap in ``OUDSFilterChip`` for display
    ///    - itemsSpacing: The custom spacing to apply between utems, default set to *nl*. If *nil* token *theme.spaces.fixedNone* will be used.
    public init(title: String? = nil, selection: Binding<Tag>, chips: [OUDSChipPickerData<Tag>], itemsSpacing: SpaceSemanticToken? = nil) {
        if let title, title.isEmpty {
            OL.warning("The title of the OUDSChipPicker is empty, prefer nil instead")
        }
        self.title = title?.localized()
        self.chips = chips
        customItemsSpacing = itemsSpacing
        selectionType = .single(selection)
    }

    /// Defines the multiple selection picker view which displays using ``OUDSFilterChip`` view the ``OUDSChipPickerData``.
    /// The user will be able to choose zero or one or seevral options in this picker.
    ///
    /// - Parameters:
    ///    - title: The title of the picker, can be nil
    ///    - selections: Current selected values
    ///    - chips: The raw data to wrap in ``OUDSFilterChip`` for display
    ///    - itemsSpacing: The custom spacing to apply between utems, default set to *nl*. If *nil* token *theme.spaces.fixedNone* will be used.
    public init(title: String? = nil, selections: Binding<[Tag]>, chips: [OUDSChipPickerData<Tag>], itemsSpacing: SpaceSemanticToken? = nil) {
        if let title, title.isEmpty {
            OL.warning("The title of the OUDSChipPicker is empty, prefer nil instead")
        }
        self.title = title?.localized()
        self.chips = chips
        customItemsSpacing = itemsSpacing
        selectionType = .multiple(selections)
    }

    // swiftlint:enable function_default_parameter_at_end

    // MARK: - Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedSmall) {
            if let title, !title.isEmpty {
                Text(title)
                    .bodyStrongLarge(theme)
                    .accessibilityAddTraits(.isHeader)
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(chips, id: \.tag) { chipData in
                        filterChip(from: chipData) {
                            toggle(tag: chipData.tag)
                        }
                    }
                }
            }
        }
        .padding(itemsSpacing)
    }

    // MARK: - Helpers

    /// If user does not define a custom spacing, use a default one
    private var itemsSpacing: SpaceSemanticToken {
        customItemsSpacing ?? theme.spaces.fixedSmall
    }

    @ViewBuilder
    private func filterChip(from data: OUDSChipPickerData<Tag>, action: @escaping () -> Void) -> some View {
        if let a11yidentifier = data.accessibilityIdentifier {
            _filterChip(from: data, action: action).accessibilityIdentifier(a11yidentifier)
        } else {
            _filterChip(from: data, action: action)
        }
    }

    @ViewBuilder
    private func _filterChip(from data: OUDSChipPickerData<Tag>, action: @escaping () -> Void) -> some View {
        let selected = selected(tag: data.tag)
        switch data.layout {
        case let .text(text):
            OUDSFilterChip(text: text, selected: selected, action: action)
        case let .icon(icon, accessibilityLabel):
            OUDSFilterChip(icon: icon, accessibilityLabel: accessibilityLabel, selected: selected, action: action)
        case let .textAndIcon(text, icon):
            OUDSFilterChip(icon: icon, text: text, selected: selected, action: action)
        }
    }

    private func selected(tag: Tag) -> Bool {
        switch selectionType {
        case let .singleOrNone(binding):
            binding.wrappedValue != nil && binding.wrappedValue == tag
        case let .single(binding):
            binding.wrappedValue == tag
        case let .multiple(binding):
            binding.wrappedValue.contains { $0 == tag }
        }
    }

    private func toggle(tag: Tag) {
        switch selectionType {
        case let .singleOrNone(binding):
            if binding.wrappedValue == tag { // If selected the already selected value, unselect
                binding.wrappedValue = nil
            } else {
                binding.wrappedValue = tag
            }
        case let .single(binding):
            binding.wrappedValue = tag
        case let .multiple(binding):
            let index = binding.wrappedValue.firstIndex(of: tag)
            if let index {
                binding.wrappedValue.remove(at: index)
            } else {
                binding.wrappedValue.append(tag)
            }
        }
    }
}
