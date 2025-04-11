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

    init(orientation: Orientation, selectedColor: OUDSDividerColor = .borderDefault) {
        self.selectedColor = selectedColor
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
        DesignToolboxColorPicker {
            ForEach(OUDSDividerColor.allCases, id: \.id) { dividerColor in
                Button {
                    model.selectedColor = dividerColor
                } label: {
                    ColorEntry(dividerColor: dividerColor)
                }
            }
        } selectedColor: {
            ColorEntry(dividerColor: model.selectedColor)
        }
    }
}

private struct ColorEntry: View {

    let dividerColor: OUDSDividerColor
    @Environment(\.theme) private var theme

    var body: some View {
        DesignToolboxColorEntry(colorName: dividerColor.formattedName) {
            Rectangle().oudsBackground(dividerColor.colorToken(in: theme))
        }
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
            return "Border Default"
        case .borderMuted:
            return "Border Muted"
        case .borderEmphasized:
            return "Border Emphasized"
        case .borderBrandPrimary:
            return "Border Brand Primary"
        case .borderBrandSecondary:
            return "Border Brand Secondary"
        case .borderBrandTertiary:
            return "Border Brand Tertiary"
        case .borderOnBrandPrimary:
            return "Border Brand On Primary"
        case .borderOnBrandSecondary:
            return "Border Brand On Secondary"
        case .borderOnBrandTertiary:
            return "Border Brand On Tertiary"
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
