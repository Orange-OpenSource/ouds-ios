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

    // MARK: Stored properties

    let code: String
    let titleText: LocalizedStringKey

    @State private var isCodeVisible = false

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: Body

    var body: some View {
        DesignToolboxDisclosureGroup(isExpanded: $isCodeVisible, accessibilityLabel: "app_common_showCode_text_a11y".localized()) {
            codeTokenSection()
        } label: {
            Text(titleText)
                .typeBodyStrongLarge(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .padding(.vertical, theme.spaces.spacePaddingInlineShort)
        }
    }

    private func codeTokenSection() -> some View {
        HStack(alignment: .firstTextBaseline, spacing: theme.spaces.spacePaddingBlockNone) {
            Text(code)
                .font(.system(.body, design: .monospaced))
                .oudsForegroundStyle(theme.colors.colorContentDefault)
                .padding(.vertical, theme.spaces.spacePaddingInlineShort)
                .multilineTextAlignment(layoutDirection == .rightToLeft ? .trailing : .leading)
            // As the source code sample is written in english, keep text aligned on the left

            Spacer(minLength: theme.spaces.spacePaddingBlockMedium)

            Button {
                UIPasteboard.general.string = code
            } label: {
                ZStack {
                    Color.clear
                        .frame(width: kMinimalTouchAreaWidth, height: kMinimalTouchAreaHeight)

                    Image("ic_copy")
                        .resizable()
                        .renderingMode(.template)
                        .oudsForegroundColor(theme.colors.colorContentDefault)
                        .frame(width: 24, height: 24)
                        .alignmentGuide(.firstTextBaseline) { $0[.bottom] * 0.7 }
                        .accessibilityLabel("app_common_copyCode_a11y")
                }
            }
        }
        .frame(minWidth: 72, maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, theme.spaces.spacePaddingInlineShort)
        .padding(.leading, theme.spaces.spacePaddingInlineMedium)
        .oudsBackground(theme.colors.colorBgSecondary)
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
}
