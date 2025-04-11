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

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?) {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - ControlItem component tokens

    override public var controlItemSizeMinHeight: SizeSemanticToken { Self.mockThemeControlItemSize }
    override public var controlItemSizeMinWidth: SizeSemanticToken { Self.mockThemeControlItemSize }
    override public var controlItemSizeMaxHeightAssetsContainer: SizeSemanticToken { Self.mockThemeControlItemSize }
    override public var controlItemSizeIcon: SizeSemanticToken { Self.mockThemeControlItemSize }
    override public var controlItemSizeListItemSizeMinHeightText: SizeSemanticToken { Self.mockThemeControlItemSize }
    override public var controlItemSizeLoader: SizeSemanticToken { Self.mockThemeControlItemSize }
    override public var controlItemColorBgHover: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override public var controlItemColorBgPressed: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override public var controlItemColorBgLoading: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override public var controlItemColorBgFocus: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override public var controlItemColorContentLoader: MultipleColorSemanticTokens { Self.mockThemeControlItemColor }
    override public var controlItemSpaceColumnGap: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override public var controlItemSpaceRowGap: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override public var controlItemSpaceInset: SpaceSemanticToken { Self.mockThemeControlItemSpace }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
