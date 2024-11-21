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

struct ShowcaseTokenCode: View {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    @State private var isCodeVisible = true
    var code: String

    // MARK: Body

    var body: some View {
        VStack(spacing: theme.spaceFixedNone) {
            toggleButtonSection()
            if isCodeVisible {
                codeTokenDisplayCodeSection()
            }
        }
    }

    // MARK: Private helpers

    private func toggleButtonSection() -> some View {
        HStack {
            Button(action: {
                isCodeVisible.toggle()
            }, label: {
                HStack {
                    Text("app_tokens_code_title_label")
                        .typeBodyStrongLarge(theme)
                        .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))
                    Image(isCodeVisible ? "ic_chevron-down" : "ic_chevron-up")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(theme.colorBgBrandPrimary.color(for: colorScheme))
                        .frame(width: 20, height: 20)
                        .padding(.trailing, theme.spacePaddingInlineMedium)
                        .accessibilityLabel("app_tokens_code_visibility_button_a11y")
                }
            })
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.bottom, theme.spacePaddingBlockMedium)
    }

    private func codeTokenDisplayCodeSection() -> some View {
        HStack(alignment: .firstTextBaseline, spacing: theme.spacePaddingBlockMedium) {
            Text(code)
                .font(.system(size: 16, weight: .regular, design: .monospaced))
                .foregroundStyle(theme.colorContentDefault.color(for: colorScheme))
                .padding(.vertical, theme.spacePaddingInlineShort)

            Button(action: {
                UIPasteboard.general.string = code
            }, label: {
                ZStack {
                    Color.clear
                        .frame(width: 44, height: 44)

                    Image("ic_copy")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(theme.colorContentOnBgStatusPositiveMuted.color(for: colorScheme))
                        .frame(width: 24, height: 24)
                        .padding(.trailing, theme.spacePaddingInlineMedium)
                        .alignmentGuide(.firstTextBaseline) { $0[.bottom] * 0.7 }
                        .accessibilityLabel("app_tokens_code_copy_button_a11y")
                }
            })
        }
        .frame(minWidth: 72, maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, theme.spacePaddingInlineShort)
        .padding(.leading, theme.spacePaddingInlineMedium)
        .background(theme.colorBgSecondary.color(for: colorScheme))
        .accessibilityElement(children: .combine)
        .accessibilityHint("app_tokens_code_copy_button_a11y")
        .overlay(
            Rectangle()
                .opacity(theme.opacityTransparent)
                .frame(minWidth: 40, maxWidth: .infinity, alignment: .leading)
                .oudsBorder(style: theme.borderStyleDefault,
                            width: theme.borderWidthThin,
                            radius: theme.borderRadiusDefault,
                            color: theme.colorBorderDefault)
        )
    }
}
