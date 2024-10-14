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
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

struct ColorTokenPage: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedMedium) {
            Section {
                illustrationForBackground()
            } header: {
                Text("Background").typeHeadingMedium(theme).fixedSize(horizontal: false, vertical: true)
            }

            Section {
                illustrationForBackgroundAction()
            } header: {
                Text("Background Action").typeHeadingMedium(theme).fixedSize(horizontal: false, vertical: true)
            }

            Section {
                illustrationForBackgroundAlways()
            } header: {
                Text("Background Always").typeHeadingMedium(theme).fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding(.horizontal, theme.spaceFixedMedium)
    }

    // MARK: Private helpers
    private func illustrationForBackground() -> some View {
        ForEach(NamedColor.Background.allCases, id: \.rawValue) { namedColorToken in
            illustration(for: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
        }
    }

    private func illustrationForBackgroundAction() -> some View {
        ForEach(NamedColor.Background.Action.allCases, id: \.rawValue) { namedColorToken in
            illustration(for: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
        }
    }

    private func illustrationForBackgroundAlways() -> some View {
        ForEach(NamedColor.Background.Always.allCases, id: \.rawValue) { namedColorToken in
            illustration(for: namedColorToken.token(from: theme), name: namedColorToken.rawValue)
        }
    }

    // MARK: Common private helpers
    @ViewBuilder
    private func illustration(for token: MultipleColorTokens?, name: String) -> some View {
        if let token {
            let colorRawToken = colorScheme == .dark ? token.dark : token.light

            ShowcaseTokenIllustration(tokenName: name, tokenValue: colorRawToken) {
                Rectangle()
                    .fill(colorRawToken.color)
                    .frame(width: 64, height: 64)
                    .modifier(ExtraBorderModifier(colorRawToken: colorRawToken))
            }
        }
    }
}

// MARK: - Extra border modifier

// Add a border if color define by token is equal to default background color of the root view
private struct ExtraBorderModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let colorRawToken: ColorRawToken

    func body(content: Content) -> some View {
        let defaultContentBackground = theme.colorBackgroundDefaultPrimary?.color(for: colorScheme) ?? Color(UIColor.systemBackground)
        let addBorder = (colorRawToken.color) == defaultContentBackground

        if addBorder {
            content.oudsBorder(style: theme.borderStyleDefault,
                               width: theme.borderWidthThin,
                               radius: theme.borderRadiusNone,
                               color: theme.colorContentDefault!)
        } else {
            content
        }
    }
}

// swiftlint:disable nesting
private enum NamedColor {
    enum Background: String, CaseIterable {

        // MARK: Semantic token - Colors - Background
        case colorBackgroundDefaultPrimary
        case colorBackgroundDefaultSecondary
        case colorBackgroundDefaultTertiary
        case colorBackgroundEmphasizedPrimary
        case colorBackgroundBrandPrimary
        case colorBackgroundBrandSecondary
        case colorBackgroundBrandTertiary
        case colorBackgroundStatusNeutral
        case colorBackgroundStatusNeutralOnBackgroundEmphasized
        case colorBackgroundStatusAttractiveMuted
        case colorBackgroundStatusAttractiveEmphasized
        case colorBackgroundStatusWarningMuted
        case colorBackgroundStatusWarningMutedOnBackgroundEmphasized
        case colorBackgroundStatusWarningEmphasized
        case colorBackgroundStatusNegativeMuted
        case colorBackgroundStatusNegativeMutedOnBackgroundEmphasized
        case colorBackgroundStatusNegativeEmphasized
        case colorBackgroundStatusPositiveMuted
        case colorBackgroundStatusPositiveMutedOnBackgroundEmphasized
        case colorBackgroundStatusPositiveEmphasized
        case colorBackgroundStatusInformationMuted
        case colorBackgroundStatusInformationMutedOnBackgroundEmphasized
        case colorBackgroundStatusInformationEmphasized

