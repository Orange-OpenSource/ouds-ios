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

// swiftlint:disable required_deinit type_name

final class MockThemeContainedTabsComponentTokenProvider: OrangeThemeContainedTabsComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeContainedTabsBorderRadius: BorderRadiusSemanticToken = 42
    static let mockThemeContainedTabsBorderWidth: BorderWidthSemanticToken = 42
    static let mockThemeContainedTabsColor = MultipleColorSemanticToken(light: "#00FF00FF", dark: "#FF00FFFF")
    static let mockThemeContainedTabsDivider = false
    static let mockThemeContainedTabsOpacity: OpacitySemanticToken = 0.42
    static let mockThemeContainedTabsSize: SizeSemanticToken = 118
    static let mockThemeContainedTabsSpace: SpaceSemanticToken = 218

    override init(borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  opacities: AllOpacitySemanticTokensProvider?,
                  dimensions: AllDimensionSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(borders: borders, colors: colors, opacities: opacities, dimensions: dimensions, spaces: spaces)
    }

    // MARK: - Borders

    override var borderRadiusBottomTab: BorderRadiusSemanticToken { Self.mockThemeContainedTabsBorderRadius }
    override var borderRadiusTopTab: BorderRadiusSemanticToken { Self.mockThemeContainedTabsBorderRadius }
    override var borderWidthDivider: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }
    override var borderWidthSelectedBottomTab: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }
    override var borderWidthSelectedStartEndTab: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }
    override var borderWidthSelectedTopTab: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }
    override var borderWidthUnselectedBottomTab: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }
    override var borderWidthUnselectedBottomTabInteraction: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }
    override var borderWidthUnselectedStartEndInteraction: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }
    override var borderWidthUnselectedStartEndTab: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }
    override var borderWidthUnselectedTopTab: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }
    override var borderWidthUnselectedTopTabInteraction: BorderWidthSemanticToken { Self.mockThemeContainedTabsBorderWidth }

    // MARK: - Colors

    override var colorBgSelectedDisabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBgSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBgSelectedFocus: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBgSelectedHover: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBgSelectedPressed: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBgUnselectedDisabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBgUnselectedEnabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBgUnselectedFocus: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBgUnselectedHover: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBgUnselectedPressed: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderDividerDisabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderDividerEnabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderSelectedDisabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderSelectedFocus: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderSelectedHover: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderSelectedPressed: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderUnselectedDisabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderUnselectedEnabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderUnselectedFocus: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderUnselectedHover: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorBorderUnselectedPressed: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentSelectedDisabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentSelectedFocus: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentSelectedHover: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentSelectedPressed: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentUnselectedDisabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentUnselectedEnabled: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentUnselectedFocus: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentUnselectedHover: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }
    override var colorContentUnselectedPressed: MultipleColorSemanticToken { Self.mockThemeContainedTabsColor }

    // MARK: - Divider

    override var divider: Bool { Self.mockThemeContainedTabsDivider }

    // MARK: - Opacities

    override var opacityCurrentIndicatorSelected: OpacitySemanticToken { Self.mockThemeContainedTabsOpacity }
    override var opacityCurrentIndicatorUnselected: OpacitySemanticToken { Self.mockThemeContainedTabsOpacity }

    // MARK: - Sizes

    override var sizeHeightCurrentIndicator: SizeSemanticToken { Self.mockThemeContainedTabsSize }

    // MARK: - Spaces

    override var spaceColumnGapTabsContainerMobile: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spaceColumnGapTabsContainerTablet: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spacePaddingBlockBottomStickyContainer: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spacePaddingBlockTab: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spacePaddingBlockTopStickyContainer: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spacePaddingInlineTabIconStartMobile: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spacePaddingInlineTabIconStartTablet: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spacePaddingInlineTabIndicatorEndMobile: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spacePaddingInlineTabIndicatorEndTablet: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spacePaddingInlineTabMobile: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spacePaddingInlineTabTablet: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
    override var spaceRowGapCurrentIndicator: SpaceSemanticToken { Self.mockThemeContainedTabsSpace }
}

// swiftlint:enable required_deinit type_name
