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

/// A class which wraps all **opacity semantic tokens** and expose them.
/// This wrapper should be integrated as a ``AllOpacitySemanticTokens`` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own wrapper for opacity semantic tokens
///     class CustomOpacityTokensWrapper: OUDSOpacitySemanticTokensProvider {
///
///         // Then override the opacity semantic tokens you want, using the opacity raw tokens available
///
///         override var opacityStrong: OpacitySemanticToken {
///             OpacityRawTokens.opacity920
///         }
/// }
/// ```
///
/// Then, you can give this `CustomGridTokensWrapper` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(opacities: CustomOpacityTokensWrapper(),
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(opacities: CustomOpacityTokensWrapper())
/// ```
open class OUDSOpacitySemanticTokensProvider {

    /// Intializes the wrapper
    public init() {
        OUDSLogger.debug("Init of OUDSOpacitySemanticTokensProvider")
    }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BorderSemanticTokens is not here but in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+OpacitySemanticTokens.swift
    // This declaration of OUDSOpacitySemanticTokens is here to allow to write documentation.
}
