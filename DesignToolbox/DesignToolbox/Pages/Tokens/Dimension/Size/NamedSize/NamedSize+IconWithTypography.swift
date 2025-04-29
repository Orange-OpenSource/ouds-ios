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

extension NamedSize {
    enum IconWithTypography: String, CaseIterable {

        // MARK: With Heading
        case sizeIconWithHeadingXlargeSizeSm
        case sizeIconWithHeadingXlargeSizeMd
        case sizeIconWithHeadingXlargeSizeLg

        case sizeIconWithHeadingLargeSizeSm
        case sizeIconWithHeadingLargeSizeMd
        case sizeIconWithHeadingLargeSizeLg

        case sizeIconWithHeadingMediumSizeSm
        case sizeIconWithHeadingMediumSizeMd
        case sizeIconWithHeadingMediumSizeLg

        case sizeIconWithHeadingSmallSizeSm
        case sizeIconWithHeadingSmallSizeMd
        case sizeIconWithHeadingSmallSizeLg

        // MARK: With Body
        case sizeIconWithBodyLargeSizeSm
        case sizeIconWithBodyLargeSizeMd
        case sizeIconWithBodyLargeSizeLg

        case sizeIconWithBodyMediumSizeSm
        case sizeIconWithBodyMediumSizeMd
        case sizeIconWithBodyMediumSizeLg

        case sizeIconWithBodySmallSizeSm
        case sizeIconWithBodySmallSizeMd
        case sizeIconWithBodySmallSizeLg

        // MARK: With Label
        case sizeIconWithLabelXlargeSizeSm
        case sizeIconWithLabelXlargeSizeMd
        case sizeIconWithLabelXlargeSizeLg

        case sizeIconWithLabelLargeSizeXs
        case sizeIconWithLabelLargeSizeSm
        case sizeIconWithLabelLargeSizeMd
        case sizeIconWithLabelLargeSizeLg
        case sizeIconWithLabelLargeSizeXl

        case sizeIconWithLabelMediumSizeXs
        case sizeIconWithLabelMediumSizeSm
        case sizeIconWithLabelMediumSizeMd
        case sizeIconWithLabelMediumSizeLg

        case sizeIconWithLabelSmallSizeXs
        case sizeIconWithLabelSmallSizeSm
        case sizeIconWithLabelSmallSizeMd
        case sizeIconWithLabelSmallSizeLg

