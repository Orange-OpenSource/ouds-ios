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

    override public init(sizes: AllSizeSemanticTokensProvider,
                         spaces: AllSpaceSemanticTokensProvider) {
        super.init(sizes: sizes, spaces: spaces)
    }

    // MARK: - Breadcrumb component tokens

    override public var breadcrumbSpaceColumnGapArrow: SizeSemanticToken { Self.mockThemeBreadcrumbSpace }
    override public var breadcrumbSpaceColumnGapLevels: SizeSemanticToken { Self.mockThemeBreadcrumbSpace }
    override public var breadcrumbSizeArrow: SizeSemanticToken { Self.mockThemeBreadcrumbSize }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
