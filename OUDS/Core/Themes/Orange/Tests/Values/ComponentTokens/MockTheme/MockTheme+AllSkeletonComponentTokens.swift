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

final class MockThemeSkeletonComponentTokenProvider: OrangeThemeSkeletonComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeSkeletonColor = MultipleColorSemanticTokens("#00FF00")

    override public init(colors: AllColorSemanticTokensProvider) {
        super.init(colors: colors)
    }

    // MARK: - Skeleton component tokens

    override public var skeletonColorBg: MultipleColorSemanticTokens { Self.mockThemeSkeletonColor }
    override public var skeletonColorGradientMiddle: MultipleColorSemanticTokens { Self.mockThemeSkeletonColor }
    override public var skeletonColorGradientStartEnd: MultipleColorSemanticTokens { Self.mockThemeSkeletonColor }
}

// swiftlint:enable required_deinit
