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
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

// MARK: - Loading indicator

private struct LoagingIndicator: View {

    // MARK: Stored Properties

    let color: Color

    @State private var isAnimating = false

    @Environment(\.accessibilityReduceMotion) var reduceMotion

    // MARK: Body

    var body: some View {
        if reduceMotion {
            circleView()
        } else {
            circleView()
                .rotationEffect(.degrees(isAnimating ? 360 : 0))
                .onAppear {
                    withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                        self.isAnimating.toggle()
                    }
                }
        }
    }

    private func circleView() -> some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(color, lineWidth: 3)
    }
}

// MARK: - Button Loading Content Modifier

/// Used to add a progress indicator instead of content (Text, Icon)
/// As the button must keep the size of the content, the indicator is
/// added as overlay on top, and the content is hidden applying an opacity.
struct ButtonLoadingContentModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    // MARK: Stored Properties

    let hierarchy: OUDSButton.Hierarchy

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .overlay {
                LoagingIndicator(color: colorToken.color(for: colorScheme))
                    .padding(.vertical, theme.button.buttonSpacePaddingBlock)
            }
    }

    // MARK: Private helper

    private var colorToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            onColoredSurface ? theme.button.buttonColorContentDefaultLoadingMono : theme.button.buttonColorContentDefaultLoading
        case .strong:
            onColoredSurface ? theme.button.buttonColorContentStrongLoadingMono : theme.colors.colorContentOnActionLoading
        case .minimal:
            onColoredSurface ? theme.button.buttonColorContentMinimalLoadingMono : theme.button.buttonColorContentMinimalLoading
        case .negative:
            theme.colors.colorContentOnStatusEmphasizedAlt
        }
    }
}