        // swiftlint:disable function_body_length
        func token(for theme: OUDS.OUDSTheme, userInterfaceSizeClass: UserInterfaceSizeClass) -> OUDSTokensSemantic.SizeSemanticToken {
            switch self {
                // Heading
            case .sizeIconWithHeadingXlargeSizeSm:
                return theme.sizes.sizeIconWithHeadingXlargeSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingXlargeSizeMd:
                return theme.sizes.sizeIconWithHeadingXlargeSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingXlargeSizeLg:
                return theme.sizes.sizeIconWithHeadingXlargeSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeSizeSm:
                return theme.sizes.sizeIconWithHeadingLargeSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeSizeMd:
                return theme.sizes.sizeIconWithHeadingLargeSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingLargeSizeLg:
                return theme.sizes.sizeIconWithHeadingLargeSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumSizeSm:
                return theme.sizes.sizeIconWithHeadingMediumSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumSizeMd:
                return theme.sizes.sizeIconWithHeadingMediumSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingMediumSizeLg:
                return theme.sizes.sizeIconWithHeadingMediumSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallSizeSm:
                return theme.sizes.sizeIconWithHeadingSmallSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallSizeMd:
                return theme.sizes.sizeIconWithHeadingSmallSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithHeadingSmallSizeLg:
                return theme.sizes.sizeIconWithHeadingSmallSizeLg.dimension(for: userInterfaceSizeClass)
            // Body
            case .sizeIconWithBodyLargeSizeSm:
                return theme.sizes.sizeIconWithBodyLargeSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeSizeMd:
                return theme.sizes.sizeIconWithBodyLargeSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyLargeSizeLg:
                return theme.sizes.sizeIconWithBodyLargeSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumSizeSm:
                return theme.sizes.sizeIconWithBodyMediumSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumSizeMd:
                return theme.sizes.sizeIconWithBodyMediumSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodyMediumSizeLg:
                return theme.sizes.sizeIconWithBodyMediumSizeLg.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallSizeSm:
                return theme.sizes.sizeIconWithBodySmallSizeSm.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallSizeMd:
                return theme.sizes.sizeIconWithBodySmallSizeMd.dimension(for: userInterfaceSizeClass)
            case .sizeIconWithBodySmallSizeLg:
                return theme.sizes.sizeIconWithBodySmallSizeLg.dimension(for: userInterfaceSizeClass)
                // With Label
            case .sizeIconWithLabelXlargeSizeSm:
                return theme.sizes.sizeIconWithLabelLargeSizeSm
            case .sizeIconWithLabelXlargeSizeMd:
                return theme.sizes.sizeIconWithLabelLargeSizeMd
            case .sizeIconWithLabelXlargeSizeLg:
                return theme.sizes.sizeIconWithLabelLargeSizeLg
            case .sizeIconWithLabelLargeSizeXs:
                return theme.sizes.sizeIconWithLabelLargeSizeXs
            case .sizeIconWithLabelLargeSizeSm:
                return theme.sizes.sizeIconWithLabelLargeSizeSm
            case .sizeIconWithLabelLargeSizeMd:
                return theme.sizes.sizeIconWithLabelLargeSizeMd
            case .sizeIconWithLabelLargeSizeLg:
                return theme.sizes.sizeIconWithLabelLargeSizeLg
            case .sizeIconWithLabelLargeSizeXl:
                return theme.sizes.sizeIconWithLabelLargeSizeXl
            case .sizeIconWithLabelMediumSizeXs:
                return theme.sizes.sizeIconWithLabelMediumSizeXs
            case .sizeIconWithLabelMediumSizeSm:
                return theme.sizes.sizeIconWithLabelMediumSizeSm
            case .sizeIconWithLabelMediumSizeMd:
                return theme.sizes.sizeIconWithLabelMediumSizeMd
            case .sizeIconWithLabelMediumSizeLg:
                return theme.sizes.sizeIconWithLabelMediumSizeLg
            case .sizeIconWithLabelSmallSizeXs:
                return theme.sizes.sizeIconWithLabelSmallSizeXs
            case .sizeIconWithLabelSmallSizeSm:
                return theme.sizes.sizeIconWithLabelSmallSizeSm
            case .sizeIconWithLabelSmallSizeMd:
                return theme.sizes.sizeIconWithLabelSmallSizeMd
            case .sizeIconWithLabelSmallSizeLg:
                return theme.sizes.sizeIconWithLabelSmallSizeLg
            }
        }
        // swiftlint:enable function_body_length

        /// Provides the `namedFont associated to the icon size
        var namedFont: NamedFont {
            switch self {
            case .sizeIconWithHeadingXlargeSizeSm,
                    .sizeIconWithHeadingXlargeSizeMd,
                    .sizeIconWithHeadingXlargeSizeLg:
                return .headingXLarge
            case .sizeIconWithHeadingLargeSizeSm,
                    .sizeIconWithHeadingLargeSizeMd,
                    .sizeIconWithHeadingLargeSizeLg:
                return .headingLarge
            case .sizeIconWithHeadingMediumSizeSm,
                    .sizeIconWithHeadingMediumSizeMd,
                    .sizeIconWithHeadingMediumSizeLg:
                return .headingMedium
            case .sizeIconWithHeadingSmallSizeSm,
                    .sizeIconWithHeadingSmallSizeMd,
                    .sizeIconWithHeadingSmallSizeLg:
                return .headingSmall
            case .sizeIconWithBodyLargeSizeSm,
                    .sizeIconWithBodyLargeSizeMd,
                    .sizeIconWithBodyLargeSizeLg:
                return .bodyDefaultLarge
            case .sizeIconWithBodyMediumSizeSm,
                    .sizeIconWithBodyMediumSizeMd,
                    .sizeIconWithBodyMediumSizeLg:
                return .bodyDefaultMedium
            case .sizeIconWithBodySmallSizeSm,
                    .sizeIconWithBodySmallSizeMd,
                    .sizeIconWithBodySmallSizeLg:
                return .bodyDefaultSmall
            case .sizeIconWithLabelXlargeSizeSm,
                    .sizeIconWithLabelXlargeSizeMd,
                    .sizeIconWithLabelXlargeSizeLg:
                return .labelDefaultXLarge
            case .sizeIconWithLabelLargeSizeXs,
                    .sizeIconWithLabelLargeSizeSm,
                    .sizeIconWithLabelLargeSizeMd,
                    .sizeIconWithLabelLargeSizeLg,
                    .sizeIconWithLabelLargeSizeXl:
                return .labelDefaultLarge
            case .sizeIconWithLabelMediumSizeXs,
                    .sizeIconWithLabelMediumSizeSm,
                    .sizeIconWithLabelMediumSizeMd,
                    .sizeIconWithLabelMediumSizeLg:
                return .labelDefaultMedium
            case .sizeIconWithLabelSmallSizeXs,
                    .sizeIconWithLabelSmallSizeSm,
                    .sizeIconWithLabelSmallSizeMd,
                    .sizeIconWithLabelSmallSizeLg:
                return .labelDefaultSmall
            }
        }

