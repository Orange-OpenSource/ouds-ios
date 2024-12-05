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
import SwiftUICore

extension NamedSize {

    enum IconWithTypography: String, CaseIterable {
        case sizeIconWithHeadingXlargeShort
        case sizeIconWithHeadingXlargeMedium
        case sizeIconWithHeadingXlargeTall
        case sizeIconWithHeadingLargeShort
        case sizeIconWithHeadingLargeMedium
        case sizeIconWithHeadingLargeTall
        case sizeIconWithHeadingMediumShort
        case sizeIconWithHeadingMediumMedium
        case sizeIconWithHeadingMediumTall
        case sizeIconWithHeadingSmallShort
        case sizeIconWithHeadingSmallMedium
        case sizeIconWithHeadingSmallTall
        case sizeIconWithBodyLargeShort
        case sizeIconWithBodyLargeMedium
        case sizeIconWithBodyLargeTall
        case sizeIconWithBodyMediumShort
        case sizeIconWithBodyMediumMedium
        case sizeIconWithBodyMediumTall
        case sizeIconWithBodySmallShort
        case sizeIconWithBodySmallMedium
        case sizeIconWithBodySmallTall
        case sizeIconWithLabelXlargeSizeSm
        case sizeIconWithLabelXlargeSizeMd
        case sizeIconWithLabelXlargeSizeLg
        case sizeIconWithLabelLargeSizeXs
        case sizeIconWithLabelLargeSizeSm
        case sizeIconWithLabelLargeSizeMd
        case sizeIconWithLabelLargeSizeLg
        case sizeIconWithLabelLargeSizeXl
        case sizeIconWithLabelMediumSizeSm
        case sizeIconWithLabelMediumSizeMd
        case sizeIconWithLabelMediumSizeLg
        case sizeIconWithLabelSmallSizeSm
        case sizeIconWithLabelSmallSizeMd
        case sizeIconWithLabelSmallSizeLg

        var namedTypography: NamedTypography {
            switch self {
            case .sizeIconWithHeadingXlargeShort:
                return .headingXLarge
            case .sizeIconWithHeadingXlargeMedium:
                return .headingXLarge
            case .sizeIconWithHeadingXlargeTall:
                return .headingXLarge
            case .sizeIconWithHeadingLargeShort:
                return .headingLarge
            case .sizeIconWithHeadingLargeMedium:
                return .headingLarge
            case .sizeIconWithHeadingLargeTall:
                return .headingLarge
            case .sizeIconWithHeadingMediumShort:
                return .headingMedium
            case .sizeIconWithHeadingMediumMedium:
                return .headingMedium
            case .sizeIconWithHeadingMediumTall:
                return .headingMedium
            case .sizeIconWithHeadingSmallShort:
                return .headingSmall
            case .sizeIconWithHeadingSmallMedium:
                return .headingSmall
            case .sizeIconWithHeadingSmallTall:
                return .headingSmall
            case .sizeIconWithBodyLargeShort:
                return .bodyDefaultLarge
            case .sizeIconWithBodyLargeMedium:
                return .bodyDefaultLarge
            case .sizeIconWithBodyLargeTall:
                return .bodyDefaultLarge
            case .sizeIconWithBodyMediumShort:
                return .bodyDefaultMedium
            case .sizeIconWithBodyMediumMedium:
                return .bodyDefaultMedium
            case .sizeIconWithBodyMediumTall:
                return .bodyDefaultMedium
            case .sizeIconWithBodySmallShort:
                return .bodyDefaultSmall
            case .sizeIconWithBodySmallMedium:
                return .bodyDefaultSmall
            case .sizeIconWithBodySmallTall:
                return .bodyDefaultSmall
            case .sizeIconWithLabelXlargeSizeSm:
                return .labelDefaultXLarge
            case .sizeIconWithLabelXlargeSizeMd:
                return .labelDefaultXLarge
            case .sizeIconWithLabelXlargeSizeLg:
                return .labelDefaultXLarge
            case .sizeIconWithLabelLargeSizeXs:
                return .labelDefaultXLarge
            case .sizeIconWithLabelLargeSizeSm:
                return .labelDefaultLarge
            case .sizeIconWithLabelLargeSizeMd:
                return .labelDefaultLarge
            case .sizeIconWithLabelLargeSizeLg:
                return .labelDefaultLarge
            case .sizeIconWithLabelLargeSizeXl:
                return .labelDefaultLarge
            case .sizeIconWithLabelMediumSizeSm:
                return .labelDefaultMedium
            case .sizeIconWithLabelMediumSizeMd:
                return .labelDefaultMedium
            case .sizeIconWithLabelMediumSizeLg:
                return .labelDefaultMedium
            case .sizeIconWithLabelSmallSizeSm:
                return .labelDefaultSmall
            case .sizeIconWithLabelSmallSizeMd:
                return .labelDefaultSmall
            case .sizeIconWithLabelSmallSizeLg:
                return .labelDefaultSmall
            }
        }

