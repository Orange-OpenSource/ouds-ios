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

final class MockThemeSelectInputComponentTokenProvider: OrangeThemeSelectInputComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeSelectInputSize: DimensionRawToken = 118

    override public init(dimensions: AllDimensionSemanticTokensProvider?) {
        super.init(dimensions: dimensions)
    }

    // MARK: - Select Input component tokens

    override public var selectInputSizeMinWidth: SizeSemanticToken { Self.mockThemeSelectInputSize }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
