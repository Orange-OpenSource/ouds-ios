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
        size = .`default`
    }

    deinit { }

    // MARK: Component Configuration

    private var coloredSurfaceCodeModifier: String {
        onColoredSurface ? ".oudsColoredSurface(theme.colorModes.modeOnBrandPrimary)" : ""
    }

    private var disableCode: String {
        ".disabled(\(enabled ? "false" : "true"))"
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
        case .indicatorNext:
            code =
            """
          OUDSLink(text: \"Link\", indicator: .next, size: \(size.description.lowercased())) {}
          \(disableCode)
          \(coloredSurfaceCodeModifier)
          """
        case .indicatorBack:
            code =
            """
          OUDSLink(text: \"Link\", indicator: .back, size: \(size.description.lowercased())) {}
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
    case indicatorBack
    case indicatorNext

    var description: String {
        switch self {
        case .textOnly:
            "app_components_common_textOnlyLayout_label"
        case .iconAndText:
            "app_components_common_iconAndTextLayout_label"
        case .indicatorBack:
            "app_components_link_backLayout_label"
        case .indicatorNext:
            "app_components_link_nextLayout_label"
        }
    }

    var id: String { description }
}

// MARK: Link size extension

extension OUDSLink.Size: @retroactive CaseIterable, @retroactive CustomStringConvertible {
    nonisolated(unsafe) public static let allCases: [OUDSLink.Size] = [.`default`, .small]

    public var description: String {
        switch self {
        case .`default`:
            "Default"
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

            DesignToolboxChoicePicker(title: "app_components_link_size_label",
                                      selection: $model.size,
                                      style: .segmented) {
                ForEach(OUDSLink.Size.allCases, id: \.id) { size in
                    Text(LocalizedStringKey(size.description)).tag(size)
                }
            }

            DesignToolboxChoicePicker(title: "app_components_common_layout_label",
                                      selection: $model.layout,
                                      style: .segmented) {
                ForEach(LinkLayout.allCases, id: \.id) { layout in
                    Text(LocalizedStringKey(layout.description)).tag(layout)
                }
            }

            DesignToolboxEditContentDisclosure {
                DesignToolboxTextField(text: $model.text)
            }
        }
    }
}
