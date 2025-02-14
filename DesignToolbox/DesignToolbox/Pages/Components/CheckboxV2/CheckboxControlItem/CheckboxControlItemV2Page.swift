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

// MARK: - Checkbox page

struct CheckboxControlItemV2Page: View {

    @StateObject private var configuration: CheckboxControlItemV2ConfigurationModel

    init() {
        _configuration = StateObject(wrappedValue: CheckboxControlItemV2ConfigurationModel())
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
        if let model = configuration as? CheckboxControlItemV2ConfigurationModel {
            CheckboxControlItemV2Illustration(model: model)
        }
    }

    @ViewBuilder
    private func configurationView(with configuration: ComponentConfiguration) -> some View {
        if let model = configuration as? CheckboxControlItemV2ConfigurationModel {
            CheckboxControlItemV2Configuration(model: model)
        }
    }
}

// MARK: - Checkbox Illustration

struct CheckboxControlItemV2Illustration: View {

    let model: CheckboxControlItemV2ConfigurationModel
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack(alignment: .center) {
            // TODO: Build a modifier to inverse colorscheme or force to a colorscheme
            CheckboxControlItemV2Demo(model: model)
            CheckboxControlItemV2Demo(model: model)
                .colorScheme(colorScheme == .dark ? .light : .dark)
        }
    }
}

// MARK: - Checkbox Demo

private struct CheckboxControlItemV2Demo: View {

    @ObservedObject var model: CheckboxControlItemV2ConfigurationModel
    @Environment(\.theme) private var theme

    var body: some View {
        OUDSCheckboxControlItemV2(state: $model.selectorState,
                                  labelText: model.labelTextContent,
                                  helperText: helperTextContent,
                                  icon: icon,
                                  isInversed: model.layoutOrientation == .inverse,
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

    private var icon: Image? {
        model.icon ? Image(decorative: "ic_heart") : nil
    }
}
