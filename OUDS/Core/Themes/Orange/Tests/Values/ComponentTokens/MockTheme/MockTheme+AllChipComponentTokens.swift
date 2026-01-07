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

import Foundation
import OUDSThemesContract
import OUDSThemesOrange
import OUDSTokensComponent
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit

final class MockThemeChipComponentTokenProvider: OrangeThemeChipComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeChipSize: DimensionRawToken = 118
    static let mockThemeChipBorderRadius: BorderRadiusSemanticToken = 42
    static let mockThemeChipBorderWidth: BorderWidthSemanticToken = 42
    static let mockThemeChipSpace: DimensionRawToken = 218
    static let mockThemeChipColor = MultipleColorSemanticToken("#00FF00")

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?,
                  dimensions: AllDimensionSemanticTokensProvider? = OrangeThemeDimensionSemanticTokensProvider())
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
    }

    // MARK: - Chip component tokens

    override var sizeIcon: SizeSemanticToken { Self.mockThemeChipSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeChipSize }
    override var sizeMinHeight: SizeSemanticToken { Self.mockThemeChipSize }
    override var sizeMinHeightInteractiveArea: SizeSemanticToken { Self.mockThemeChipSize }

    override var borderWidthSelected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override var borderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override var borderWidthUnselectedInteraction: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override var borderRadius: BorderRadiusSemanticToken { Self.mockThemeChipBorderWidth }

    override var badgeColorBg: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var badgeColorContent: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgSelectedHover: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgSelectedPressed: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgSelectedDisabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgSelectedFocus: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgUnselectedEnabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgUnselectedHover: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgUnselectedPressed: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgUnselectedDisabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBgUnselectedFocus: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentSelectedTickEnabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentSelectedHover: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentSelectedPressed: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentSelectedDisabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentSelectedFocus: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentUnselectedEnabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentUnselectedHover: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentUnselectedPressed: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorContentUnselectedDisabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderSelectedHover: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderSelectedPressed: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderSelectedDisabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderSelectedFocus: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderUnselectedEnabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderUnselectedHover: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderUnselectedPressed: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderUnselectedDisabled: MultipleColorSemanticToken { Self.mockThemeChipColor }
    override var colorBorderUnselectedFocus: MultipleColorSemanticToken { Self.mockThemeChipColor }

    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingBlockIconOnly: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingInlineIcon: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingInlineIconNone: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingInlineChevronEnd: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingInlineBadgeStart: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spaceColumnGapIcon: SpaceSemanticToken { Self.mockThemeChipSpace }
}

// swiftlint:enable required_deinit
