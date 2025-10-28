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

/// A class which wraps all **component  tokens of pin code input** objects like `OUDSPinCodeInput`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllPinCodeInputComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemePinCodeInputComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `PinceCodeInputComponentTokens` so as to expose the component tokens for *pin code input* through any `OUDSTheme`.
/// *Pin code input* components tokens are defined with raw and semantic tokens of _s (from `AllDimensionSemanticTokensProvider`),
/// and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for pin code input component tokens
///     // by inheriting from existing provider
///     class CustomPinCodeInputComponentTokensProvider: OrangeThemePinCodeInputComponentTokensProvider {
///
///         // Then override the input text component tokens you want.
///
///         override var inputTextSizeMaxWidth: SizeSemanticToken { DimensionRawTokens._3000 }
///
///         override var inputTextSpacePaddingBlock: SpaceSemanticToken { spaces.spacePaddingInlineSmall }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomPinCodeInputComponentTokensProvider: AllIPinCodeInputComponentTokensProvider {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomPinCodeInputComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(pinCodeInput: CustomPinCodeInputComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(pinCodeInput: CustomPinCodeInputComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     // - OrangeThemeDimensionSemanticTokensProvider for _s
///     let pintCodeInputComponentTokensProvider = OrangeThemePinCodeInputComponentTokensProvider()
///
///     // Or use your own _ and space semantic tokens providers (or only some)
///     let pintCodeInputComponentTokensProvider = OrangeThemePinCodeInputComponentTokensProvider(
///                                                 sizes: CustomSpaceSemanticTokensProvider(),
///                                                 _s: CustomDimensionSemanticTokensProvider())
/// ```
///
/// - Since: 0.17.0
open class OrangeThemePinCodeInputComponentTokensProvider: AllPinCodeInputComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for pin code input spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of _s semantic tokens to use for pin code input _s
    public let _s: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSPinCodeInput`
    /// - Parameters:
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    ///    - _s: Provider for _ semantic tokens. If nil, a default one will be used (``OrangeThemeDimensionSemanticTokensProvider``)
    public init(spaces: AllSpaceSemanticTokensProvider? = nil,
                _s: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeThemePinCodeInputComponentTokensProvider")
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
        self._s = (_s ?? OrangeThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemePinCodeInputComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of PinCodeInputComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+PinCodeInputComponentTokens.swift
    // This declaration of OrangeThemePinCodeInputComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
