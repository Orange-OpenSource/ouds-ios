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

/// A class which wraps all **grid semantic tokens** and expose them.
/// This provider should be integrated as a `AllGridSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own provider for grid semantic tokens
///     class CustomGridTokensProvider: OrangeThemeGridSemanticTokensProvider {
///
///         // Then override the grid semantic tokens you want, using the grid raw tokens available
///
///         override var gridExtraCompactColumnGap: GridSemanticToken {
///             GridRawTokens.columnGap200
///         }
///
///         override var gridCompactColumnGap: GridSemanticToken {
///             GridRawTokens.columnGap200
///         }
///
///         override var gridRegularColumnGap: GridSemanticToken {
///             GridRawTokens.columnGap200
///         }
/// }
/// ```
///
/// Then, you can give this `CustomGridTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(grids: CustomGridTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(grids: CustomGridTokensProvider())
/// ```
///
/// - Since: 0.8.0
open class OrangeThemeGridSemanticTokensProvider: AllGridSemanticTokensProvider {

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        OL.debug("Init of OrangeThemeGridSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeGridSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of GridSemanticTokens is not here but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+GridSemanticTokens.swift
    // This declaration of OrangeThemeGridSemanticTokensProvider is here to allow to write documentation.
}
