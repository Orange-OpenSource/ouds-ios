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

/// A class which wraps all **elevation semantic tokens**, *multiple*, *composite* or not, and expose them.
/// This wrapper should be integrated as a ``AllElevationSemanticTokens`` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own wrapper for elevation semantic tokens
///     class CustomElevationTokensProvider: OUDSElevationSemanticTokensProvider {
///
///         // Then override the elevation semantic tokens you want, using the elevation raw tokens available
///
///         override var elevationStickyEmphasized: ElevationCompositeSemanticToken {
///             ElevationCompositeSemanticToken(ElevationRawTokens.elevationBottom_4_600)
///         }
/// }
/// ```
///
/// Then, you can give this `CustomElevationTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(elevations: CustomElevationTokensProvider(),
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(elevations: CustomElevationTokensProvider())
/// ```
open class OUDSElevationSemanticTokensProvider {

    /// Intializes the wrapper
    public init() {
        OUDSLogger.debug("Init of OUDSElevationSemanticTokensProvider")
    }

    deinit{ }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ElevationSemanticTokens, ElevationCompositeSemanticTokens, ElevationMultipleSemanticTokens are not here
    // but in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+ElevationSemanticTokens.swift,
    // in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+ElevationCompositeSemanticTokens.swift,
    // and in OUDS/OUDSTheme/OUDSTheme+SemanticTokens/OUDSTheme+ElevationMultipleSemanticTokens.swift.
    // This declaration of OUDSElevationSemanticTokensProvider is here to allow to write documentation.
}
