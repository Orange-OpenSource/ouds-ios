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

// MARK: - Token Illustration

// Used in Typography screen and SizeIconWithLabel
extension View {

    @ViewBuilder
    func illustration(for namedFont: NamedFont, in theme: OUDSTheme) -> some View {
        switch namedFont {
        case .displayLarge:
            Text(namedFont.rawValue.camelCase).typeDisplayLarge(theme)
        case .displayMedium:
            Text(namedFont.rawValue.camelCase).typeDisplayMedium(theme)
        case .displaySmall:
            Text(namedFont.rawValue.camelCase).typeDisplaySmall(theme)
        case .headingXLarge:
            Text(namedFont.rawValue.camelCase).typeHeadingXLarge(theme)
        case .headingLarge:
            Text(namedFont.rawValue.camelCase).typeHeadingLarge(theme)
        case .headingMedium:
            Text(namedFont.rawValue.camelCase).typeHeadingMedium(theme)
        case .headingSmall:
            Text(namedFont.rawValue.camelCase).typeHeadingSmall(theme)
        case .bodyDefaultLarge:
            Text(namedFont.rawValue.camelCase).typeBodyDefaultLarge(theme)
        case .bodyDefaultMedium:
            Text(namedFont.rawValue.camelCase).typeBodyDefaultMedium(theme)
        case .bodyDefaultSmall:
            Text(namedFont.rawValue.camelCase).typeBodyDefaultSmall(theme)
        case .bodyStrongLarge:
            Text(namedFont.rawValue.camelCase).typeBodyStrongLarge(theme)
        case .bodyStrongMedium:
            Text(namedFont.rawValue.camelCase).typeBodyStrongMedium(theme)
        case .bodyStrongSmall:
            Text(namedFont.rawValue.camelCase).typeBodyStrongSmall(theme)
        case .labelDefaultXLarge:
            Text(namedFont.rawValue.camelCase).typeLabelDefaultXLarge(theme)
        case .labelDefaultLarge:
            Text(namedFont.rawValue.camelCase).typeLabelDefaultLarge(theme)
        case .labelDefaultMedium:
            Text(namedFont.rawValue.camelCase).typeLabelDefaultMedium(theme)
        case .labelDefaultSmall:
            Text(namedFont.rawValue.camelCase).typeLabelDefaultSmall(theme)
        case .labelStrongXLarge:
            Text(namedFont.rawValue.camelCase).typeLabelStrongXLarge(theme)
        case .labelStrongLarge:
            Text(namedFont.rawValue.camelCase).typeLabelStrongLarge(theme)
        case .labelStrongMedium:
            Text(namedFont.rawValue.camelCase).typeLabelStrongMedium(theme)
        case .labelStrongSmall:
            Text(namedFont.rawValue.camelCase).typeLabelStrongSmall(theme)
        case .codeSmall:
            Text(namedFont.rawValue.camelCase).typeCodeMedium(theme)
        case .codeMedium:
            Text(namedFont.rawValue.camelCase).typeCodeMedium(theme)
        }
    }
}
