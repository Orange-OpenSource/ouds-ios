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

/// A class which wraps all **effect semantic tokens**, and expose them.
/// This provider should be integrated as a `AllEffectSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// To use it:
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(effects: OrangeThemeEffectSemanticTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
/// ```swift
///     OrangeTheme(effects: OrangeThemeEffectSemanticTokensProvider())
/// ```
///
/// - Since: 0.22.0
open class OrangeThemeEffectSemanticTokensProvider: AllEffectSemanticTokensProvider {

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    public init() {
        OL.debug("Init of OrangeThemeEffectSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeEffectSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of EffectSemanticTokens is not here
    // but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+EffectSemanticTokens.swift
    // This declaration of OrangeThemeEffectSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
