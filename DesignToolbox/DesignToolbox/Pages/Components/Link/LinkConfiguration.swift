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

// MARK: - Link Configuration Model

/// The model shared between `LinkPageConfiguration` view and `LinkPageComponent` view.
final class LinkConfigurationModel: ComponentConfiguration {

    // MARK: Published properties

    @Published var onColoredSurface: Bool = true {
        didSet { updateCode() }
    }

    @Published var enabled: Bool = true {
        didSet { updateCode() }
    }

    @Published var text: String

    @Published var layout: LinkLayout {
        didSet { updateCode() }
    }

    @Published var size: OUDSLink.Size {
        didSet { updateCode() }
    }

    // MARK: Initializer

    override init() {
        onColoredSurface = false
        enabled = true
        text = String(localized: "app_components_link_label")
        layout = .textOnly
        size = .medium
    }

    deinit { }

    // MARK: Component Configuration

    private var coloredSurfaceCodeModifier: String {
        onColoredSurface ? ".oudsColoredSurface(theme.colorModes.modeOnBrandPrimary)" : ""
    }

    private var disableCode: String {
        ".disable(\(enabled ? "false" : "true"))"
    }

    override func updateCode() {
        switch layout {
        case .textOnly:
            code =
            """
          OUDSLink(text: \"Link\", size: \(size.description.lowercased())) {}
          \(disableCode)
          \(coloredSurfaceCodeModifier)
          """
        case .iconAndText:
            code =
            """
          OUDSLink(text: \"Link\", icon: Image(\"ic_heart\"), size: \(size.description.lowercased())) {}
          \(disableCode)
          \(coloredSurfaceCodeModifier)
          """
        case .arrowNext:
            code =
            """
          OUDSLink(text: \"Link\", arrow: .next, size: \(size.description.lowercased())) {}
          \(disableCode)
          \(coloredSurfaceCodeModifier)
          """
        case .arrowBack:
            code =
            """
          OUDSLink(text: \"Link\", arrow: .back, size: \(size.description.lowercased())) {}
          \(disableCode)
          \(coloredSurfaceCodeModifier)
          """
        }
    }
}

// MARK: - Link Layout

enum LinkLayout: CaseIterable, CustomStringConvertible {
    case textOnly
    case iconAndText
    case arrowBack
    case arrowNext

    var description: String {
        switch self {
        case .textOnly:
            "app_components_common_textOnlyLayout_label"
        case .iconAndText:
            "app_components_common_iconAndTextLayout_label"
        case .arrowBack:
            "app_components_link_arrowBack_label"
        case .arrowNext:
            "app_components_link_arrowNext_label"
        }
    }

    var id: String { description }
}

// MARK: Link size extension

extension OUDSLink.Size: @retroactive CaseIterable, @retroactive CustomStringConvertible {
    nonisolated(unsafe) public static let allCases: [OUDSLink.Size] = [.medium, .small]

    public var description: String {
        switch self {
        case .medium:
            "Medium"
        case .small:
            "Small"
        }
    }

    var id: String { description }
}

// MARK: - Link Configuration View

struct LinkConfiguration: View {

    @Environment(\.theme) private var theme

    @StateObject var model: LinkConfigurationModel

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Toggle("app_common_enabled_label", isOn: $model.enabled)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            Toggle("app_components_common_onColoredSurface_label", isOn: $model.onColoredSurface)
                .typeHeadingMedium(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)

            DesignToolboxChoicePicker(title: "app_components_link_size_label", selection: $model.size) {
                ForEach(OUDSLink.Size.allCases, id: \.id) { size in
                    Text(LocalizedStringKey(size.description)).tag(size)
                }
            }

            DesignToolboxChoicePicker(title: "app_components_common_layout_label", selection: $model.layout) {
                ForEach(LinkLayout.allCases, id: \.id) { layout in
                    Text(LocalizedStringKey(layout.description)).tag(layout)
                }
            }

            DesignToolboxTextField(text: $model.text, prompt: "app_components_common_userText_prompt")
        }
    }
}
