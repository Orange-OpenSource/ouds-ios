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

/// A class which wraps all **component  tokens of text area** objects like `OUDSTextArea`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTextAreaComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeTextAreaComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `TextAreaComponentTokens` so as to expose the component tokens for *text area* through any `OUDSTheme`.
/// *Text area* components tokens are defined with semantic tokens of sizes (from `AllSizeSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for text area component tokens
///     // by inheriting from existing provider
///     class CustomTextAreaComponentTokensProvider: OrangeThemeTextAreaComponentTokensProvider {
///
///         // Then override the text area component tokens you want.
///
///         override var textAreaSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingBlockXl }
///         override var textAreaSizeMinHeightInput: SizeSemanticToken { DimensionRawTokens._1000 }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomTextAreaComponentTokensProvider: TextAreaComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to use semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomTextAreaComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(textArea: CustomTextAreaComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(textArea: CustomTextAreaComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     let textAreaComponentTokensProvider = OrangeThemeTextAreaComponentTokensProvider()
///
///     // Or use your own space and size semantic tokens providers (or only some)
///     let textAreaComponentTokensProvider = OrangeThemeTextAreaComponentTokensProvider(
///                                             sizes: CustomSizeSemanticTokensProvider(),
///                                             spaces: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 0.17.0
open class OrangeThemeTextAreaComponentTokensProvider: AllTextAreaComponentTokensProvider {

    /// Provider of sizez semantic tokens to use for text area borders
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for text area colors
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSTextArea`
    /// - Parameters:
    ///    - sizes: Provider for sizes semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for spaces semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeTextAreaComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeTextAreaComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TextAreaComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+TextAreaComponentTokens.swift
    // This declaration of OrangeThemeTextAreaComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