        // swiftlint:disable function_body_length
        func token(fot theme: OUDSTheme, userInterfaceSizeClass: UserInterfaceSizeClass) -> SizeSemanticToken {
            switch self {
            case .sizeIconWithHeadingXlargeShort:
                return theme.sizeIconWithHeadingXlargeSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingXlargeMedium:
                return theme.sizeIconWithHeadingXlargeSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingXlargeTall:
                return theme.sizeIconWithHeadingXlargeSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeShort:
                return theme.sizeIconWithHeadingLargeSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeMedium:
                return theme.sizeIconWithHeadingLargeSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeTall:
                return theme.sizeIconWithHeadingLargeSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumShort:
                return theme.sizeIconWithHeadingMediumSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumMedium:
                return theme.sizeIconWithHeadingMediumSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumTall:
                return theme.sizeIconWithHeadingMediumSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallShort:
                return theme.sizeIconWithHeadingSmallSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallMedium:
                return theme.sizeIconWithHeadingSmallSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallTall:
                return theme.sizeIconWithHeadingSmallSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeShort:
                return theme.sizeIconWithBodyLargeSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeMedium:
                return theme.sizeIconWithBodyLargeSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeTall:
                return theme.sizeIconWithBodyLargeSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumShort:
                return theme.sizeIconWithBodyMediumSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumMedium:
                return theme.sizeIconWithBodyMediumSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumTall:
                return theme.sizeIconWithBodyMediumSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallShort:
                return theme.sizeIconWithBodySmallSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallMedium:
                return theme.sizeIconWithBodySmallSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallTall:
                return theme.sizeIconWithBodySmallSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithLabelXlargeSizeSm:
                return theme.sizeIconWithLabelXlargeSizeSm
            case .sizeIconWithLabelXlargeSizeMd:
                return theme.sizeIconWithLabelXlargeSizeMd
            case .sizeIconWithLabelXlargeSizeLg:
                return theme.sizeIconWithLabelXlargeSizeLg
            case .sizeIconWithLabelLargeSizeXs:
                return theme.sizeIconWithLabelLargeSizeXs
            case .sizeIconWithLabelLargeSizeSm:
                return theme.sizeIconWithLabelLargeSizeSm
            case .sizeIconWithLabelLargeSizeMd:
                return theme.sizeIconWithLabelLargeSizeMd
            case .sizeIconWithLabelLargeSizeLg:
                return theme.sizeIconWithLabelLargeSizeLg
            case .sizeIconWithLabelLargeSizeXl:
                return theme.sizeIconWithLabelLargeSizeXl
            case .sizeIconWithLabelMediumSizeSm:
                return theme.sizeIconWithLabelMediumSizeSm
            case .sizeIconWithLabelMediumSizeMd:
                return theme.sizeIconWithLabelMediumSizeMd
            case .sizeIconWithLabelMediumSizeLg:
                return theme.sizeIconWithLabelMediumSizeLg
            case .sizeIconWithLabelSmallSizeSm:
                return theme.sizeIconWithLabelSmallSizeSm
            case .sizeIconWithLabelSmallSizeMd:
                return theme.sizeIconWithLabelSmallSizeMd
            case .sizeIconWithLabelSmallSizeLg:
                return theme.sizeIconWithLabelSmallSizeLg
            }
        }
        // swiftlint:enable function_body_length
    }
}
