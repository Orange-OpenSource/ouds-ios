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

import OUDS
import OUDSComponents
import SwiftUI

// MARK: - Colored Surface Configuration Model

/// The model shared between `ColoredSurfacePageConfiguration` view and `ColoredSurfacePageComponent` view.
final class ColoredSurfaceConfigurationModel: ComponentConfiguration {

    // MARK: Published properties

    @Published var selectedColor: OUDSBackgroundSurfaceColor {
        didSet { updateCode() }
    }

    // MARK: Initializer

    override init() {
        selectedColor = .brandPrimary
    }

    deinit { }

    // MARK: Component Configuration

    override func updateCode() {
        code =
        """
       OUDSColoredSurface(color: \(selectedColor.description) {
          Text("\(selectedColor.formattedName)")
          .oudsForegroundColor(theme.colors.colorContentDefault)

          OUDSButton(text: "\("app_components_button_label".localized())") {}

          OUDSLink(text: "\("app_components_link_label".localized())", arrow: .next) {}
       }
       """
    }
}

// MARK: - ColoredSurface Configuration View

struct ColoredSurfaceConfiguration: View {

    @StateObject var model: ColoredSurfaceConfigurationModel
    @Environment(\.theme) private var theme
    @State private var isExpanded: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            DisclosureGroup(isExpanded: $isExpanded) {
                VStack(alignment: .leading) {
                    ForEach(OUDSBackgroundSurfaceColor.allCases, id: \.id) { color in
                        Button {
                            model.selectedColor = color
                        } label: {
                            ColorEntry(color: color)
                        }
                    }
                }
            } label: {
                VStack(alignment: .leading) {
                    Text("app_components_coloredBackground_color_label")
                        .typeHeadingMedium(theme)
                        .oudsForegroundColor(theme.colors.colorContentDefault)

                    ColorEntry(color: model.selectedColor)
                    if isExpanded {
                        Divider()
                    }
                }
            }
        }
    }
}

private struct ColorEntry: View {

    @Environment(\.theme) private var theme
    let color: OUDSBackgroundSurfaceColor

    var body: some View {
        Label {
            Text(color.formattedName)
                .oudsForegroundColor(theme.colors.colorContentDefault)
        } icon: {
            OUDSColoredSurface(color: color) {
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 30, height: 30, alignment: .leading)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

extension OUDSBackgroundSurfaceColor: @retroactive CaseIterable, @retroactive CustomStringConvertible {

    nonisolated(unsafe) public static var allCases: [OUDSBackgroundSurfaceColor] = [
        .brandPrimary,
        .statusAccentEmphasized,
        .statusAccentMuted,
        .statusInfoEmphasized,
        .statusInfoMuted,
        .statusNegativeEmphasized,
        .statusNegativeMuted,
        .statusNeutralEmphasized,
        .statusNeutralMuted,
        .statusPositiveEmphasized,
        .statusPositiveMuted,
        .statusWarningEmphasized,
        .statusWarningMuted,
    ]

    // No l10n, tehchnical names
    var formattedName: String {
        switch self {
        case .brandPrimary:
            return "Brand Primary"
        case .statusAccentEmphasized:
            return "Status Accent Emphasized"
        case .statusAccentMuted:
            return "Status Accent Muted"
        case .statusInfoEmphasized:
            return "Status Info Emphasized"
        case .statusInfoMuted:
            return "Status Info Muted"
        case .statusNegativeEmphasized:
            return "Status Negative Emphasized"
        case .statusNegativeMuted:
            return "Status Negative Muted"
        case .statusNeutralEmphasized:
            return "Status Neutral Emphasized"
        case .statusNeutralMuted:
            return "Status Neutral Muted"
        case .statusPositiveEmphasized:
            return "Status Positive Emphasized"
        case .statusPositiveMuted:
            return "Status Positive Muted"
        case .statusWarningEmphasized:
            return "Status Warning Emphasized"
        case .statusWarningMuted:
            return "Status Warning Muted"
        }
    }

    public var description: String {
        switch self {
        case .brandPrimary:
            return "brandPrimary"
        case .statusAccentEmphasized:
            return "statusAccentEmphasized"
        case .statusAccentMuted:
            return "statusAccentMuted"
        case .statusInfoEmphasized:
            return "statusInfoEmphasized"
        case .statusInfoMuted:
            return "statusInfoMuted"
        case .statusNegativeEmphasized:
            return "statusNegativeEmphasized"
        case .statusNegativeMuted:
            return "statusNegativeMuted"
        case .statusNeutralEmphasized:
            return "statusNeutralEmphasized"
        case .statusNeutralMuted:
            return "statusNeutralMuted"
        case .statusPositiveEmphasized:
            return "statusPositiveEmphasized"
        case .statusPositiveMuted:
            return "statusPositiveMuted"
        case .statusWarningEmphasized:
            return "statusWarningEmphasized"
        case .statusWarningMuted:
            return "statusWarningMuted"
        }
    }

    var id: String { description }
}
