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

// MARK: - Button Loading Content Modifier

/// Used to add a progress indicator instead of content (Text, Icon)
/// As the button must keep the size of the content, the indicator is
/// added as overlay on top, and the content is hidden applying an opacity.
/// If the device has the high contrast mode enabled, changes the loader color.
struct ButtonLoadingContentModifier: ViewModifier {

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast
    @Environment(\.oudsUseMonochrome) private var useMonochrome

    // MARK: Stored Properties

    let hierarchy: OUDSButton.Hierarchy

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .overlay {
                LoadingIndicator(color: colorToken.color(for: colorScheme))
                    .padding(.vertical, theme.button.buttonSpacePaddingBlock)
            }
    }

    // MARK: Private helper

    private var colorToken: MultipleColorSemanticTokens {
        switch hierarchy {
        case .default:
            if colorSchemeContrast == .increased, colorScheme == .light {
                theme.colors.colorContentDefault
            } else {
                useMonochrome ? theme.button.buttonMonoColorContentDefaultLoading : theme.button.buttonColorContentDefaultLoading
            }
        case .strong:
            useMonochrome ? theme.button.buttonMonoColorContentStrongLoading : theme.colors.colorContentOnActionLoading
        case .minimal:
            useMonochrome ? theme.button.buttonMonoColorContentMinimalLoading : theme.button.buttonColorContentMinimalLoading
        case .negative:
            theme.colors.colorContentOnStatusNegativeEmphasized
        }
    }
}

// MARK: - Loading indicator

private struct LoadingIndicator: View {

    // MARK: Stored Properties

    let color: Color

    @State private var isAnimating = false
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    // MARK: Body

    var body: some View {
        if reduceMotion || lowPowerModeObserver.isLowPowerModeEnabled {
            circleView()
                .onAppear { // If not set, animation never resumes is low power mode move from true to false
                    isAnimating = false
                }
        } else {
            circleView()
                .rotationEffect(.degrees(isAnimating ? 360 : 0))
                .onAppear {
                    isAnimating = true
                }
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false), value: isAnimating)
        }
    }

    private func circleView() -> some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(color, lineWidth: 3)
    }
}