        func token(from theme: OUDSTheme) -> MultipleColorTokens? {
            switch self {
            case .colorBackgroundDefaultPrimary:
                return theme.colorBackgroundDefaultPrimary
            case .colorBackgroundDefaultSecondary:
                return theme.colorBackgroundDefaultSecondary
            case .colorBackgroundDefaultTertiary:
                return theme.colorBackgroundDefaultTertiary
            case .colorBackgroundEmphasizedPrimary:
                return theme.colorBackgroundEmphasizedPrimary
            case .colorBackgroundBrandPrimary:
                return theme.colorBackgroundBrandPrimary
            case .colorBackgroundBrandSecondary:
                return theme.colorBackgroundBrandSecondary
            case .colorBackgroundBrandTertiary:
                return theme.colorBackgroundBrandTertiary
            case .colorBackgroundStatusNeutral:
                return theme.colorBackgroundStatusNeutral
            case .colorBackgroundStatusNeutralOnBackgroundEmphasized:
                return theme.colorBackgroundStatusNeutralOnBackgroundEmphasized
            case .colorBackgroundStatusAttractiveMuted:
                return theme.colorBackgroundStatusAttractiveMuted
            case .colorBackgroundStatusAttractiveEmphasized:
                return theme.colorBackgroundStatusAttractiveEmphasized
            case .colorBackgroundStatusWarningMuted:
                return theme.colorBackgroundStatusWarningMuted
            case .colorBackgroundStatusWarningMutedOnBackgroundEmphasized:
                return theme.colorBackgroundStatusWarningMutedOnBackgroundEmphasized
            case .colorBackgroundStatusWarningEmphasized:
                return theme.colorBackgroundStatusWarningEmphasized
            case .colorBackgroundStatusNegativeMuted:
                return theme.colorBackgroundStatusNegativeMuted
            case .colorBackgroundStatusNegativeMutedOnBackgroundEmphasized:
                return theme.colorBackgroundStatusNegativeMutedOnBackgroundEmphasized
            case .colorBackgroundStatusNegativeEmphasized:
                return theme.colorBackgroundStatusNegativeEmphasized
            case .colorBackgroundStatusPositiveMuted:
                return theme.colorBackgroundStatusPositiveMuted
            case .colorBackgroundStatusPositiveMutedOnBackgroundEmphasized:
                return theme.colorBackgroundStatusPositiveMutedOnBackgroundEmphasized
            case .colorBackgroundStatusPositiveEmphasized:
                return theme.colorBackgroundStatusPositiveEmphasized
            case .colorBackgroundStatusInformationMuted:
                return theme.colorBackgroundStatusInformationMuted
            case .colorBackgroundStatusInformationMutedOnBackgroundEmphasized:
                return theme.colorBackgroundStatusInformationMutedOnBackgroundEmphasized
            case .colorBackgroundStatusInformationEmphasized:
                return theme.colorBackgroundStatusInformationEmphasized
            }
        }

        // MARK: Semantic token - Colors - Background - Action

        enum Action: String, CaseIterable {
            case colorBackgroundActionEnabled
            case colorBackgroundActionEnabledOnBackgroundEmphasized
            case colorBackgroundActionEnabledOnBackgroundStatusExcNegative
            case colorBackgroundActionEnabledOnBackgroundStatusNegative
            case colorBackgroundActionPressed
            case colorBackgroundActionPressedOnBackgroundEmphasized
            case colorBackgroundActionPressedOnBackgroundStatusExcNegative
            case colorBackgroundActionPressedOnBackgroundStautsNegative
            case colorBackgroundActionDisabled
            case colorBackgroundActionDisabledOnBackgroundEmphasized
            case colorBackgroundActionDisabledOnBackgroundStatusExcNegative
            case colorBackgroundActionDisabledOnBackgroundStatusNegative
            case colorBackgroundActionFocus
            case colorBackgroundActionFocusOnBackgroundEmphasized
            case colorBackgroundActionFocusOnBackgroundStatusExcNegative
            case colorBackgroundActionFocusOnBackgroundStatusNegative

