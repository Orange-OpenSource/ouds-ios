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

final class MockThemeDividerComponentTokenProvider: OrangeThemeDividerComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeDividerBorderWidth: DimensionRawToken = 31_032_025

    override public init(borders: AllBorderSemanticTokensProvider?) {
        super.init(borders: borders)
    }

    // MARK: - Divider component tokens

    override public var dividerBorderWidth: BorderWidthSemanticToken { Self.mockThemeDividerBorderWidth }
}

// swiftlint:enable required_deinit
