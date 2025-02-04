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
import OUDS
import OUDSThemesOrange
import OUDSTokensComponent
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit
// swiftlint:disable type_name

final class MockThemeCheckRadioComponentTokenProvider: OrangeThemeCheckRadioComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeCheckRadioSize: SizeSemanticToken = 118_218
    static let mockThemeCheckRadioBorderRadius: BorderRadiusSemanticToken = 1_312
    static let mockThemeCheckRadioBorderWidth: BorderRadiusSemanticToken = 666
    static let mockThemeCheckRadioOpacity: OpacitySemanticToken = 0.007
    static let mockThemeCheckRadioColor = MultipleColorSemanticTokens("#FF0000")

    override public init(sizes: AllSizeSemanticTokensProvider,
                         borders: AllBorderSemanticTokensProvider,
                         colors: AllColorSemanticTokensProvider,
                         opacities: AllOpacitySemanticTokensProvider) {
        super.init(sizes: sizes,
                   borders: borders,
                   colors: colors,
                   opacities: opacities)
    }

    // MARK: - Badge component tokens

    override public var checkRadioSizeMaxHeightAssetsContainer: SizeSemanticToken { Self.mockThemeCheckRadioSize }
    override public var checkRadioSizeMaxHeightSelectorOnly: SizeSemanticToken { Self.mockThemeCheckRadioSize }
    override public var checkRadioSizeMinHeightSelectorOnly: SizeSemanticToken { Self.mockThemeCheckRadioSize }
    override public var checkRadioSizeMinWidthSelectorOnly: SizeSemanticToken { Self.mockThemeCheckRadioSize }
    override public var checkRadioSizeCheckInnerAsset: SizeSemanticToken { Self.mockThemeCheckRadioSize }
    override public var checkRadioSizeRadioInnerCircle: SizeSemanticToken { Self.mockThemeCheckRadioSize }
    override public var checkRadioSizeSelector: SizeSemanticToken { Self.mockThemeCheckRadioSize }

    // MARK: - Borders

    override public var checkRadioBorderRadiusCheckbox: BorderRadiusSemanticToken { Self.mockThemeCheckRadioBorderRadius }
    override public var checkRadioBorderWidthSelected: BorderWidthSemanticToken { Self.mockThemeCheckRadioBorderWidth }
    override public var checkRadioBorderWidthSelectedFocus: BorderWidthSemanticToken { Self.mockThemeCheckRadioBorderWidth }
    override public var checkRadioBorderWidthSelectedHover: BorderWidthSemanticToken { Self.mockThemeCheckRadioBorderWidth }
    override public var checkRadioBorderWidthSelectedPressed: BorderWidthSemanticToken { Self.mockThemeCheckRadioBorderWidth }
    override public var checkRadioBorderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeCheckRadioBorderWidth }
    override public var checkRadioBorderWidthUnselectedFocus: BorderWidthSemanticToken { Self.mockThemeCheckRadioBorderWidth }
    override public var checkRadioBorderWidthUnselectedHover: BorderWidthSemanticToken { Self.mockThemeCheckRadioBorderWidth }
    override public var checkRadioBorderWidthUnselectedPressed: BorderWidthSemanticToken { Self.mockThemeCheckRadioBorderWidth }

    // MARK: - Opacities

    override public var checkRadioOpacitySelectorBgSelected: OpacitySemanticToken { Self.mockThemeCheckRadioOpacity }
    override public var checkRadioOpacitySelectorBgSelectedFocus: OpacitySemanticToken { Self.mockThemeCheckRadioOpacity }
    override public var checkRadioOpacitySelectorBgSelectedHover: OpacitySemanticToken { Self.mockThemeCheckRadioOpacity }
    override public var checkRadioOpacitySelectorBgSelectedPressed: OpacitySemanticToken { Self.mockThemeCheckRadioOpacity }
    override public var checkRadioOpacitySelectorBgUnselected: OpacitySemanticToken { Self.mockThemeCheckRadioOpacity }
    override public var checkRadioOpacitySelectorBgUnselectedFocus: OpacitySemanticToken { Self.mockThemeCheckRadioOpacity }
    override public var checkRadioOpacitySelectorBgUnselectedHover: OpacitySemanticToken { Self.mockThemeCheckRadioOpacity }
    override public var checkRadioOpacitySelectorBgUnselectedPressed: OpacitySemanticToken { Self.mockThemeCheckRadioOpacity }

    // MARK: - Colors

    override public var checkRadioColorContentAssetDisabled: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
    override public var checkRadioColorContentAssetEnabled: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
    override public var checkRadioColorContentAssetErrorEnabled: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
    override public var checkRadioColorContentAssetErrorFocus: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
    override public var checkRadioColorContentAssetErrorHover: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
    override public var checkRadioColorContentAssetErrorPressed: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
    override public var checkRadioColorContentAssetFocus: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
    override public var checkRadioColorContentAssetHover: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
    override public var checkRadioColorContentAssetPressed: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
    override public var checkRadioColorContentAssetSelected: MultipleColorSemanticTokens { Self.mockThemeCheckRadioColor }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
