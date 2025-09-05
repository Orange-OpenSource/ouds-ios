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
                LoaderIndicator(color: colorToken.color(for: colorScheme))
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
        case .strong, .brand:
            useMonochrome ? theme.button.buttonMonoColorContentStrongLoading : theme.colors.colorContentOnActionLoading
        case .minimal:
            useMonochrome ? theme.button.buttonMonoColorContentMinimalLoading : theme.button.buttonColorContentMinimalLoading
        case .negative:
            theme.colors.colorContentOnStatusNegativeEmphasized
        }
    }
}
