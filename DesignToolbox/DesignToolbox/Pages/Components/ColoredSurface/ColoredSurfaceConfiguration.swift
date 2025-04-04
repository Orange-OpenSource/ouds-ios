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

    @Published var selectedColor: OUDSBackgroundSurfaceColor
    // MARK: Initializer

    override init() {
        selectedColor = .brandPrimary
    }

    deinit { }

    // MARK: Component Configuration

    override func updateCode() {
        code = ""
    }
}

// MARK: - ColoredSurface Configuration View

struct ColoredSurfaceConfiguration: View {

    @StateObject var model: ColoredSurfaceConfigurationModel
    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
            Picker("app_components_coloredBackground_color_label".localized(), selection: $model.selectedColor) {
                ForEach(OUDSBackgroundSurfaceColor.allCases, id: \.id) { color in
                    Label {
                        Text(color.description).tag(color.id)
                    } icon: {
                        OUDSColoredSurface(color: color) {
                            Rectangle()
                        }
                        .frame(width: 44, height: 44, alignment: .center)
                    }
                }
            }
            .pickerStyle(.segmented)
        }
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
