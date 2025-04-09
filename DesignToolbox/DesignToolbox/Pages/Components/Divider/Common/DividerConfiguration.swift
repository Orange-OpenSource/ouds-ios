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

    @Published var selectedColor: OUDSDividerColor {
        didSet { updateCode() }
    }

    enum Orientation {
        case horizontal
        case vertical
    }

    let orientation: Orientation

    // MARK: Initializer

    init(orientation: Orientation) {
        selectedColor = .borderDefault
        self.orientation = orientation
    }

    deinit { }

    // MARK: Component Configuration

    override func updateCode() {
        code =
            """
          \(dividerPetern)(color: \(selectedColor)) {
          }
          """
    }

    private var dividerPetern: String {
        orientation == .horizontal ? "OUDSHorizontalDivider" : "OUDSVerticalDivider"
    }
}

// MARK: - Divider Configuration View

struct DividerConfiguration: View {

    @StateObject var model: DividerConfigurationModel
    @Environment(\.theme) private var theme
    @State private var isExpanded: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            DisclosureGroup(isExpanded: $isExpanded) {
                VStack(alignment: .leading) {
                    ForEach(OUDSDividerColor.allCases, id: \.id) { color in
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
                        OUDSHorizontalDivider()
                    }
                }
            }
        }
    }

    private func colorToken(for color: OUDSDividerColor) -> MultipleColorSemanticTokens {
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

extension OUDSDividerColor: @retroactive CaseIterable, @retroactive CustomStringConvertible {

    nonisolated(unsafe) public static var allCases: [OUDSDividerColor] = [
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
