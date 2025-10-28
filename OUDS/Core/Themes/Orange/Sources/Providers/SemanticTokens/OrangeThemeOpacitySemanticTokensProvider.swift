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

/// A class which wraps all **opacity semantic tokens** and expose them.
/// This provider should be integrated as a `AllOpacitySemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own provider for opacity semantic tokens
///     class CustomOpacityTokensProvider: OrangeThemeOpacitySemanticTokensProvider {
///
///         // Then override the opacity semantic tokens you want, using the opacity raw tokens available
///
///         override var strong: OpacitySemanticToken {
///             OpacityRawTokens._920
///         }
/// }
/// ```
///
/// Then, you can give this `CustomOpacityTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(opacities: CustomOpacityTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(opacities: CustomOpacityTokensProvider())
/// ```
///
/// - Since: 0.8.0
open class OrangeThemeOpacitySemanticTokensProvider: AllOpacitySemanticTokensProvider {

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        OL.debug("Init of OrangeThemeOpacitySemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeOpacitySemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of OpacitySemanticTokensProvider is not here but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+OpacitySemanticTokens.swift
    // This declaration of OrangeThemeOpacitySemanticTokensProvider is here to allow to write documentation.
}
