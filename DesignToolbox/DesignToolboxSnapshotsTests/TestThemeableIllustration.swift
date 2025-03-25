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

// MARK: - TestThemeableIllustration

/// The test object which will used to start test on a specific theme
/// with a colored surface or not.

struct TestThemeableIllustration<Content>: View where Content: View {

    let theme: OUDSTheme
    let colorScheme: ColorScheme
    let onColoredSurface: Bool
    let content: () -> Content

    var body: some View {
        OUDSThemeableView(theme: theme) {
            if onColoredSurface {
                OUDSColoredSurface(color: theme.colors.colorSurfaceBrandPrimary.color(for: colorScheme)) {
                    content()
                }
            } else {
                content()
                    .background(theme.colors.colorBgPrimary.color(for: colorScheme))
            }
        }
    }
}
