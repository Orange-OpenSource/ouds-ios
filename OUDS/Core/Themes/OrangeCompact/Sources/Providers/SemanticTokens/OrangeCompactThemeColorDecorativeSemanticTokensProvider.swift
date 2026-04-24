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

import OUDSFoundations
import OUDSThemesContract

// swiftlint:disable type_name

/// A class which wraps all **color semantic tokens of decorative colors** and expose them.
/// This provider should be integrated as a `AllColorDecorativeSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// The tokens it exposes cannot be overriden as these colors are strongly related to the Orange brand.
///
/// If you think you need to overide some colors or have your own set of colors, start a new discussion (https://github.com/Orange-OpenSource/ouds-ios/discussions/categories/q-a).
///
/// - Since: 2.0.0
public final class OrangeCompactThemeColorDecorativeSemanticTokensProvider: AllColorDecorativeSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        OL.debug("Init of OrangeCompactThemeColorDecorativeSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeCompactThemeColorDecorativeSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of ColorDecorativeSemanticTokens is not here
    // but in Core/Themes/OrangeCompact/Values/SemanticTokens/OrangeTheme+ColorDecorativeSemanticTokens
    // This declaration of OrangeCompactThemeColorDecorativeSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
