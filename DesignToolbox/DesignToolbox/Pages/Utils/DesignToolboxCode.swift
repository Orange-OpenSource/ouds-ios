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

struct DesignToolboxCode: View {

    // MARK: Environment properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Stored properties

    @State private var isCodeVisible = false
    let code: String
    let titleText: LocalizedStringKey

    // MARK: Body

    var body: some View {
        VStack(spacing: theme.spaces.spaceFixedNone) {
            toggleButtonSection()
            if isCodeVisible {
                codeTokenDisplayCodeSection()
            }
        }
    }

    // MARK: Private helpers

    private func toggleButtonSection() -> some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
            Button(action: toggle) {
                HStack {
                    Text(titleText)
                        .typeBodyStrongLarge(theme)
                        .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                        .padding(.vertical, theme.spaces.spacePaddingInlineShort)
                    Image("ic_chevron-up")
                        .resizable()
                        .renderingMode(.template)
                        .rotationEffect(Angle.degrees(isCodeVisible ? 0 : 180))
                        .foregroundColor(theme.colors.colorSurfaceBrandPrimary.color(for: colorScheme))
                        .frame(width: 20, height: 20)
                        .padding(.trailing, theme.spaces.spacePaddingInlineMedium)
                        .accessibilityLabel("app_common_viewCodeExample_label_a11y")
                }
            }
            .buttonStyle(PlainButtonStyle())
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.bottom, theme.spaces.spacePaddingBlockShort)
    }

    private func codeTokenDisplayCodeSection() -> some View {
        HStack(alignment: .firstTextBaseline, spacing: theme.spaces.spacePaddingBlockNone) {
            Text(code)
                .font(.system(.body, design: .monospaced))
                .foregroundStyle(theme.colors.colorContentDefault.color(for: colorScheme))
                .padding(.vertical, theme.spaces.spacePaddingInlineShort)

            Spacer(minLength: theme.spaces.spacePaddingBlockMedium)

            Button {
                UIPasteboard.general.string = code
            } label: {
                ZStack {
                    Color.clear
                        .frame(width: 44, height: 44)

                    Image("ic_copy")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(theme.colors.colorContentDefault.color(for: colorScheme))
                        .frame(width: 24, height: 24)
                        .alignmentGuide(.firstTextBaseline) { $0[.bottom] * 0.7 }
                        .accessibilityLabel("app_common_copyCode_a11y")
                }
            }
        }
        .frame(minWidth: 72, maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, theme.spaces.spacePaddingInlineShort)
        .padding(.leading, theme.spaces.spacePaddingInlineMedium)
        .background(theme.colors.colorBgSecondary.color(for: colorScheme))
        .accessibilityElement(children: .combine)
        .accessibilityHint("app_common_copyCode_a11y")
        .overlay(
            Rectangle()
                .opacity(theme.opacities.opacityInvisible)
                .frame(minWidth: 40, maxWidth: .infinity, alignment: .leading)
                .oudsBorder(style: theme.borders.borderStyleDefault,
                            width: theme.borders.borderWidthThin,
                            radius: theme.borders.borderRadiusDefault,
                            color: theme.colors.colorBorderDefault)
        )
    }

    private func toggle() {
        withAnimation {
            isCodeVisible.toggle()
        }
    }
}
