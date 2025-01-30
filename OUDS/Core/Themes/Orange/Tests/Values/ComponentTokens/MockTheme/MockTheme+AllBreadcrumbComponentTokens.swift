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
final class MockThemeBreadcrumbComponentTokenProvider: OrangeThemeBreadcrumbComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeBreadcrumbSize: DimensionRawToken = 118
    static let mockThemeBreadcrumbSpace: DimensionRawToken = 218
    static let mockThemeBreadcrumbColor = MultipleColorSemanticTokens("#00FF00")

    override public init(sizes: AllSizeSemanticTokensProvider,
                         colors: AllColorSemanticTokensProvider,
                         spaces: AllSpaceSemanticTokensProvider) {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - Breadcrumb component tokens

    override public var breadcrumbSizeMinHeightMedium: SizeSemanticToken { Self.mockThemeBreadcrumbSize }
    override public var breadcrumbSizeMinHeightSmall: SizeSemanticToken { Self.mockThemeBreadcrumbSize }
    override public var breadcrumbSizeMinWidthMedium: SizeSemanticToken { Self.mockThemeBreadcrumbSize }
    override public var breadcrumbSizeMinWidthSmall: SizeSemanticToken { Self.mockThemeBreadcrumbSize }
    override public var breadcrumbSizeIconMedium: SizeSemanticToken { Self.mockThemeBreadcrumbSize }
    override public var breadcrumbSizeIconSmall: SizeSemanticToken { Self.mockThemeBreadcrumbSize }
    override public var breadcrumbColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeBreadcrumbColor }
    override public var breadcrumbColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeBreadcrumbColor }
    override public var breadcrumbColorContentHover: MultipleColorSemanticTokens { Self.mockThemeBreadcrumbColor }
    override public var breadcrumbColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeBreadcrumbColor }
    override public var breadcrumbSpaceColumnGapArrowMedium: SpaceSemanticToken { Self.mockThemeBreadcrumbSpace }
    override public var breadcrumbSpaceColumnGapArrowSmall: SpaceSemanticToken { Self.mockThemeBreadcrumbSpace }
    override public var breadcrumbSpaceColumnGapLevelsMedium: SpaceSemanticToken { Self.mockThemeBreadcrumbSpace }
    override public var breadcrumbSpaceColumnGapLevelsSmall: SpaceSemanticToken { Self.mockThemeBreadcrumbSpace }
    override public var breadcrumbSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeBreadcrumbSpace }
    override public var breadcrumbSpacePaddingInline: SpaceSemanticToken { Self.mockThemeBreadcrumbSpace }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
