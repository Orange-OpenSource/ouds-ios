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

    @Published var selectedColor: NamedColorMode {
        didSet { updateCode() }
    }

    // MARK: Initializer

    override init() {
        selectedColor = NamedColorMode.modeOnBrandPrimary
    }

    deinit { }

    // MARK: Component Configuration

    override func updateCode() {
        code =
        """
       OUDSColoredSurface(color: theme.colorModes.\(selectedColor.description)) {
          Text("\(selectedColor.formattedName)")
          .oudsForegroundColor(theme.colors.colorContentDefault)

          OUDSButton(text: "\("app_components_button_label".localized())") {}

          OUDSLink(text: "\("app_components_link_label".localized())", indicator: .next) {}
       }
       """
    }
}

// MARK: - Colored Surface Configuration View

struct ColoredSurfaceConfiguration: View {

    @StateObject var model: ColoredSurfaceConfigurationModel
    @State private var isExpanded: Bool = false
    @Environment(\.theme) private var theme

    var body: some View {
        DesignToolboxColorPicker {
            ForEach(NamedColorMode.allCases, id: \.id) { color in
                Button {
                    model.selectedColor = color
                } label: {
                    ColorEntry(color: color)
                }
            }
        } selectedColor: {
            ColorEntry(color: model.selectedColor)
        }
    }
}

private struct ColorEntry: View {

    @Environment(\.theme) private var theme
    let color: NamedColorMode

    var body: some View {
        DesignToolboxColorEntry(colorName: color.formattedName) {
            OUDSColoredSurface(color: color.toSurfaceColor(from: theme)) {
                Rectangle()
                    .fill(Color.clear)
            }
        }
    }
}
