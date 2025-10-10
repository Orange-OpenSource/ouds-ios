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

final class MockThemeControlItemComponentTokenProvider: OrangeThemeControlItemComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeControlItemSize: DimensionRawToken = 118
    static let mockThemeControlItemSpace: DimensionRawToken = 218
    static let mockThemeControlItemColor = MultipleColorSemanticTokens("#00FF00")
    static let mockThemeControlItemBorderRadius: BorderRadiusRawToken = 444_719

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
    }

    // MARK: - ControlItem component tokens

    override var controlItemSizeMinHeight: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var controlItemSizeMinWidth: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var controlItemSizeMaxHeightAssetsContainer: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var controlItemSizeIcon: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var controlItemSizeLoader: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var controlItemColorBgHover: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var controlItemColorBgPressed: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var controlItemColorBgLoading: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var controlItemColorBgFocus: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var controlItemColorContentLoader: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var controlItemSpaceColumnGap: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var controlItemSpaceRowGap: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var controlItemSpaceInset: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var controlItemBorderRadius: BorderRadiusSemanticToken { Self.mockThemeControlItemBorderRadius }
    override var controlItemBorderRadiusItemOnly: BorderRadiusSemanticToken { Self.mockThemeControlItemBorderRadius }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
