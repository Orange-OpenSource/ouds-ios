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

// MARK: - Token Illustration (used in Typography screen and SizeIconWithLabel)

extension View {

    @ViewBuilder
    func illustration(for namedTypography: NamedTypography, in theme: OUDSTheme) -> some View {
        switch namedTypography {
        case .displayLarge:
            Text(namedTypography.rawValue.camelCase).typeDisplayLarge(theme)
        case .displayMedium:
            Text(namedTypography.rawValue.camelCase).typeDisplayMedium(theme)
        case .displaySmall:
            Text(namedTypography.rawValue.camelCase).typeDisplaySmall(theme)
        case .headingXLarge:
            Text(namedTypography.rawValue.camelCase).typeHeadingXLarge(theme)
        case .headingLarge:
            Text(namedTypography.rawValue.camelCase).typeHeadingLarge(theme)
        case .headingMedium:
            Text(namedTypography.rawValue.camelCase).typeHeadingMedium(theme)
        case .headingSmall:
            Text(namedTypography.rawValue.camelCase).typeHeadingSmall(theme)
        case .bodyDefaultLarge:
            Text(namedTypography.rawValue.camelCase).typeBodyDefaultLarge(theme)
        case .bodyDefaultMedium:
            Text(namedTypography.rawValue.camelCase).typeBodyDefaultMedium(theme)
        case .bodyDefaultSmall:
            Text(namedTypography.rawValue.camelCase).typeBodyDefaultSmall(theme)
        case .bodyStrongLarge:
            Text(namedTypography.rawValue.camelCase).typeBodyStrongLarge(theme)
        case .bodyStrongMedium:
            Text(namedTypography.rawValue.camelCase).typeBodyStrongMedium(theme)
        case .bodyStrongSmall:
            Text(namedTypography.rawValue.camelCase).typeBodyStrongSmall(theme)
        case .labelDefaultXLarge:
            Text(namedTypography.rawValue.camelCase).typeLabelDefaultXLarge(theme)
        case .labelDefaultLarge:
            Text(namedTypography.rawValue.camelCase).typeLabelDefaultLarge(theme)
        case .labelDefaultMedium:
            Text(namedTypography.rawValue.camelCase).typeLabelDefaultMedium(theme)
        case .labelDefaultSmall:
            Text(namedTypography.rawValue.camelCase).typeLabelDefaultSmall(theme)
        case .labelStrongXLarge:
            Text(namedTypography.rawValue.camelCase).typeLabelStrongXLarge(theme)
        case .labelStrongLarge:
            Text(namedTypography.rawValue.camelCase).typeLabelStrongLarge(theme)
        case .labelStrongMedium:
            Text(namedTypography.rawValue.camelCase).typeLabelStrongMedium(theme)
        case .labelStrongSmall:
            Text(namedTypography.rawValue.camelCase).typeLabelStrongSmall(theme)
        case .codeSmall:
            Text(namedTypography.rawValue.camelCase).typeCodeMedium(theme)
        case .codeMedium:
            Text(namedTypography.rawValue.camelCase).typeCodeMedium(theme)
        }
    }
}

extension String {
    var camelCase: String {
        self.prefix(1).capitalized + self.dropFirst()
    }
}
