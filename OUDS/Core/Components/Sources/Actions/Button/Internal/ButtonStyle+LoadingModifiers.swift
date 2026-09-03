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

import OUDSThemesContract
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

// MARK: - Button Loading Content Modifier

/// Used to add a progress indicator instead of content (Text, Icon)
/// As the button must keep the size of the content, the indicator is
/// added as overlay on top, and the content is hidden applying an opacity.
/// If the device has the high contrast mode enabled, changes the loader color.
struct ButtonLoadingContentModifier: ViewModifier {

    // MARK: Stored Properties

    let appearance: OUDSButton.Appearance
    let size: OUDSButton.Size
    let progress: Double?

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .overlay {
                Group {
                    if let progress {
                        CircularProgressIndicatorDeterminateView(progress: progress,
                                                                 animated: true,
                                                                 foregroundColor: colorToken.color(for: colorScheme),
                                                                 trackColor: .clear,
                                                                 strokeCap: .square,
                                                                 gapSize: .default,
                                                                 size: sizeProgressIndicator)
                    } else {
                        CircularProgressIndicatorIndeterminateView(foregroundColor: colorToken.color(for: colorScheme),
                                                                   trackColor: .clear,
                                                                   strokeCap: .square,
                                                                   gapSize: .default,
                                                                   hasTrack: false,
                                                                   size: sizeProgressIndicator)
                    }
                }
                .modifier(LoaderSizeModifier(size: sizeProgressIndicator))
            }
    }

    // MARK: Private helper

    private var colorToken: MultipleColorSemanticToken {
        switch appearance {
        case .default:
            if colorSchemeContrast == .increased, colorScheme == .light {
                theme.colors.contentDefault
            } else {
                useMonochrome ? theme.button.monoColorContentDefaultLoading : theme.button.colorContentDefaultLoading
            }
        case .strong, .brand:
            useMonochrome ? theme.button.monoColorContentStrongLoading : theme.colors.contentOnActionLoading
        case .minimal:
            useMonochrome ? theme.button.monoColorContentMinimalLoading : theme.button.colorContentMinimalLoading
        case .negative:
            theme.colors.contentOnStatusNegativeEmphasized
        }
    }

    private var sizeProgressIndicator: CGFloat {
        switch size {
        case .default:
            theme.button.sizeProgressIndicatorDefault
        case .small:
            theme.button.sizeProgressIndicatorSmall
        }
    }
}

// MARK: - Loader Size Modifier

private struct LoaderSizeModifier: ViewModifier {

    @ScaledMetric var size: CGFloat

    func body(content: Content) -> some View {
        content.frame(width: size, height: size, alignment: .center)
    }
}
