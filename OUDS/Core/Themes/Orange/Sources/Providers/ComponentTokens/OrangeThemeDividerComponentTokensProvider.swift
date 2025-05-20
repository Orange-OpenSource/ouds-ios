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
import OUDSTokensSemantic

// swiftlint:disable type_name

/// A class which wraps all **component  tokens of divider** for *divider* objects like `OUDSDivider`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllDividerComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeDividerComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `DividerComponentTokens` so as to expose the component tokens for *divider* through any `OUDSTheme`.
/// *Divider* components tokens are defined with raw and semantic tokens of borders (from `AllBorderSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for chip component tokens
///     // by inheriting from existing provider
///     class CustomDividerComponentTokensProvider: OrangeThemeDividerComponentTokensProvider {
///
///         // Then override the chip component tokens you want.
///
///         override var dividerBorderWidth: BorderWidthSemanticToken { borders.borderWidthmediumt }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomDividerComponentTokensProvider: ChipComponentTokens {
///
///         // And implement hunders of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomDividerComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(divider: CustomDividerComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(divider: CustomDividerComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeBorderSemanticTokensProvider for borders
///     let dividerComponentTokensProvider = OrangeThemeDividerComponentTokensProvider()
///
///     // Or use your own border semantic tokens providers
///     let dividerComponentTokensProvider = OrangeThemeDividerComponentTokensProvider(
///                                                 borders: CustomBorderSemanticTokensProvider())
/// ```
///
/// - Since: 0.13.0
open class OrangeThemeDividerComponentTokensProvider: AllDividerComponentTokensProvider {

    /// Provider of border semantic tokens to use for chip sizes
    public let borders: AllBorderSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSChip`
    /// - Parameter borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``)
    public init(borders: AllBorderSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeDividerComponentTokensProvider")
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
    }

    deinit {}

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ChipComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+ChipComponentTokens.swift
    // This declaration of OrangeThemeChipComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
