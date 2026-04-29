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

#if !os(watchOS) && !os(tvOS)
import OUDSFoundations
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// MARK: - ToolBar Item Action Button

struct ToolBarItemActionButton: View {

    // MARK: Properties

    let type: OUDSToolBarItem.ActionType
    let style: OUDSToolBarItem.ActionStyle

    @Environment(\.isLiquidGlassDisabled) private var isLiquidGlassDisabled

    // MARK: Body

    var body: some View {
        switch type {
        case let .label(label, emphasized, accessibilityHint, action):
            Button {
                action?()
            } label: {
                // fixedSize(). to let items use suitable size to display text withut beeing truncated all the times
                // padding of 4 to make the text "breath" and not be to stucked to items borders
                if isLiquidGlassDisabled {
                    Text(label).modifier(FontLabelModifier(style: emphasized ? .medium : .regular)).fixedSize().padding(4)
                } else {
                    Text(label).modifier(FontLabelModifier(style: .medium)).fixedSize().padding(4)
                }
            }
            .disabled(action == nil)
            .modifier(ToolBarActionItemModifier(style: style))
            .accessibilityHint(Text(accessibilityHint ?? ""))

        case let .icon(asset, accessibilityLabel, accessibilityHint, badgeType, action):
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
            .accessibilityLabel(Text(accessibilityLabel))
            .accessibilityHint(Text(accessibilityHint ?? ""))
            .modifier(ToolBarItemBadgeModifier(type: badgeType))
        }
    }
}

// MARK: - ToolBar Item Badge Modifier

/// Depending on the OS version and the toolbar associated with the item, adds a badge to the item.
/// For iOS 26 / Liquid Glass, the system badge must be used for the top toolbar; otherwise, the badge will not be readable.
/// However, for the bottom toolbar, the system does not display the badge, so an OUDS badge is used as a workaround.
/// For iOS versions up to 18, use the OUDS badge in all cases.
private struct ToolBarItemBadgeModifier: ViewModifier {

    let type: OUDSToolBarItem.BadgeType?
    @Environment(\.toolbarItemLocation) private var location
    @Environment(\.isLiquidGlassDisabled) private var isLiquidGlassDisabled

    func body(content: Content) -> some View {
        if isLiquidGlassDisabled {
            oudsBadgeLayout(content)
        } else {
            switch location {
            case .toolbarTop:
                systemBadgeLayout(content)
            case .toolbarBottom:
                oudsBadgeLayout(content)
            }
        }
    }

    /// Adds a system badge to the item
    @ViewBuilder private func systemBadgeLayout(_ content: Content) -> some View {
        switch type {
        case .standard:
            content.badge("")
        case let .number(count):
            let text = count > OUDSBadge.maxCount ? "+\(OUDSBadge.maxCount)" : "\(count)"
            content.badge(Text(text))
        case .none:
            content
        }
    }

    /// Adds an OUDS badge to the item
    @ViewBuilder private func oudsBadgeLayout(_ content: Content) -> some View {
        ZStack(alignment: .topTrailing) {
            content
            switch type {
            case .standard:
                OUDSBadge(accessibilityLabel: "", status: .negative, size: .small)
            case let .number(count):
                OUDSBadge(count: count, accessibilityLabel: String(count), status: .negative, size: .medium)
                    .offset(x: 3, y: -3)
            case .none:
                EmptyView()
            }
        }
    }
}

// MARK: - Toolbar Item Navigation Button

struct ToolBarItemNavigationButton: View {

    // MARK: Properties

    let type: OUDSToolBarItem.NavigationType

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection
    @Environment(\.presentationMode) private var presentationMode
    @Environment(\.isLiquidGlassDisabled) private var isLiquidGlassDisabled

    // MARK: - Body

    var body: some View {
        Group {
            switch type {
            case let .back(label, accessibilityLabel, action):
                if isLiquidGlassDisabled {
                    Button {
                        action?()
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack(spacing: 0) {
                            navigationIcon
                                .frame(width: 24, height: 24)

                            if let label {
                                Text(label).modifier(FontLabelModifier(style: .regular)).fixedSize()
                            }
                        }
                    }
                    .accessibilityLabel(accessibilityLabel)
                } else {
                    Button {
                        action?()
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        navigationIcon
                            .frame(width: 28, height: 28)
                    }
                    .accessibilityLabel(accessibilityLabel)
                    .frame(width: 44, height: 44, alignment: .center)
                }
            case .close:
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    HStack {
                        navigationIcon
                            .foregroundColor(MultipleColorSemanticToken("#999999")) // TODO: #1174 - Hard-coded value instead of token, is it mandatory?
                            .frame(width: 24, height: 24)
                    }
                    .frame(width: 34, height: 34, alignment: .center)
                    .background(MultipleColorSemanticToken("#78788029")) // TODO: #1174 - Hard-coded value instead of token, is it mandatory?
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

// MARK: - Font Label Modifier

struct FontLabelModifier: ViewModifier {

    // Try to be able to build the codebase on macOS (CLI), without Xcode, to run deadcode check etc
    // even if macOS not supported
    #if os(macOS)
    private typealias NativeFont = NSFont
    #else
    private typealias NativeFont = UIFont
    #endif

    // MARK: Properties

    let style: Style
    @Environment(\.theme) private var theme

    enum Style {
        case medium
        case regular
    }

    // MARK: Body

    func body(content: Content) -> some View {
        content.font(font)
    }

    // MARK: - Helper

    private var font: Font? {
        guard let fontFamily = theme.fontFamily else {
            return nil
        }

        let fontWeight: Font.Weight = switch style {
        case .medium:
            .medium
        case .regular:
            .regular
        }

        let titleFontName = kApplePostScriptFontNames[orKey: PSFNMK(fontFamily, fontWeight)]
        guard let uiFont = NativeFont(name: titleFontName, size: 17) else {
            return nil
        }

        return Font(uiFont)
    }
}
#endif
