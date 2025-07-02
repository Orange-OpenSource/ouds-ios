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

/// A picker allowing to expose several filter chips and choose only one within the others.
/// Each chip contains a "tag", i.e. a supposed to be unique value.
/// The picker will expose the choosen value through this "tag".
/// It has also some configuration elements which will override the one applied to nested ``OUDSFilterChip``
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
///         enum Drink: String, CaseIterable {
///            case virginHolyLava, ipaBeer, mineralWater
///         }

///     var someDataToPopulate: [OUDSChipPickerData<Drink>] {
///         [
///             OUDSChipPickerData(tag: Drink.virginHolyLava,
///                                             layout: .textAndIcon("Virgin Holy Lava", icon: Image(systemName: "flame")),
///
///             OUDSChipPickerData(tag: Dring.ipaBeer,
///                                     layout: .textAndIcon("IPA Beer", icon: Image(systemName: "dog.fill")),
///
///             OUDSChipPickerData(tag: Drink.mineralWater,
///                                     layout: .textAndIcon("Mineral water", icon: Image(systemName: "waterbottle.fill")),
///         ]
///     }
///
///     // Prepare the selection, with a value previously selected
///     // Use the data and the binding for the picker.
///     @State var selection: Drink = .mineralWater
///
///     // Here the picker with title, selection and data
///     OUDSChipPicker(title: Select a drink, selection: $selection, chips: someDataToPopulate)
/// ```
///
/// ## Design documentation
///
/// There is no online specification as this component is not an official OUDS one
///
/// - Since: 0.16.0
public struct OUDSChipPicker<Tag>: View where Tag: Hashable {

    /// The title of the picker
    let title: String

    /// The tags of the selected checkbox
    var selection: Binding<Tag>

    /// The list of data to wrap in ``OUDSFilterChip`` inside this picker
    private let chips: [OUDSChipPickerData<Tag>]
    @Environment(\.theme) private var theme

    // MARK: - Init

    /// Defines the picker view which displays using ``OUDSFilterChip`` view the ``OUDSChipPickerData``
    /// - Parameters:
    ///    - title: The title of the picker
    ///    - selections: The current selected values
    ///    - data: The raw data to wrap in ``OUDSFilterChip`` for display
    public init(title: String, selection: Binding<Tag>, chips: [OUDSChipPickerData<Tag>]) {
        self.title = title.localized()
        self.selection = selection
        self.chips = chips
    }

    // MARK: - Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedShort) {
            Text(title).typeHeadingLarge(theme).padding(.leading, theme.spaces.spaceFixedMedium)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(chips, id: \.tag) { chip in
                        filterChip(from: chip) {
                            selection.wrappedValue = chip.tag
                        }
                    }
                }
                .padding(.horizontal, theme.spaces.spaceFixedMedium)
            }
        }
        .padding(.vertical, theme.spaces.spaceFixedShort)
    }

    // MARK: - Helper

    @ViewBuilder
    private func filterChip(from data: OUDSChipPickerData<Tag>, action: @escaping () -> Void) -> some View {
        // swiftlint:disable pattern_matching_keywords
        let selected = data.tag == selection.wrappedValue
        switch data.layout {
        case .text(let text):
            OUDSFilterChip(text: text, selected: selected, action: action)
        case .icon(let icon, let accessibilityLabel):
            OUDSFilterChip(icon: icon, accessibilityLabel: accessibilityLabel, selected: selected, action: action)
        case .textAndIcon(let text, let icon):
            OUDSFilterChip(icon: icon, text: text, selected: selected, action: action)
        }
        // swiftlint:enable pattern_matching_keywords
    }
}
