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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

/// The content for the ``ControlItem`` component according to the interaction state ``OUDSButtonInteractionState``.
///
/// This state is used by:
/// - the indicator according to ``ControlItem.IndicatorType`` to apply right tokens
/// - the label described by ``ControlItemLabel.LayoutData`` to apply right tokens on texts
/// - the icon described by ``ControlItemLabel.LayoutData`` to apply right tokens on icon
/// - the background modifier
/// - the outlined modifier
struct ControlItemContent: View {

    // MARK: Stored properties

    let interactionState: OUDSButtonInteractionState
    let indicatorType: ControlItem.IndicatorType
    let layoutData: ControlItemLabel.LayoutData

    @State var verticalAlignment: VerticalAlignment = .top
    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            HStack(alignment: verticalAlignment, spacing: theme.listItem.spaceColumnGap) {
                switch layoutData.orientation {
                case .default:
                    indicatorContainer()
                    labelContainer()
                    iconContainer()
                case .reversed:
                    iconContainer()
                    labelContainer()
                    indicatorContainer()
                }
            }
            .padding(.vertical, theme.listItem.spacePaddingBlockDefault)
            .modifier(ControlItemBordersModifier(interactionState: interactionState, layoutData: layoutData, isOn: isOn))
            .modifier(ControlItemContentMarginModifier(isOutlined: layoutData.isOutlined, hasDivider: layoutData.hasDivider))
            .modifier(ControlItemBackgroundModifier(interactionState: interactionState, isOutlined: layoutData.isOutlined, hasDivider: layoutData.hasDivider))
            .modifier(OutlinedExtraMarginModifier(isOutlined: layoutData.isOutlined))

            ControlItemErrorContainer(layoutData: layoutData)
        }
        .frame(minWidth: theme.listItem.sizeMinWidth, maxWidth: maxWidth, minHeight: theme.listItem.sizeMinHeightDefault, alignment: .center)
        .contentShape(Rectangle()) // Needed otherwise because of button style any empty space without views won't trigger tap
        .clipShape(RoundedRectangle(cornerRadius: theme.listItem.borderRadiusDefault))
    }

    // MARK: Containers

    private func indicatorContainer() -> some View {
        ControlItemIndicatorContainer(interactionState: interactionState, indicatorType: indicatorType, layoutData: layoutData)
    }

    private func labelContainer() -> some View {
        ControlItemLabel(interactionState: interactionState, layoutData: layoutData)
            .readSize { size in
                verticalAlignment = size.height > theme.listItem.sizeMaxHeightAssetsContainer ? .top : .center
            }
    }

    private func iconContainer() -> some View {
        ControlItemIconContainer(interactionState: interactionState, layoutData: layoutData)
    }

    // MARK: Computed properties

    private var isOn: Bool {
        switch indicatorType {
        case let .switch(isOn), let .radioButton(isOn):
            isOn.wrappedValue
        case let .checkBox(selectionState):
            selectionState.wrappedValue == .selected
        }
    }

    private var maxWidth: CGFloat {
        layoutData.constrainedMaxWidth ? theme.listItem.sizeMaxWidth : .infinity
    }
}

// MARK: - Extra outlined Margin

struct OutlinedExtraMarginModifier: ViewModifier {

    // MARK: Properties

    @Environment(\.oudsEdgeToEdge) private var edgeToEdge
    let isOutlined: Bool

    // MARK: Body

    func body(content: Content) -> some View {
        // Add grid margin if edge to edge and oulined
        // because we need to avoid to display the outlined
        // border into the margin
        if edgeToEdge && isOutlined {
            content.gridMargin(.horizontal)
        } else {
            content
        }
    }
}

// - MARK: Content Margin before add background

struct ControlItemContentMarginModifier: ViewModifier {

    // MARK: Properties

    let isOutlined: Bool
    let hasDivider: Bool
    @Environment(\.theme) private var theme
    @Environment(\.oudsEdgeToEdge) private var edgeToEdge

    // MARK: Body

    func body(content: Content) -> some View {
        // Before add background, apply margins:
        // - if edget to edge add grid margin only if not oulined because we need to avoid to display the
        //   outlined border into the margin
        // - if not edge to edge and if there is no divider add item padding.
        // No need to add padding in other cases because already added by ControlItemBordersModifier before.
        if edgeToEdge {
            if !isOutlined {
                content.gridMargin(.horizontal)
            } else {
                content
            }
        } else {
            if !hasDivider && !isOutlined {
                content.padding(.horizontal, theme.listItem.spacePaddingInline)
            } else {
                content
            }
        }
    }
}