        var sizeDescription: String {
            switch self {
            case .sizeIconWithHeadingXlargeSizeSm,
                    .sizeIconWithHeadingLargeSizeSm,
                    .sizeIconWithHeadingMediumSizeSm,
                    .sizeIconWithHeadingSmallSizeSm,
                    .sizeIconWithBodyLargeSizeSm,
                    .sizeIconWithBodyMediumSizeSm,
                    .sizeIconWithBodySmallSizeSm,
                    .sizeIconWithLabelXlargeSizeSm,
                    .sizeIconWithLabelLargeSizeSm,
                    .sizeIconWithLabelMediumSizeSm,
                    .sizeIconWithLabelSmallSizeSm:
                "Size Small"
            case .sizeIconWithHeadingXlargeSizeMd,
                    .sizeIconWithHeadingLargeSizeMd,
                    .sizeIconWithHeadingMediumSizeMd,
                    .sizeIconWithHeadingSmallSizeMd,
                    .sizeIconWithBodyLargeSizeMd,
                    .sizeIconWithBodyMediumSizeMd,
                    .sizeIconWithBodySmallSizeMd,
                    .sizeIconWithLabelXlargeSizeMd,
                    .sizeIconWithLabelLargeSizeMd,
                    .sizeIconWithLabelMediumSizeMd,
                    .sizeIconWithLabelSmallSizeMd:
                "Size Medium"
            case .sizeIconWithHeadingXlargeSizeLg,
                    .sizeIconWithHeadingLargeSizeLg,
                    .sizeIconWithHeadingMediumSizeLg,
                    .sizeIconWithHeadingSmallSizeLg,
                    .sizeIconWithBodyLargeSizeLg,
                    .sizeIconWithBodyMediumSizeLg,
                    .sizeIconWithBodySmallSizeLg,
                    .sizeIconWithLabelXlargeSizeLg,
                    .sizeIconWithLabelLargeSizeLg,
                    .sizeIconWithLabelMediumSizeLg,
                    .sizeIconWithLabelSmallSizeLg:
                "Size Large"
            case .sizeIconWithLabelSmallSizeXs,
                    .sizeIconWithLabelMediumSizeXs,
                    .sizeIconWithLabelLargeSizeXs:
                "Extra Small"
            case .sizeIconWithLabelLargeSizeXl:
                "Extra Large"
            }
        }
    }

    /// Used to illustrate icon sizes grouped by
    /// typography category
    struct SizeIconByTypographyCategory {
        let namedFont: NamedFont
        var sizes: [NamedSize.IconWithTypography]
    }

    /// Provides all sizes grouped by typpgraphy categories
    static var iconSizeByTypographyCategories: [NamedSize.SizeIconByTypographyCategory] {
        var lastCategory: NamedSize.SizeIconByTypographyCategory?

        return NamedSize.IconWithTypography.allCases.reduce(into: []) { partialResult, namedSize in
            if namedSize.namedFont == lastCategory?.namedFont {
                lastCategory?.sizes.append(namedSize)
            } else {
                if let category = lastCategory {
                    partialResult.append(category)
                }

                lastCategory = SizeIconByTypographyCategory(namedFont: namedSize.namedFont, sizes: [namedSize])
            }
        }
    }
}
