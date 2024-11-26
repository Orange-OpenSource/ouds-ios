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
        case sizeIconWithLabelXlargeSizeShort
        case sizeIconWithLabelXlargeSizeMedium
        case sizeIconWithLabelXlargeSizeTall
        case sizeIconWithLabelLargeSizeShorter
        case sizeIconWithLabelLargeSizeShort
        case sizeIconWithLabelLargeSizeMedium
        case sizeIconWithLabelLargeSizeTall
        case sizeIconWithLabelLargeSizeTaller
        case sizeIconWithLabelMediumSizeShort
        case sizeIconWithLabelMediumSizeMedium
        case sizeIconWithLabelMediumSizeTall
        case sizeIconWithLabelSmallSizeShort
        case sizeIconWithLabelSmallSizeMedium
        case sizeIconWithLabelSmallSizeTall

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
            case .sizeIconWithLabelXlargeSizeShort:
                return .labelDefaultXLarge
            case .sizeIconWithLabelXlargeSizeMedium:
                return .labelDefaultXLarge
            case .sizeIconWithLabelXlargeSizeTall:
                return .labelDefaultXLarge
            case .sizeIconWithLabelLargeSizeShorter:
                return .labelDefaultXLarge
            case .sizeIconWithLabelLargeSizeShort:
                return .labelDefaultLarge
            case .sizeIconWithLabelLargeSizeMedium:
                return .labelDefaultLarge
            case .sizeIconWithLabelLargeSizeTall:
                return .labelDefaultLarge
            case .sizeIconWithLabelLargeSizeTaller:
                return .labelDefaultLarge
            case .sizeIconWithLabelMediumSizeShort:
                return .labelDefaultMedium
            case .sizeIconWithLabelMediumSizeMedium:
                return .labelDefaultMedium
            case .sizeIconWithLabelMediumSizeTall:
                return .labelDefaultMedium
            case .sizeIconWithLabelSmallSizeShort:
                return .labelDefaultSmall
            case .sizeIconWithLabelSmallSizeMedium:
                return .labelDefaultSmall
            case .sizeIconWithLabelSmallSizeTall:
                return .labelDefaultSmall
            }
        }

        // swiftlint:disable function_body_length
        func token(fot theme: OUDSTheme, userInterfaceSizeClass: UserInterfaceSizeClass) -> SizeSemanticToken {
            switch self {
            case .sizeIconWithHeadingXlargeShort:
                return theme.sizeIconWithHeadingXlargeSizeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingXlargeMedium:
                return theme.sizeIconWithHeadingXlargeSizeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingXlargeTall:
                return theme.sizeIconWithHeadingXlargeSizeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeShort:
                return theme.sizeIconWithHeadingLargeSizeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeMedium:
                return theme.sizeIconWithHeadingLargeSizeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeTall:
                return theme.sizeIconWithHeadingLargeSizeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumShort:
                return theme.sizeIconWithHeadingMediumSizeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumMedium:
                return theme.sizeIconWithHeadingMediumSizeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumTall:
                return theme.sizeIconWithHeadingMediumSizeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallShort:
                return theme.sizeIconWithHeadingSmallSizeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallMedium:
                return theme.sizeIconWithHeadingSmallSizeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallTall:
                return theme.sizeIconWithHeadingSmallSizeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeShort:
                return theme.sizeIconWithBodyLargeSizeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeMedium:
                return theme.sizeIconWithBodyLargeSizeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeTall:
                return theme.sizeIconWithBodyLargeSizeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumShort:
                return theme.sizeIconWithBodyMediumSizeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumMedium:
                return theme.sizeIconWithBodyMediumSizeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumTall:
                return theme.sizeIconWithBodyMediumSizeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallShort:
                return theme.sizeIconWithBodySmallSizeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallMedium:
                return theme.sizeIconWithBodySmallSizeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallTall:
                return theme.sizeIconWithBodySmallSizeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithLabelXlargeSizeShort:
                return theme.sizeIconWithLabelXlargeSizeShort
            case .sizeIconWithLabelXlargeSizeMedium:
                return theme.sizeIconWithLabelXlargeSizeMedium
            case .sizeIconWithLabelXlargeSizeTall:
                return theme.sizeIconWithLabelXlargeSizeTall
            case .sizeIconWithLabelLargeSizeShorter:
                return theme.sizeIconWithLabelLargeSizeShorter
            case .sizeIconWithLabelLargeSizeShort:
                return theme.sizeIconWithLabelLargeSizeShort
            case .sizeIconWithLabelLargeSizeMedium:
                return theme.sizeIconWithLabelLargeSizeMedium
            case .sizeIconWithLabelLargeSizeTall:
                return theme.sizeIconWithLabelLargeSizeTall
            case .sizeIconWithLabelLargeSizeTaller:
                return theme.sizeIconWithLabelLargeSizeTaller
            case .sizeIconWithLabelMediumSizeShort:
                return theme.sizeIconWithLabelMediumSizeShort
            case .sizeIconWithLabelMediumSizeMedium:
                return theme.sizeIconWithLabelMediumSizeMedium
            case .sizeIconWithLabelMediumSizeTall:
                return theme.sizeIconWithLabelMediumSizeTall
            case .sizeIconWithLabelSmallSizeShort:
                return theme.sizeIconWithLabelSmallSizeShort
            case .sizeIconWithLabelSmallSizeMedium:
                return theme.sizeIconWithLabelSmallSizeMedium
            case .sizeIconWithLabelSmallSizeTall:
                return theme.sizeIconWithLabelSmallSizeTall
            }
        }
        // swiftlint:enable function_body_length
    }
}
