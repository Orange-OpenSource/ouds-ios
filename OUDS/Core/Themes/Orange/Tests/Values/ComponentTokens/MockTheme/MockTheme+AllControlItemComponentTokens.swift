//
// Software Name: OUDSThemesContract iOS
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

    override var sizeMinHeight: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeMaxWidth: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeMaxHeightAssetsContainer: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeIcon: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeErrorIcon: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeLoader: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var colorBgHover: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var colorBgPressed: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var colorBgLoading: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var colorBgFocus: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var colorContentLoader: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override var spaceColumnGap: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spaceRowGap: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingInline: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingInlineErrorIcon: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var borderRadius: BorderRadiusSemanticToken { Self.mockThemeControlItemBorderRadius }
    override var borderRadiusItemOnly: BorderRadiusSemanticToken { Self.mockThemeControlItemBorderRadius }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
