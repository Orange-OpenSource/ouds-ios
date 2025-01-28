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
    static let mockThemeCheckRadioDimension: DimensionRawToken = 1_312

    override public init(sizes: AllSizeSemanticTokensProvider) {
        super.init(sizes: sizes)
    }

    // MARK: - Badge component tokens

    override public var checkRadioSize: SizeSemanticToken { Self.mockThemeCheckRadioSize }
    override public var checkRadioSizeMinHeightSelectorOnly: DimensionRawToken { Self.mockThemeCheckRadioDimension }
    override public var checkRadioSizeMinWidthSelectorOnly: DimensionRawToken { Self.mockThemeCheckRadioDimension }
    override public var checkRadioSizeMaxHeightSelectorOnly: DimensionRawToken { Self.mockThemeCheckRadioDimension }
    override public var checkRadioSizeMaxHeightAssetsContainer: DimensionRawToken { Self.mockThemeCheckRadioDimension }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
