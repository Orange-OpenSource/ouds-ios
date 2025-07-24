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

/// A class which wraps all **component  tokens of input text** for *input text* objects like `OUDSTextInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllTextInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeTextInputComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `TextInputComponentTokens` so as to expose the component tokens for *input text* through any `OUDSTheme`.
/// *Inout text* components tokens are defined with raw and semantic tokens of colors (`AllColorSemanticTokensProvider`),
/// borders (from `AllBorderSemanticTokensProvider`), spaces (from `AllSpaceSemanticTokensProvider`)
/// and  dimensions (from `AllDimensionSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for input text component tokens
///     // by inheriting from existing provider
///     class CustomTextInputComponentTokensProvider: OrangeThemeTextInputComponentTokensProvider {
///
///         // Then override the text input component tokens you want.
///
///         override var textInputSizeMaxWidth: SizeSemanticToken { DimensionRawTokens.dimension3000 }
///
///         override var textInputSpacePaddingBlockDefault: SpaceSemanticToken { spaces.spacePaddingInlineSm }
///
///         override var textInputColorBorderEnabled: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigher }
///
///         override var textInputBorderWidthDefault: BorderWidthSemanticToken { borders.borderWidthMedium}
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomTextInputComponentTokensProvider: TextInputComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomTextInputComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(textInput: CustomTextInputComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(textInput: CustomTextInputComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     // - OrangeThemeDimensionSemanticTokensProvider for dimensions
///     let inputTextComponentTokensProvider = OrangeThemeTextInputComponentTokensProvider()
///
///     // Or use your own size, border, color, space and dimension semantic tokens providers (or only some)
///     let inputTextComponentTokensProvider = OrangeThemeTextInputComponentTokensProvider(
///                                                 sizes: CustomSizeSemanticTokensProvider(),
///                                                 borders: CustomBorderSemanticTokensProvider(),
///                                                 colors: CustomColorSemanticTokensProvider(),
///                                                 space: CustomSpaceSemanticTokensProvider(),
///                                                 dimensions: CustomDimensionSemanticTokensProvider())
/// ```
///
/// - Since: 0.17.0
open class OrangeThemeTextInputComponentTokensProvider: AllTextInputComponentTokensProvider {

    /// Provider of sizes semantic tokens to use for text input sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of borders semantic tokens to use for text input colors
    public let borders: AllBorderSemanticTokensProvider

    /// Provider of color semantic tokens to use for text input colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for text input spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimensions semantic tokens to use for text input dimensions
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSTextInput`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens. If nil, a default one will be used (``OrangeThemeDimensionSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                borders: AllBorderSemanticTokensProvider? = nil,
                colors: AllColorSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemeTextInputComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeTextInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of TextInputComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+TextInputComponentTokens.swift
    // This declaration of OrangeThemeTextInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
