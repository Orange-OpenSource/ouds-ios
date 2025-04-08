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
import OUDSTokensSemantic
import SwiftUI

// MARK: - Divider Configuration Model

/// The model shared between `DividerPageConfiguration` view and `DividerPageComponent` view.
final class DividerConfigurationModel: ComponentConfiguration {

    // MARK: Published properties

    @Published var selectedColor: OUDSDivider.Color {
        didSet { updateCode() }
    }

    @Published var orientation: OUDSDivider.Orientation {
        didSet { updateCode() }
    }

    // MARK: Initializer

    override init() {
        orientation = .horizontal
        selectedColor = .borderBrandPrimary
    }

    deinit { }

    // MARK: Component Configuration

    override func updateCode() {
        code =
            """
          OUDSDivider(color: \(selectedColor)) {
          }
          """
    }
}

// MARK: - Divider Configuration View

struct DividerConfiguration: View {

    @StateObject var model: DividerConfigurationModel
    @Environment(\.theme) private var theme
    @State private var isExpanded: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            DesignToolboxChoicePicker(title: "app_components_divider_orientation_label", selection: $model.orientation) {
                ForEach(OUDSDivider.Orientation.allCases, id: \.id) { orientation in
                    Text(LocalizedStringKey(orientation.description)).tag(orientation)
                }
            }

            DisclosureGroup(isExpanded: $isExpanded) {
                VStack(alignment: .leading) {
                    ForEach(OUDSDivider.Color.allCases, id: \.id) { color in
                        Button {
                            model.selectedColor = color
                        } label: {
                            ColorEntry(color: colorToken(for: color), colorName: color.formattedName)
                        }
                    }
                }
            } label: {
                VStack(alignment: .leading) {
                    Text("app_components_coloredBackground_color_label")
                        .typeHeadingMedium(theme)
                        .oudsForegroundColor(theme.colors.colorContentDefault)

                    ColorEntry(color: colorToken(for: model.selectedColor),
                               colorName: model.selectedColor.formattedName)

                    if isExpanded {
                        OUDSDivider()
                    }
                }
            }
        }
    }

    private func colorToken(for color: OUDSDivider.Color) -> MultipleColorSemanticTokens {
        switch color {
        case .borderDefault:
            theme.colors.colorBorderDefault
        case .borderMuted:
            theme.colors.colorBorderMuted
        case .borderEmphasized:
            theme.colors.colorBorderEmphasized
        case .borderBrandPrimary:
            theme.colors.colorBorderBrandPrimary
        case .borderBrandSecondary:
            theme.colors.colorBorderBrandPrimary // TODO: Use token
        case .borderBrandTertiary:
            theme.colors.colorBorderBrandPrimary // TODO: Use token
        case .borderOnBrandPrimary:
            theme.colors.colorBorderOnBrandPrimary
        case .borderOnBrandSecondary:
            theme.colors.colorBorderOnBrandPrimary // TODO: Use token
        case .borderOnBrandTertiary:
            theme.colors.colorBorderOnBrandPrimary // TODO: Use token
        case .alwaysBlack:
            theme.colors.colorAlwaysBlack
        case .alwaysWhite:
            theme.colors.colorAlwaysWhite
        case .alwaysOnBlack:
            theme.colors.colorAlwaysOnBlack
        case .alwaysOnWhite:
            theme.colors.colorAlwaysOnWhite
        }
    }
}

private struct ColorEntry: View {

    let color: MultipleColorSemanticTokens
    let colorName: String

    @Environment(\.theme) private var theme

    var body: some View {
        Label {
            Text(colorName)
                .oudsForegroundColor(theme.colors.colorContentDefault)
        } icon: {
            Rectangle()
                .oudsBackground(color)
                .frame(width: 30, height: 30, alignment: .leading)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

extension OUDSDivider.Color: @retroactive CaseIterable, @retroactive CustomStringConvertible {

    nonisolated(unsafe) public static var allCases: [OUDSDivider.Color] = [
        .borderDefault,
        .borderMuted,
        .borderEmphasized,
        .borderBrandPrimary,
        .borderBrandSecondary,
        .borderBrandTertiary,
        .borderOnBrandPrimary,
        .borderOnBrandSecondary,
        .borderOnBrandTertiary,
        .alwaysBlack,
        .alwaysWhite,
        .alwaysOnBlack,
        .alwaysOnWhite,
    ]

    // No l10n, tehchnical names
    var formattedName: String {
        switch self {
        case .borderDefault:
            return "Boder Default"
        case .borderMuted:
            return "Boder Muted"
        case .borderEmphasized:
            return "Boder Emphasized"
        case .borderBrandPrimary:
            return "Boder Brand Primary"
        case .borderBrandSecondary:
            return "Boder Brand Secondary"
        case .borderBrandTertiary:
            return "Boder Brand Tertiary"
        case .borderOnBrandPrimary:
            return "Boder Brand On Primary"
        case .borderOnBrandSecondary:
            return "Boder Brand On Secondary"
        case .borderOnBrandTertiary:
            return "Boder Brand On Tertiary"
        case .alwaysBlack:
            return "Always Black"
        case .alwaysWhite:
            return "Always White"
        case .alwaysOnBlack:
            return "Always On Black"
        case .alwaysOnWhite:
            return "Always On White"
        }
    }

    public var description: String {
        switch self {
        case .borderDefault:
            "borderDefault"
        case .borderMuted:
            "borderMuted"
        case .borderEmphasized:
            "borderEmphasized"
        case .borderBrandPrimary:
            "borderBrandPrimary"
        case .borderBrandSecondary:
            "borderBrandSecondary"
        case .borderBrandTertiary:
            "borderBrandTertiary"
        case .borderOnBrandPrimary:
            "borderOnBrandPrimary"
        case .borderOnBrandSecondary:
            "borderOnBrandSecondary"
        case .borderOnBrandTertiary:
            "borderOnBrandTertiary"
        case .alwaysBlack:
            "alwaysBlack"
        case .alwaysWhite:
            "alwaysWhite"
        case .alwaysOnBlack:
            "alwaysOnBlack"
        case .alwaysOnWhite:
            "alwaysOnwhite"
        }
    }

    var id: String { description }
}

extension OUDSDivider.Orientation: @retroactive CaseIterable, @retroactive CustomStringConvertible {

    nonisolated(unsafe) public static var allCases: [OUDSDivider.Orientation] = [.horizontal, .vertical]

    public var description: String {
        switch self {
        case .horizontal:
            "app_components_divider_hotizontal_label".localized()
        case .vertical:
            "app_components_divider_vertical_label".localized()
        }
    }

    var id: String { description }
}
