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

import OUDSComponents
import SwiftUI

// MARK: - Checkbox Picker Configuration Model

/// The model shared between `CheckboxPickerConfiguration` view and `CheckboxPickerPage` view.
final class CheckboxPickerConfigurationModel: ComponentConfiguration {

    // MARK: - Properties

    @Published var pickerPlacement: OUDSCheckboxPickerPlacement {
        didSet { updateCode() }
    }

    @Published var hasDivider: Bool {
        didSet { updateCode() }
    }

    @Published var isReadOnly: Bool {
        didSet { updateCode() }
    }

    @Published var isError: Bool {
        didSet { updateCode() }
    }

    @Published var isReversed: Bool {
        didSet { updateCode() }
    }

    @Published var isEnabled: Bool {
        didSet { updateCode() }
    }

    // MARK: - Initializer

    override init() {
        pickerPlacement = .verticalRooted("Your order")
        hasDivider = false
        isReadOnly = false
        isError = false
        isReversed = false
        isEnabled = true
    }

    deinit { }

    // MARK: - Component Configuration

    // swiftlint:disable line_length
    override func updateCode() {
        code =
          """
        OUDSCheckboxPicker(selections: $selections, checkboxes: someCheckboxData, placement: \(pickerPlacementPattern)\(hasDividerPattern)\(isReadOnlyPattern)\(isErrorPattern)\(isReversedPattern))\(isEnabledPattern)
        """
    }
    // swiftlint:enable line_length

    private var pickerPlacementPattern: String {
        switch pickerPlacement {
        case .vertical:
            return ".vertical"
        case .horizontal(let showsIndicator) where showsIndicator == true:
            return ".horizontal(true)"
        case .horizontal(let showsIndicator) where showsIndicator == false:
            return ".horizontal(false)"
        case .verticalRooted(let label):
            return ".verticalRooted(" + label + ")"
        default:
            return "🥜"
        }
    }

    private var hasDividerPattern: String {
        !hasDivider ? "" : ", hasDivider: true"
    }

    private var isReadOnlyPattern: String {
        !isReadOnly ? "" : ", isReadOnly: true"
    }

    private var isErrorPattern: String {
        !isError ? "" : ", isError: true"
    }

    private var isReversedPattern: String {
        !isReversed ? "" : ", isReversed: true"
    }

    private var isEnabledPattern: String {
        isEnabled ? "" : ".disabled(true)"
    }

    // MARK: - Data populating

    func populate() -> [OUDSCheckboxPickerData<String>] {
        [
            OUDSCheckboxPickerData<String>(tag: "Choice_1",
                                           label: "Virgin Holy Lava",
                                           additionalLabel: "Very spicy",
                                           helper: "No alcohol, only tasty flavors",
                                           icon: Image(systemName: "flame")),

            OUDSCheckboxPickerData<String>(tag: "Choice_2",
                                           label: "IPA beer",
                                           helper: "From Brewdog company",
                                           icon: Image(systemName: "dog.fill")),

            OUDSCheckboxPickerData<String>(tag: "Choice_3",
                                           label: "Mineral water",
                                           icon: Image(systemName: "waterbottle.fill")),
        ]
    }
}

// MARK: - Checkbox Picker Configuration View

struct CheckboxPickerConfiguration: View {

    @ObservedObject var model: CheckboxPickerConfigurationModel

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_common_enabled_label", isOn: $model.isEnabled)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(model.isError || model.isReadOnly)

            Toggle("app_components_common_onError_label", isOn: $model.isError)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.isEnabled || model.isReadOnly)

            Toggle("app_components_common_readOnly_label", isOn: $model.isReadOnly)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .disabled(!model.isEnabled || model.isError)

            Toggle("app_components_common_divider_label", isOn: $model.hasDivider)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            DesignToolboxChoicePicker(title: "app_components_common_orientation_label",
                                      selection: $model.pickerPlacement,
                                      style: .menu) {
                ForEach(OUDSCheckboxPickerPlacement.allCases, id: \.id) { placement in
                    Text(placement.description).tag(placement)
                }
            }
        }
    }
}

// MARK: - Extension of OUDS Checkbox Picker Placement

extension OUDSCheckboxPickerPlacement: @retroactive CaseIterable, @retroactive CustomStringConvertible, @retroactive Equatable, @retroactive Hashable {

    // MARK: Case Iterable

    public static var allCases: [OUDSCheckboxPickerPlacement] {
        [.vertical, .verticalRooted("Your order"), .horizontal(true), .horizontal(false)]
    }

    var id: String {
        description
    }

    // MARK: Custom String Convertible

    // swiftlint:disable empty_enum_arguments
    public var description: String {
        switch self {
        case .horizontal(let showIndicator) where showIndicator == true:
            return "Horizontal with indicator"
        case .horizontal(let showIndicator) where showIndicator == false:
            return "Horizontal without indicator"
        case .vertical:
            return "Vertical without root iterm"
        case .verticalRooted(_):
            return "Vertical with custom root item"
        default:
            return "🥜"
        }
    }
    // swiftlint:enable empty_enum_arguments

    // MARK: Equatable

    public static func == (lhs: OUDSCheckboxPickerPlacement, rhs: OUDSCheckboxPickerPlacement) -> Bool {
        lhs.id == rhs.id
    }

    // MARK: - Hashable

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
