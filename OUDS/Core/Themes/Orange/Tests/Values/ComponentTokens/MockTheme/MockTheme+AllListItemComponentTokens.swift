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

final class MockThemeListItemComponentTokenProvider: OrangeThemeListItemComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeListItemSize: DimensionRawToken = 118
    static let mockThemeListItemSpace: DimensionRawToken = 218
    static let mockThemeListItemColor = MultipleColorSemanticTokens("#00FF00")

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - List item component tokens

    override public var listItemSizeMinHeight: SizeSemanticToken { Self.mockThemeListItemSize }
    override public var listItemSizeMinWidth: SizeSemanticToken { Self.mockThemeListItemSize }
    override public var listItemColorBgFocus: MultipleColorSemanticTokens { Self.mockThemeListItemColor }
    override public var listItemColorBgHover: MultipleColorSemanticTokens { Self.mockThemeListItemColor }
    override public var listItemColorBgLoading: MultipleColorSemanticTokens { Self.mockThemeListItemColor }
    override public var listItemColorBgPressed: MultipleColorSemanticTokens { Self.mockThemeListItemColor }
    override public var listItemColorContentLoader: MultipleColorSemanticTokens { Self.mockThemeListItemColor }
    override public var listItemSizeIcon: SizeSemanticToken { Self.mockThemeListItemSize }
    override public var listItemSizeLoader: SizeSemanticToken { Self.mockThemeListItemSize }
    override public var listItemSpaceColumnGap: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override public var listItemSpaceInset: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override public var listItemSpaceRowGap: SpaceSemanticToken { Self.mockThemeListItemSpace }
}

// swiftlint:enable required_deinit
