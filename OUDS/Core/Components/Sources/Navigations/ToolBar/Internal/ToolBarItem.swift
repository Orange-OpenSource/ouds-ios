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

#if !os(watchOS)
import OUDSFoundations
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

struct ActionBoutons: View {

    // MARK: - Properties

    let type: OUDSToolBarItem.ActionType
    let style: OUDSToolBarItem.ActionStyle
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        switch type {
        case let .label(label, emphasized, accessibilityHint, action):
            Button {
                action?()
            } label: {
                if #available(iOS 26.0, *) {
                    Text(label).modifier(FontLabelModifier(style: .medium))
                } else {
                    Text(label).modifier(FontLabelModifier(style: emphasized ? .medium : .regular))
                }
            }
            .disabled(action == nil)
            .modifier(ToolBarActionItemModifier(style: style))
            .accessibilityHint(Text(accessibilityHint ?? ""))

        case let .icon(asset, _, accessibilityHint, action):
            Button {
                action?()
            } label: {
                asset
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 26, height: 26)
                // NOTE: Cannot define size of 44x44 for button because with Liquid Glass height is constrained and button will be flattened
            }
            .disabled(action == nil)
            .modifier(ToolBarActionItemModifier(style: style))
            .accessibilityHint(Text(accessibilityHint ?? ""))
        }
    }
}

struct NavigationButton: View {

    // MARK: - Properties

    let type: OUDSToolBarItem.NavigationType

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection
    @Environment(\.presentationMode) private var presentationMode

    // MARK: - Body

    var body: some View {
        Group {
            switch type {
            case let .back(label, accessibilityLabel, action):
                if #available(iOS 26, *) {
                    Button {
                        action?()
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        navigationIcon
                            .frame(width: 28, height: 28)
                    }
                    .accessibilityLabel(accessibilityLabel)
                    .frame(width: 44, height: 44, alignment: .center)
                } else {
                    Button {
                        action?()
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack(spacing: 0) {
                            navigationIcon
                                .frame(width: 24, height: 24)

                            if let label {
                                Text(label).modifier(FontLabelModifier(style: .regular))
                            }
                        }
                    }
                    .accessibilityLabel(accessibilityLabel)
                }
            case .close:
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    HStack {
                        navigationIcon
                            .oudsForegroundColor(MultipleColorSemanticToken("#999999"))
                            .frame(width: 24, height: 24)
                    }
                    .frame(width: 34, height: 34, alignment: .center)
                    .oudsBackground(MultipleColorSemanticToken("78788029"))
                    .clipShape(Circle())
                }
                .accessibilityLabel("core_common_close_a11y".localized())
            }
        }
        .buttonStyle(ToolBarTopItemNavigationStyle(type: type))
    }

    private var navigationIcon: some View {
        Image(decorative: type.iconName, bundle: theme.resourcesBundle)
            .renderingMode(.template)
            .resizable()
            .toFlip(flipIcon)
    }

    private var flipIcon: Bool {
        switch type {
        case .back:
            layoutDirection == .rightToLeft
        case .close:
            false
        }
    }
}
#endif
