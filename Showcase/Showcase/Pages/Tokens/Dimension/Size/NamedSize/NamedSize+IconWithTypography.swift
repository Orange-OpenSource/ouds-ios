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
        case sizeIconWithHeadingXLargeShort
        case sizeIconWithHeadingXLargeMedium
        case sizeIconWithHeadingXLargeTall
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
        case sizeIconWithLabelXLargeSizeShort
        case sizeIconWithLabelXLargeSizeMedium
        case sizeIconWithLabelXLargeSizeTall
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

        // swiftlint:disable switch_case_on_newline
        var namedTypography: NamedTypography {
            switch self {
            case .sizeIconWithHeadingXLargeShort: return .headingXLarge
            case .sizeIconWithHeadingXLargeMedium: return .headingXLarge
            case .sizeIconWithHeadingXLargeTall: return .headingXLarge
            case .sizeIconWithHeadingLargeShort: return .headingLarge
            case .sizeIconWithHeadingLargeMedium: return .headingLarge
            case .sizeIconWithHeadingLargeTall: return .headingLarge
            case .sizeIconWithHeadingMediumShort: return .headingMedium
            case .sizeIconWithHeadingMediumMedium: return .headingMedium
            case .sizeIconWithHeadingMediumTall: return .headingMedium
            case .sizeIconWithHeadingSmallShort: return .headingSmall
            case .sizeIconWithHeadingSmallMedium: return .headingSmall
            case .sizeIconWithHeadingSmallTall: return .headingSmall
            case .sizeIconWithBodyLargeShort: return .bodyDefaultLarge
            case .sizeIconWithBodyLargeMedium: return .bodyDefaultLarge
            case .sizeIconWithBodyLargeTall: return .bodyDefaultLarge
            case .sizeIconWithBodyMediumShort: return .bodyDefaultMedium
            case .sizeIconWithBodyMediumMedium: return .bodyDefaultMedium
            case .sizeIconWithBodyMediumTall: return .bodyDefaultMedium
            case .sizeIconWithBodySmallShort: return .bodyDefaultSmall
            case .sizeIconWithBodySmallMedium: return .bodyDefaultSmall
            case .sizeIconWithBodySmallTall: return .bodyDefaultSmall
            case .sizeIconWithLabelXLargeSizeShort: return .labelDefaultXLarge
            case .sizeIconWithLabelXLargeSizeMedium: return .labelDefaultXLarge
            case .sizeIconWithLabelXLargeSizeTall: return .labelDefaultXLarge
            case .sizeIconWithLabelLargeSizeShorter: return .labelDefaultXLarge
            case .sizeIconWithLabelLargeSizeShort: return .labelDefaultLarge
            case .sizeIconWithLabelLargeSizeMedium: return .labelDefaultLarge
            case .sizeIconWithLabelLargeSizeTall: return .labelDefaultLarge
            case .sizeIconWithLabelLargeSizeTaller: return .labelDefaultLarge
            case .sizeIconWithLabelMediumSizeShort: return .labelDefaultMedium
            case .sizeIconWithLabelMediumSizeMedium: return .labelDefaultMedium
            case .sizeIconWithLabelMediumSizeTall: return .labelDefaultMedium
            case .sizeIconWithLabelSmallSizeShort: return .labelDefaultSmall
            case .sizeIconWithLabelSmallSizeMedium: return .labelDefaultSmall
            case .sizeIconWithLabelSmallSizeTall: return .labelDefaultSmall
            }
        }
        // swiftlint:enable switch_case_on_newline

        // swiftlint:disable function_body_length
        func token(fot theme: OUDSTheme, userInterfaceSizeClass: UserInterfaceSizeClass) -> SizeSemanticToken {
            switch self {
            case .sizeIconWithHeadingXLargeShort:
                return theme.sizeIconWithHeadingXLargeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingXLargeMedium:
                return theme.sizeIconWithHeadingXLargeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingXLargeTall:
                return theme.sizeIconWithHeadingXLargeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeShort:
                return theme.sizeIconWithHeadingLargeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeMedium:
                return theme.sizeIconWithHeadingLargeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeTall:
                return theme.sizeIconWithHeadingLargeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumShort:
                return theme.sizeIconWithHeadingMediumShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumMedium:
                return theme.sizeIconWithHeadingMediumMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumTall:
                return theme.sizeIconWithHeadingMediumTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallShort:
                return theme.sizeIconWithHeadingSmallShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallMedium:
                return theme.sizeIconWithHeadingSmallMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallTall:
                return theme.sizeIconWithHeadingSmallTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeShort:
                return theme.sizeIconWithBodyLargeShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeMedium:
                return theme.sizeIconWithBodyLargeMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeTall:
                return theme.sizeIconWithBodyLargeTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumShort:
                return theme.sizeIconWithBodyMediumShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumMedium:
                return theme.sizeIconWithBodyMediumMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumTall:
                return theme.sizeIconWithBodyMediumTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallShort:
                return theme.sizeIconWithBodySmallShort.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallMedium:
                return theme.sizeIconWithBodySmallMedium.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallTall:
                return theme.sizeIconWithBodySmallTall.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithLabelXLargeSizeShort:
                return theme.sizeIconWithLabelXLargeSizeShort
            case .sizeIconWithLabelXLargeSizeMedium:
                return theme.sizeIconWithLabelXLargeSizeMedium
            case .sizeIconWithLabelXLargeSizeTall:
                return theme.sizeIconWithLabelXLargeSizeTall
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
        // swiftlint:enable function_body_lengt
    }
}
