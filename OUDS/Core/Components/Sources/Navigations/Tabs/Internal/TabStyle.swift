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
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

/// Resolves each state using the component provider, rather than borrowing another component's colors.
struct TabStyle {
    let theme: OUDSTheme
    let appearance: TabsAppearance
    let selected: Bool
    let interaction: OUDSButtonInteractionState
    let isFocused: Bool

    var contentColor: MultipleColorSemanticToken {
        if appearance == .contained {
            let tokens = theme.containedTabs
            return selected
                ? resolve(
                    enabled: tokens.colorContentSelectedEnabled,
                    hover: tokens.colorContentSelectedHover,
                    pressed: tokens.colorContentSelectedPressed,
                    disabled: tokens.colorContentSelectedDisabled,
                    focus: tokens.colorContentSelectedFocus)
                : resolve(
                    enabled: tokens.colorContentUnselectedEnabled,
                    hover: tokens.colorContentUnselectedHover,
                    pressed: tokens.colorContentUnselectedPressed,
                    disabled: tokens.colorContentUnselectedDisabled,
                    focus: tokens.colorContentUnselectedFocus)
        }
        let tokens = theme.lineTabs
        return selected
            ? resolve(
                enabled: tokens.colorContentSelectedEnabled,
                hover: tokens.colorContentSelectedHover,
                pressed: tokens.colorContentSelectedPressed,
                disabled: theme.colors.actionDisabled,
                focus: tokens.colorContentSelectedFocus)
            : resolve(
                enabled: tokens.colorContentUnselectedEnabled,
                hover: tokens.colorContentUnselectedHover,
                pressed: tokens.colorContentUnselectedPressed,
                disabled: theme.colors.actionDisabled,
                focus: tokens.colorContentUnselectedFocus)
    }

    var backgroundColor: MultipleColorSemanticToken {
        if appearance == .contained {
            let tokens = theme.containedTabs
            return selected
                ? resolve(
                    enabled: tokens.colorBgSelectedEnabled,
                    hover: tokens.colorBgSelectedHover,
                    pressed: tokens.colorBgSelectedPressed,
                    disabled: tokens.colorBgSelectedDisabled,
                    focus: tokens.colorBgSelectedFocus)
                : resolve(
                    enabled: tokens.colorBgUnselectedEnabled,
                    hover: tokens.colorBgUnselectedHover,
                    pressed: tokens.colorBgUnselectedPressed,
                    disabled: tokens.colorBgUnselectedDisabled,
                    focus: tokens.colorBgUnselectedFocus)
        }
        let tokens = theme.lineTabs
        return selected
            ? resolve(
                enabled: tokens.colorBgSelectedEnabled,
                hover: tokens.colorBgSelectedHover,
                pressed: tokens.colorBgSelectedPressed,
                disabled: tokens.colorBgSelectedDisabled,
                focus: tokens.colorBgSelectedFocus)
            : resolve(
                enabled: theme.colors.opacityTransparent,
                hover: tokens.colorBgUnselectedHover,
                pressed: tokens.colorBgUnselectedPressed,
                disabled: theme.colors.opacityTransparent,
                focus: tokens.colorBgUnselectedFocus)
    }

    var borderColor: MultipleColorSemanticToken {
        let tokens = theme.containedTabs
        return selected
            ? resolve(
                enabled: tokens.colorBorderSelectedEnabled,
                hover: tokens.colorBorderSelectedHover,
                pressed: tokens.colorBorderSelectedPressed,
                disabled: tokens.colorBorderSelectedDisabled,
                focus: tokens.colorBorderSelectedFocus)
            : resolve(
                enabled: tokens.colorBorderUnselectedEnabled,
                hover: tokens.colorBorderUnselectedHover,
                pressed: tokens.colorBorderUnselectedPressed,
                disabled: tokens.colorBorderUnselectedDisabled,
                focus: tokens.colorBorderUnselectedFocus)
    }

    var dividerColor: MultipleColorSemanticToken {
        interaction == .disabled ? theme.containedTabs.colorBorderDividerDisabled : theme.containedTabs.colorBorderDividerEnabled
    }

    var indicatorColor: MultipleColorSemanticToken {
        guard selected else { return theme.colors.opacityTransparent }
        if interaction == .disabled { return theme.colors.actionDisabled }
        return theme.colors.actionSelected
    }

    var indicatorOpacity: Double {
        if appearance == .contained {
            return selected ? theme.containedTabs.opacityCurrentIndicatorSelected : theme.containedTabs.opacityCurrentIndicatorUnselected
        }
        return selected ? 1 : theme.lineTabs.opacityCurrentIndicatorUnselected
    }

