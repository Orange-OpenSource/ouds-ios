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

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.colorSchemeContrast) private var colorSchemeContrast
    @Environment(\.oudsUseMonochrome) private var useMonochrome

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .overlay {
                LoaderIndicator(color: colorToken.color(for: colorScheme))
                    .modifier(LoaderSizeModifier(size: size))
            }
    }

    // MARK: Private helpers

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

    private var size: CGFloat {
        theme.button.sizeLoader
    }
}

// MARK: - Loader Size Modifier

private struct LoaderSizeModifier: ViewModifier {

    @ScaledMetric var size: CGFloat

    func body(content: Content) -> some View {
        content.frame(width: size, height: size, alignment: .center)
    }
}
