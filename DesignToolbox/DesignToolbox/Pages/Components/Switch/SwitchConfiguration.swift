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

// MARK: - Switch Configuration Model

/// The model shared between `SwitchPageConfiguration` view and `SwitchPageComponent` view.
final class SwitchConfigurationModel: ComponentConfiguration {

    // MARK: Published properties

    @Published var enabled: Bool = true {
        didSet { updateCode() }
    }

    @Published var layout: SwitchLayout {
        didSet { updateCode() }
    }

    // MARK: Initializer

    override init() {
        self.enabled = true
        self.layout = .textOnly
    }

    deinit { }

    // MARK: Component Configuration

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
    }

    override func updateCode() {
        switch layout {
        case .textOnly:
            code =
            """
          OUDSSwitch(isOn: $isOn)
          \(disableCode))
          """
        case .iconOnly:
            code =
            """
          OUDSSwitch(isOn: $isOn)
          \(disableCode))
          """
        case .iconAndText:
            code =
            """
          OUDSSwitch(isOn: $isOn)
          \(disableCode))
          """
        }
    }
}

// MARK: - Switch Layout

enum SwitchLayout: CaseIterable, CustomStringConvertible {
    case textOnly
    case iconAndText
    case iconOnly

    var description: String {
        switch self {
        case .textOnly:
            "app_components_button_textOnlyLayout_label"
        case .iconAndText:
            "app_components_button_iconAndTextLayout_label"
        case .iconOnly:
            "app_components_button_iconOnlyLayout_label"
        }
    }

    var id: String { description }
}

// MARK: - Switch Configuration View

struct SwitchConfiguration: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    @StateObject var model: SwitchConfigurationModel

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))

            VStack(alignment: .leading) {
                Text(LocalizedStringKey("app_components_button_layout_label"))
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                Picker("app_components_button_layout_label", selection: $model.layout) {
                    ForEach(SwitchLayout.allCases, id: \.id) { layout in
                        Text(LocalizedStringKey(layout.description)).tag(layout)
                    }
                }
                .pickerStyle(.segmented)
            }
        }
    }
}