    var indicatorHeight: CGFloat {
        appearance == .line ? theme.lineTabs.sizeHeightCurrentIndicator : theme.containedTabs.sizeHeightCurrentIndicator
    }

    var indicatorGap: CGFloat {
        appearance == .line ? theme.lineTabs.spaceRowGapCurrentIndicator : theme.containedTabs.spaceRowGapCurrentIndicator
    }

    var blockPadding: CGFloat {
        appearance == .line ? theme.lineTabs.spacePaddingBlockTab : theme.containedTabs.spacePaddingBlockTab
    }

    var topRadius: CGFloat {
        appearance == .line ? theme.lineTabs.borderRadiusTopTab : theme.containedTabs.borderRadiusTopTab
    }

    var bottomRadius: CGFloat {
        appearance == .line ? theme.lineTabs.borderRadiusBottomTab : theme.containedTabs.borderRadiusBottomTab
    }

    var indicatorTopRadius: CGFloat {
        appearance == .line ? theme.lineTabs.borderRadiusTopCurrentIndicator : theme.borders.radiusNone
    }

    var indicatorBottomRadius: CGFloat {
        appearance == .line ? theme.lineTabs.borderRadiusBottomCurrentIndicator : theme.borders.radiusNone
    }

    var topWidth: CGFloat {
        if selected { return theme.containedTabs.borderWidthSelectedTopTab }
        return isInteracting ? theme.containedTabs.borderWidthUnselectedTopTabInteraction : theme.containedTabs.borderWidthUnselectedTopTab
    }

    var bottomWidth: CGFloat {
        if selected { return theme.containedTabs.borderWidthSelectedBottomTab }
        return isInteracting ? theme.containedTabs.borderWidthUnselectedBottomTabInteraction : theme.containedTabs.borderWidthUnselectedBottomTab
    }

    var sideWidth: CGFloat {
        if selected { return theme.containedTabs.borderWidthSelectedStartEndTab }
        return isInteracting ? theme.containedTabs.borderWidthUnselectedStartEndInteraction : theme.containedTabs.borderWidthUnselectedStartEndTab
    }

    private var isInteracting: Bool {
        interaction != .disabled && (isFocused || interaction == .hover || interaction == .pressed)
    }

    private func resolve(
        enabled: MultipleColorSemanticToken,
        hover: MultipleColorSemanticToken,
        pressed: MultipleColorSemanticToken,
        disabled: MultipleColorSemanticToken,
        focus: MultipleColorSemanticToken) -> MultipleColorSemanticToken
    {
        if interaction == .disabled { return disabled }
        if interaction == .pressed { return pressed }
        if isFocused { return focus }
        return interaction == .hover ? hover : enabled
    }
}

/// Different top/bottom radii, also available on iOS 15 (unlike UnevenRoundedRectangle).
struct TabShape: Shape {
    let topRadius: CGFloat
    let bottomRadius: CGFloat

    func path(in rect: CGRect) -> Path {
        let maximum = min(rect.width, rect.height) / 2
        let top = max(0, min(topRadius, maximum))
        let bottom = max(0, min(bottomRadius, maximum))
        var path = Path()
        path.move(to: CGPoint(x: rect.minX + top, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - top, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY + top), control: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - bottom))
        path.addQuadCurve(to: CGPoint(x: rect.maxX - bottom, y: rect.maxY), control: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + bottom, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY - bottom), control: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + top))
        path.addQuadCurve(to: CGPoint(x: rect.minX + top, y: rect.minY), control: CGPoint(x: rect.minX, y: rect.minY))
        path.closeSubpath()
        return path
    }
}

struct TabBorder: View {
    let style: TabStyle
    let hasDivider: Bool
    var body: some View {
        if style.appearance == .contained {
            Rectangle().fill(style.borderColor).frame(height: style.topWidth).frame(maxHeight: .infinity, alignment: .top)
            Rectangle().fill(style.borderColor).frame(height: style.bottomWidth).frame(maxHeight: .infinity, alignment: .bottom)
            Rectangle().fill(style.borderColor).frame(width: style.sideWidth).frame(maxWidth: .infinity, alignment: .leading)
            Rectangle().fill(style.borderColor).frame(width: style.sideWidth).frame(maxWidth: .infinity, alignment: .trailing)
            if hasDivider, style.theme.containedTabs.divider, !style.selected {
                Rectangle().fill(style.dividerColor)
                    .frame(height: style.theme.containedTabs.borderWidthDivider)
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}
#endif
