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

/// A class which wraps all **component  tokens of input text** for *input text* objects like `OUDSInputText`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllInputTextComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeInputTextComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `InouttextComponentTokens` so as to expose the component tokens for *input text* through any `OUDSTheme`.
/// *Inout text* components tokens are defined with raw and semantic tokens of sizes (from `AllSizeSemanticTokensProvider`), colors (`AllColorSemanticTokensProvider`)
/// and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for input text component tokens
///     // by inheriting from existing provider
///     class CustomInpuTextComponentTokensProvider: OrangeThemeInpuTextComponentTokensProvider {
///
///         // Then override the input text component tokens you want.
///
///         override var inputTextSizeMaxWidth: SizeSemanticToken { DimensionRawTokens.dimension3000 }
///
///         override var inputTextSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingInlineSm }
///
///         override  var inputTextColorBgDefaultFocus: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomInpuTextComponentTokensProvider: InpuTextComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomInpuTextComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(inputText: CustomInputTextComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(inputText: CustomInputTextComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let inputTextComponentTokensProvider = OrangeThemeInputTextComponentTokensProvider()
///
///     // Or use your own size, color and space semantic tokens providers (or only some)
///     let inputTextComponentTokensProvider = OrangeThemeInputTextComponentTokensProvider(
///                                                 sizes: CustomSizeSemanticTokensProvider(),
///                                                 colors: CustomColorSemanticTokensProvider(),
///                                                 space: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeInputTextComponentTokensProvider: AllInputTextComponentTokensProvider {

    /// Provider of size semantic tokens to use for button sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of color semantic tokens to use for button colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for button spaces
    public let spaces: AllSpaceSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSButton`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeInputTextComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeInputTextComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of InputTextComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+InputTextComponentTokens.swift
    // This declaration of OrangeThemeInputTextComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
