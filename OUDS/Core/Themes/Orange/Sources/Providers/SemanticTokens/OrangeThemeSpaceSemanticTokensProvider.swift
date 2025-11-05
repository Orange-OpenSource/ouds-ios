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

/// A class which wraps all **space semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllSpaceSemanticTokens` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Closed tokens of dimensions (`AllDimensionSemanticTokensProvider`) are used so as to keep consistancy beweetn Figma specifications and library for developers.
///
/// ```swift
///     // Define your own provider for space semantic tokens
///     class CustomSpaceTokensProvider: OrangeThemeSpaceSemanticTokensProvider {
///
///         // Then override the space semantic tokens you want, using the _ raw tokens available
///
///         override var fixedMedium: SpaceSemanticToken {
///             DimensionRawTokens._400
///         }
///
///         override var scaledSmall: MultipleSpaceSemanticTokens {
///             MultipleSpaceSemanticTokens(compact: fixed5xl, regular: fixed5xl)
///         }
/// }
/// ```
///
/// Then, you can give this `CustomSpaceTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(spaces: CustomSpaceTokensProvider(dimensions: CustomDimensionSemanticTokensProvider()))
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(spaces: CustomSpaceTokensProvider(dimensions: CustomDimensionSemanticTokensProvider()))
/// ```
///
/// - Since: 0.8.0
open class OrangeThemeSpaceSemanticTokensProvider: AllSpaceSemanticTokensProvider {

    /// Provider of _ semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    /// - Parameter dimensions: Provider for _ semantic tokens. If nil, a default one will be used (``OrangeThemeDimensionSemanticTokensProvider``)
    public init(dimensions: AllDimensionSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeSpaceSemanticTokensProvider")
        self.dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeSizeSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SpaceSemanticTokens and SpaceMultipleSemanticTokens are not here
    // but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+SpaceSemanticTokens.swift
    // and in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+SpaceMultipleSemanticTokens.swift
    // This declaration of OrangeThemeSpaceSemanticTokensProvider is here to allow to write documentation.
}