            func token(from theme: OUDSTheme) -> MultipleColorTokens? {
                switch self {
                case .colorBackgroundActionEnabled:
                    return theme.colorBackgroundActionEnabled
                case .colorBackgroundActionEnabledOnBackgroundEmphasized:
                    return theme.colorBackgroundActionEnabledOnBackgroundEmphasized
                case .colorBackgroundActionEnabledOnBackgroundStatusExcNegative:
                    return theme.colorBackgroundActionEnabledOnBackgroundStatusExcNegative
                case .colorBackgroundActionEnabledOnBackgroundStatusNegative:
                    return theme.colorBackgroundActionEnabledOnBackgroundStatusNegative
                case .colorBackgroundActionPressed:
                    return theme.colorBackgroundActionPressed
                case .colorBackgroundActionPressedOnBackgroundEmphasized:
                    return theme.colorBackgroundActionPressedOnBackgroundEmphasized
                case .colorBackgroundActionPressedOnBackgroundStatusExcNegative:
                    return theme.colorBackgroundActionPressedOnBackgroundStatusExcNegative
                case .colorBackgroundActionPressedOnBackgroundStautsNegative:
                    return theme.colorBackgroundActionPressedOnBackgroundStautsNegative
                case .colorBackgroundActionDisabled:
                    return theme.colorBackgroundActionDisabled
                case .colorBackgroundActionDisabledOnBackgroundEmphasized:
                    return theme.colorBackgroundActionDisabledOnBackgroundEmphasized
                case .colorBackgroundActionDisabledOnBackgroundStatusExcNegative:
                    return theme.colorBackgroundActionDisabledOnBackgroundStatusExcNegative
                case .colorBackgroundActionDisabledOnBackgroundStatusNegative:
                    return theme.colorBackgroundActionDisabledOnBackgroundStatusNegative
                case .colorBackgroundActionFocus:
                    return theme.colorBackgroundActionFocus
                case .colorBackgroundActionFocusOnBackgroundEmphasized:
                    return theme.colorBackgroundActionFocusOnBackgroundEmphasized
                case .colorBackgroundActionFocusOnBackgroundStatusExcNegative:
                    return theme.colorBackgroundActionFocusOnBackgroundStatusExcNegative
                case .colorBackgroundActionFocusOnBackgroundStatusNegative:
                    return theme.colorBackgroundActionFocusOnBackgroundStatusNegative
                }
            }
        }

        // MARK: Semantic token - Colors - Background - Always

        enum Always: String, CaseIterable {
            case colorBackgroundAlwaysBlack
            case colorBackgroundAlwaysWhite
            case colorBackgroundAlwaysAttractive
            case colorBackgroundAlwaysWarning
            case colorBackgroundAlwaysNegative
            case colorBackgroundAlwaysPositive
            case colorBackgroundAlwaysInformation

            // MARK: Tokenable impl
            func token(from theme: OUDSTheme) -> MultipleColorTokens? {
                switch self {
                case .colorBackgroundAlwaysBlack:
                    return theme.colorBackgroundAlwaysBlack
                case .colorBackgroundAlwaysWhite:
                    return theme.colorBackgroundAlwaysWhite
                case .colorBackgroundAlwaysAttractive:
                    return theme.colorBackgroundAlwaysAttractive
                case .colorBackgroundAlwaysWarning:
                    return theme.colorBackgroundAlwaysWarning
                case .colorBackgroundAlwaysNegative:
                    return theme.colorBackgroundAlwaysNegative
                case .colorBackgroundAlwaysPositive:
                    return theme.colorBackgroundAlwaysPositive
                case .colorBackgroundAlwaysInformation:
                    return theme.colorBackgroundAlwaysInformation
                }
            }
        }

        // MARK: Semantic token - Colors - Background - Transparent
        enum Transparent: String, CaseIterable {
            case colorBackgroundTransparentDefault

            func token(from theme: OUDSTheme) -> MultipleColorTokens? {
                switch self {
                case .colorBackgroundTransparentDefault:
                    return theme.colorBackgroundTransparentDefault
                }
            }
        }
    }
}
