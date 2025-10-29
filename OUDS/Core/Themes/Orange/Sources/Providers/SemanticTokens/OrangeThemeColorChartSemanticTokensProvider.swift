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

import OUDS
import OUDSFoundations

// swiftlint:disable type_name

/// A class which wraps all **color semantic tokens of charts**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllColorChartSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// The tokens it exposes cannot be overriden as these colors are strongly related to the Orange brand.
///
/// If you think you need to overide some colors or have your own set of colors, start a new discussion (https://github.com/Orange-OpenSource/ouds-ios/discussions/categories/q-a).
///
/// - Since: 0.17.0
public final class OrangeThemeColorChartSemanticTokensProvider: AllColorChartSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        OL.debug("Init of OrangeThemeColorChartSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeColorChartSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ColorChartSemanticTokens and ColorChartMultipleSemanticTokens are not here
    // but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+ColorChartSemanticTokens
    // and in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+ColorChartMultipleSemanticTokens
    // This declaration of OrangeThemeColorChartSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
