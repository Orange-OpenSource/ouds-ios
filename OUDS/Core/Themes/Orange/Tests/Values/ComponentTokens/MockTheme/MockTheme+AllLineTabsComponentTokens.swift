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
import OUDSTokensSemantic

// swiftlint:disable required_deinit

final class MockThemeLineTabsComponentTokenProvider: OrangeThemeLineTabsComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeLineTabsBorderRadius: BorderRadiusSemanticToken = 42
    static let mockThemeLineTabsColor = MultipleColorSemanticToken(light: "#00FF00FF", dark: "#FF00FFFF")
    static let mockThemeLineTabsOpacity: OpacitySemanticToken = 0.42
    static let mockThemeLineTabsSize: SizeSemanticToken = 118
    static let mockThemeLineTabsSpace: SpaceSemanticToken = 218

    override init(borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  opacities: AllOpacitySemanticTokensProvider?,
                  dimensions: AllDimensionSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(borders: borders, colors: colors, opacities: opacities, dimensions: dimensions, spaces: spaces)
    }

    // MARK: - Borders

    override var borderRadiusBottomCurrentIndicator: BorderRadiusSemanticToken { Self.mockThemeLineTabsBorderRadius }
    override var borderRadiusBottomTab: BorderRadiusSemanticToken { Self.mockThemeLineTabsBorderRadius }
    override var borderRadiusTopCurrentIndicator: BorderRadiusSemanticToken { Self.mockThemeLineTabsBorderRadius }
    override var borderRadiusTopTab: BorderRadiusSemanticToken { Self.mockThemeLineTabsBorderRadius }

    // MARK: - Colors

    override var colorBgSelectedDisabled: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorBgSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorBgSelectedFocus: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorBgSelectedHover: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorBgSelectedPressed: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorBgUnselectedFocus: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorBgUnselectedHover: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorBgUnselectedPressed: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorContentSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorContentSelectedFocus: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorContentSelectedHover: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorContentSelectedPressed: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorContentUnselectedEnabled: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorContentUnselectedFocus: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorContentUnselectedHover: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }
    override var colorContentUnselectedPressed: MultipleColorSemanticToken { Self.mockThemeLineTabsColor }

    // MARK: - Opacities

    override var opacityCurrentIndicatorUnselected: OpacitySemanticToken { Self.mockThemeLineTabsOpacity }

    // MARK: - Sizes

    override var sizeHeightCurrentIndicator: SizeSemanticToken { Self.mockThemeLineTabsSize }

    // MARK: - Spaces

    override var spaceColumnGapTabsContainerJustified: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spaceColumnGapTabsContainerLeftAlignedMobile: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spaceColumnGapTabsContainerLeftAlignedTablet: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingBlockTab: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingBlockTopStickyContainer: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingInlineTabHorizontalIconStartMobile: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingInlineTabHorizontalIconStartTablet: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingInlineTabHorizontalIndicatorEndMobile: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingInlineTabHorizontalIndicatorEndTablet: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingInlineTabHorizontalMobile: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingInlineTabHorizontalTablet: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingInlineTabVerticalMobile: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spacePaddingInlineTabVerticalTablet: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
    override var spaceRowGapCurrentIndicator: SpaceSemanticToken { Self.mockThemeLineTabsSpace }
}

// swiftlint:enable required_deinit
