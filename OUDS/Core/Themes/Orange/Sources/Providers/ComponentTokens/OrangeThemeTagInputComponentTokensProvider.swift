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

/// A class which wraps all **component  tokens of tag input** objects like `OUDSTagInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTagInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeTagInputComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `TagInputComponentTokens` so as to expose the component tokens for *tag inputs* through any `OUDSTheme`.
/// *Tag inputs* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`),
/// and borders (from `AllBorderSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for tag input component tokens
///     // by inheriting from existing provider
///     class CustomTagInputComponentTokensProvider: OrangeThemeTagInputComponentTokensProvider {
///
///         // Then override the tag component tokens you want.
///
///         override var tagInputBorderRadius: BorderRadiusSemanticToken  { borders.borderRadiusNone }
///
///         override var tagInputColorBgPressed: MultipleColorSemanticTokens { colors.colorActionPressed }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomTagInputComponentTokensProvider: TagInputComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to use semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomTagInputComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(tagInput: CustomTagInputComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(tagInput: CustomTagInputComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     // - OrangeThemColorSemanticTokensProvider for colors
///     let tagInputComponentTokensProvider = OrangeThemeTagInputComponentTokensProvider()
///
///     // Or use your own space, size and border semantic tokens providers (or only some)
///     let tagInputComponentTokensProvider = OrangeThemeTagInputComponentTokensProvider(
///                                             borders: CustomBorderSemanticTokensProvider(),
///                                             colors: CustomColorSemanticTokensProvider())
/// ```
///
/// - Since: 0.17.0
open class OrangeThemeTagInputComponentTokensProvider: AllTagInputComponentTokensProvider {

    /// Provider of border semantic tokens to use for tag input borders
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of space semantic tokens to use for tag input colors
    public let colors: AllColorSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSTagInput`
    /// - Parameters:
    ///    - borders: Provider for borders semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    public init(borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeTagInputComponentTokensProvider")
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeTagInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TagInputComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+TagInputComponentTokens.swift
    // This declaration of OrangeThemeTagInputComponentTokensProvider is here also to allow to write documentation.
}
