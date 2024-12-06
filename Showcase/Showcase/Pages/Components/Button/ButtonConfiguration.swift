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

// MARK: Button Configuration Model

// The model shared between `ButtonPageConfiguration` view and `ButtonPageComponent` views.
final class ButtonConfigurationModel: ComponentConfiguration {

    // MARK: Published properties

    @Published var enabled: Bool = true {
        didSet { updateCode() }
    }
    @Published var layout: ButtonLayout {
        didSet { updateCode() }
    }
    @Published var hierarchy: OUDSButtonStyle.Hierarchy {
        didSet { updateCode() }
    }

    // MARK: Initializer

    override init() {
        self.enabled = true
        self.layout = .textOnly
        self.hierarchy = .default
    }

    deinit { }

    // MARK: ComponentConfiguration

    override func updateCode() {

        switch layout {
        case .textOnly:
            code =
            """
          OOUDSButton(hierarchy: .\(hierarchy.description.lowercased()), text: \"Button\")) {}
          .disable(\(enabled ? "false" : "true"))
          """
        case .iconOnly:
            code =
            """
          OOUDSButton(hierarchy: .\(hierarchy.description.lowercased()), icon: Image(\"ic_heart\")) {}
          .disable(\(enabled ? "false" : "true"))
          """
        case .iconAndText:
            code =
            """
          OOUDSButton(hierarchy: .\(hierarchy.description.lowercased()), icon: Image(\"ic_heart\", text: \"Button\")) {}
          .disable(\(enabled ? "false" : "true"))
          """
        }
    }
}

// MARK: Button Layout

enum ButtonLayout: CaseIterable, CustomStringConvertible {
    case textOnly
    case iconOnly
    case iconAndText

    var description: String {
        switch self {
        case .iconOnly:
            "app_components_button_iconOnlyLayout_label"
        case .textOnly:
            "app_components_button_textOnlyLayout_label"
        case .iconAndText:
            "app_components_button_iconAndTextLayout_label"
        }
    }

    var id: String { description }
}

// MARK: Button Hierarchy extension

extension OUDSButtonStyle.Hierarchy: @retroactive @preconcurrency CaseIterable, @retroactive CustomStringConvertible {
    @MainActor public static let allCases: [OUDSButtonStyle.Hierarchy] = [.default, .strong, .minimal, .negative]

    // Note: Not localized because it is a technical name
    public var description: String {
        switch self {
        case .default:
            "Default"
        case .strong:
            "Strong"
        case .minimal:
            "Minimal"
        case .negative:
            "Negative"
        }
    }

    var id: String { description }
}

// MARK: Button Confoguration View

struct ButtonConfiguration: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    @StateObject var model: ButtonConfigurationModel

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))

            VStack(alignment: .leading) {
                Text(LocalizedStringKey("app_components_button_layout_label"))
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))
                Picker("app_components_button_layout_label", selection: $model.layout) {
                    ForEach(ButtonLayout.allCases, id: \.id) { layout in
                        Text(LocalizedStringKey(layout.description)).tag(layout)
                    }
                }
                .pickerStyle(.segmented)
            }

            VStack(alignment: .leading) {
                Text(LocalizedStringKey("app_components_button_hierarchy_label"))
                    .typeHeadingMedium(theme)
                    .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))
                Picker("app_components_button_hierarchy_label", selection: $model.hierarchy) {
                    ForEach(OUDSButtonStyle.Hierarchy.allCases, id: \.id) { hierarchy in
                        Text(LocalizedStringKey(hierarchy.description)).tag(hierarchy)
                    }
                }
                .pickerStyle(.segmented)
            }
        }
    }
}
