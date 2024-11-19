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
import OUDSTokensSemantic
import SwiftUI

struct BorderTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    /// A theme to force  for this `View` whatever the environnement `theme` is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    /// A `ColorScheme` to force  for this `View` whatever the environnement `colorScheme` is (for UI tests purposes)
    private let forcedColorScheme: ColorScheme?

    init(forceTo theme: OUDSTheme? = nil, colorScheme: ColorScheme? = nil) {
        self.forcedTheme = theme
        self.forcedColorScheme = colorScheme
    }

    /// Computed property for colorScheme
    /// Returns `forcedColorScheme` if available, otherwise falls back to the environment `colorScheme`
    var activeColorScheme: ColorScheme {
        forcedColorScheme ?? colorScheme
    }

    /// Computed property for theme
    /// Returns `forcedTheme` if available, otherwise falls back to the environment `theme`
    var activeTheme: OUDSTheme {
        forcedTheme ?? theme
    }

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: activeTheme.spaceFixedMedium) {
            Section {
                VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
                    ForEach(NamedBorderWidth.allCases, id: \.rawValue) { namedWidth in
                        illustration(for: namedWidth)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } header: {
                Text("app_tokens_border_width_label")
                    .typeHeadingLarge(activeTheme)
                    .foregroundStyle(activeTheme.colorContentDefault.color(for: activeColorScheme))
            }

            Section {
                VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
                    ForEach(NamedBorderRadius.allCases, id: \.rawValue) { namedRadius in
                        illustration(for: namedRadius)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } header: {
                Text("app_tokens_border_radius_label")
                    .typeHeadingLarge(activeTheme)
                    .foregroundStyle(activeTheme.colorContentDefault.color(for: activeColorScheme))
            }

            Section {
                VStack(alignment: .leading, spacing: activeTheme.spaceFixedNone) {
                    ForEach(NamedBorderStyle.allCases, id: \.rawValue) { namedStyle in
                        illustration(for: namedStyle)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            } header: {
                Text("app_tokens_border_style_label")
                    .typeHeadingLarge(activeTheme)
                    .foregroundStyle(activeTheme.colorContentDefault.color(for: activeColorScheme))
            }
        }
        .padding(.horizontal, activeTheme.spaceFixedMedium)
    }

    // MARK: Private helpers

    private var rectangle: some View {
        Rectangle()
            .fill(activeTheme.colorBgSecondary.color(for: activeColorScheme))
            .frame(width: 64, height: 64)
    }

    public func illustration(for namedWidth: NamedBorderWidth) -> some View {
        let token = namedWidth.token(from: activeTheme)
        let name = namedWidth.rawValue
        let value = String(format: "(%.0f) pt", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: activeTheme, colorScheme: activeColorScheme) {
            rectangle
                .oudsBorder(style: activeTheme.borderStyleDefault,
                            width: token,
                            radius: activeTheme.borderRadiusNone,
                            color: activeTheme.colorBorderDefault)
        }
    }

    public func illustration(for namedRadius: NamedBorderRadius) -> some View {
        let token = namedRadius.token(from: activeTheme)
        let name = namedRadius.rawValue
        let value = String(format: "(%.0f) pt", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: activeTheme, colorScheme: activeColorScheme) {
            rectangle
                .oudsBorder(style: activeTheme.borderStyleDefault,
                            width: activeTheme.borderWidthDefault,
                            radius: token,
                            color: activeTheme.colorBorderDefault)
        }
    }

    public func illustration(for namedStyle: NamedBorderStyle) -> some View {
        let token = namedStyle.token(from: activeTheme)
        let name = namedStyle.rawValue
        let value = token

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value, forceTo: activeTheme, colorScheme: activeColorScheme) {
            rectangle
                .oudsBorder(style: token,
                            width: activeTheme.borderWidthDefault,
                            radius: activeTheme.borderRadiusNone,
                            color: activeTheme.colorBorderDefault)
        }
    }
}

public enum NamedBorderRadius: String, CaseIterable {
    case borderRadiusNone
    case borderRadiusDefault
    case borderRadiusShort
    case borderRadiusMedium
    case borderRadiusTall

    func token(from theme: OUDSTheme) -> BorderRadiusSemanticToken {
        switch self {
        case .borderRadiusNone:
            return theme.borderRadiusNone
        case .borderRadiusDefault:
            return theme.borderRadiusDefault
        case .borderRadiusShort:
            return theme.borderRadiusShort
        case .borderRadiusMedium:
            return theme.borderRadiusMedium
        case .borderRadiusTall:
            return theme.borderRadiusTall
        }
    }
}

public enum NamedBorderWidth: String, CaseIterable {

    case borderWidthNone
    case borderWidthDefault
    case borderWidthThin
    case borderWidthMedium
    case borderWidthThick
    case borderWidthThicker
    case borderWidthFocus
    case borderWidthFocusInset

    func token(from theme: OUDSTheme) -> BorderWidthSemanticToken {
        switch self {
        case .borderWidthNone:
            return theme.borderWidthNone
        case .borderWidthDefault:
            return theme.borderWidthDefault
        case .borderWidthThin:
            return theme.borderWidthThin
        case .borderWidthMedium:
            return theme.borderWidthMedium
        case .borderWidthThick:
            return theme.borderWidthThick
        case .borderWidthThicker:
            return theme.borderWidthThicker
        case .borderWidthFocus:
            return theme.borderWidthFocus
        case .borderWidthFocusInset:
            return theme.borderWidthFocusInset
        }
    }
}

public enum NamedBorderStyle: String, CaseIterable {
    case borderStyleDefault
    case borderStyleDrag

    func token(from theme: OUDSTheme) -> BorderStyleSemanticToken {
        switch self {
        case .borderStyleDefault:
            return theme.borderStyleDefault
        case .borderStyleDrag:
            return theme.borderStyleDrag
        }
    }
}
