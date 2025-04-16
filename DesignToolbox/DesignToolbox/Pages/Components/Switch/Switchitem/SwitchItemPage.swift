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

// MARK: - Switch Item Page

struct SwitchItemPage: View {

    @StateObject private var configuration: SwitchItemConfigurationModel

    init() {
        _configuration = StateObject(wrappedValue: SwitchItemConfigurationModel())
    }

    var body: some View {
        ComponentConfigurationView(
            configuration: configuration,
            componentView: componentView,
            configurationView: configurationView
        )
    }

    @ViewBuilder
    private func componentView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? SwitchItemConfigurationModel {
            SwitchItemIllustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? SwitchItemConfigurationModel {
            SwitchItemConfiguration(model: model)
        }
    }
}

// MARK: - Switch Item Illustration

private struct SwitchItemIllustration: View {

    let model: SwitchItemConfigurationModel
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .center) {
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            SwitchItemDemo(model: model)
            SwitchItemDemo(model: model)
                .colorScheme(colorScheme == .dark ? .light : .dark)
        }
    }
}

// MARK: - Switch Item Demo

private struct SwitchItemDemo: View {

    @ObservedObject var model: SwitchItemConfigurationModel
    @Environment(\.theme) private var theme

    var body: some View {
        OUDSSwitchItem(isOn: $model.selection,
                       label: model.labelTextContent,
                       helper: helperTextContent,
                       icon: icon,
                       flipIcon: model.flipIcon,
                       isReversed: model.layoutOrientation == .reversed,
                       isError: model.isError,
                       isReadOnly: model.isReadOnly,
                       hasDivider: model.divider)
        .disabled(!model.enabled)
        .padding(.all, theme.spaces.spaceFixedMedium)
        .designToolboxBackground(onColoredSurface: false)
    }

    private var helperTextContent: String? {
        model.helperText ? model.helperTextContent : nil
    }

    // Need here that system name, a11y managed in component
    // swiftlint:disable accessibility_label_for_image
    private var icon: Image? {
        model.icon ? Image(systemName: "figure.handball") : nil
    }
    // swiftlint:enable accessibility_label_for_image
}
