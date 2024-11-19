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
import OUDSTokensSemantic
import SwiftUI

struct SizeTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.colorScheme) private var colorScheme

    /// A theme to force  for this `View` whatever the environnement `theme` is (for UI tests purposes)
    private let forcedTheme: OUDSTheme?
    /// A `ColorScheme` to force  for this `View` whatever the environnement `colorScheme` is (for UI tests purposes)
    private let forcedColorScheme: ColorScheme?
    /// A `HorizontalSizeClass` to force  for this `View` whatever the environnement `horizontalSizeClass` is (for UI tests purposes)
    private let forcedHorizontalSizeClass: UserInterfaceSizeClass?

    init(forceTo theme: OUDSTheme? = nil, colorScheme: ColorScheme? = nil, horizontalSizeClass: UserInterfaceSizeClass? = nil) {
        self.forcedTheme = theme
        self.forcedColorScheme = colorScheme
        self.forcedHorizontalSizeClass = horizontalSizeClass
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

    /// Computed property for horizontalSizeClass
    /// Returns `forcedHorizontalSizeClass` if available, otherwise falls back to the environment `horizontalSizeClass`
    var activeHorizontalSizeClass: UserInterfaceSizeClass {
        forcedHorizontalSizeClass ?? horizontalSizeClass ?? .regular
    }

    // MARK: Body

    var body: some View {
        Group {
            Section { illustrationForIconDecorative() } header: {
                header("app_tokens_dimension_size_iconDecorative_label")
            }
            Section { illustrationIconWithLabel() } header: {
                header("app_tokens_dimension_size_iconWithLabel_label")
            }
        }
        .padding(.horizontal, activeTheme.spaceFixedMedium)
    }

    // MARK: Illustration icon decorative

    private func illustrationForIconDecorative() -> some View {
        ForEach(NamedSize.IconDecorative.allCases, id: \.rawValue) { namedSize in
            illustrationIconDecorative(for: namedSize)
        }
    }

    private func illustrationIconDecorative(for namedSize: NamedSize.IconDecorative) -> some View {
        let token = namedSize.token(from: activeTheme)
        let name = namedSize.rawValue
        let value = String(format: "(%.0f) pt", token)

        return ShowcaseTokenIllustration(tokenName: name, tokenValue: value) {
            ZStack {
                Rectangle()
                    .fill(activeTheme.colorBgEmphasized.color(for: activeColorScheme))
                    .frame(width: 82, height: 82, alignment: .center)

                Image("ic_token")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(activeTheme.colorAlwaysInfo.color(for: activeColorScheme))
                    .frame(width: token, height: token, alignment: .center)
                    .accessibilityHidden(true)
            }
        }
    }

    // MARK: Illustration icon with label

    private func illustrationIconWithLabel() -> some View {
        ForEach(NamedSize.IconWithTypography.allCases, id: \.rawValue) { namedIconSize in
            illustrationIconWithLabel(for: namedIconSize)
        }
    }

    @ViewBuilder
    private func illustrationIconWithLabel(for namedSize: NamedSize.IconWithTypography) -> some View {
        let token = namedSize.token(fot: activeTheme, userInterfaceSizeClass: activeHorizontalSizeClass)
        let namedTypography = namedSize.namedTypography
        let value = String(format: "\(namedSize.rawValue) (%.0f) pt", token)

        HStack {
            Image("ic_token")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(activeTheme.colorAlwaysInfo.color(for: activeColorScheme))
                .frame(width: token, height: token, alignment: .center)
                .accessibilityHidden(true)

            VStack(alignment: .leading) {
                illustration(for: namedTypography, in: activeTheme)
                    .foregroundStyle(activeTheme.colorContentDefault.color(for: activeColorScheme))
                Text(value)
                    .typeBodyDefaultMedium(activeTheme)
                    .foregroundStyle(activeTheme.colorContentMuted.color(for: activeColorScheme))
            }
            .accessibilityElement(children: .combine)
        }
    }

    // MARK: Common helpers

    private func header(_ text: LocalizedStringKey) -> some View {
        Text(text).showcaseSectionHeaderStyle()
    }
}

// MARK: - Named Size

enum NamedSize { }
