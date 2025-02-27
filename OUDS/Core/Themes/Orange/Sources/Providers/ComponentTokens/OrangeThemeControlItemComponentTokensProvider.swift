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

/// A class which wraps all **component  tokens** for components with a *control item* layout like `OUDSSwitch`, `OUDSRadioButton` and `OUDSCheckboItem`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllControlItemComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeControlItemComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `ControlItemComponentTokens` so as to expose the component tokens for control-item-layout-basded components through any `OUDSTheme`.
/// Such components tokens are defined with raw and semantic tokens of sizes (from `SizeSemanticTokensProvider`),
/// colors (from `AllColorSemanticTokensProvider`)  and spaces (from `AllSpaceSemanticTokensProvider`)?
///
/// ```swift
///     // Define your own provider for control-item-layout-based component tokens
///     // by inheriting from existing provider
///     class CustomControlItemComponentTokensProvider: OrangeThemeControlItemComponentTokensProvider {
///
///         // Then override the control-item-layout-based component tokens you want.
///
///         override var controlItemSizeMinHeight: SizeSemanticToken { DimensionRawTokens.dimension500 }
///
///         override var controlItemColorBgFocus: MultipleColorSemanticTokens { colors.colorContentDefault }
///
///         override var controlItemSpaceRowGap: SpaceSemanticToken { spaces.spacePaddingInlineTall }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomControlItemComponentTokensProvider: ControlItemComponentTokens {
///
///         // And implement hundreds of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomControlItemComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(controlItem: CustomControlItemComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(controlItem: CustomControlItemComponentTokensProvider())
/// ```
///
/// It is also possible to use your own semantic tokens providers for this component tokens providers:
///
/// ```swift
///     // Uses by default here:
///     // - OrangeThemeSizeSemanticTokensProvider for sizes
///     // - OrangeThemeColorSemanticTokensProvider for colors
///     // - OrangeThemeSpaceSemanticTokensProvider for spaces
///     let controlItemComponentTokensProvider = OrangeThemeControlItemComponentTokensProvider()
///
///     // Or use your own size, color and space semantic tokens providers (or only some)
///     let controlItemComponentTokensProvider = OrangeThemeControlItemComponentTokensProvider(
///                                                 sizes: CustomSizeSemanticTokensProvider(),
///                                                 colors: CustomColorSemanticTokensProvider(),
///                                                 space: CustomSpaceSemanticTokensProvider())
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeControlItemComponentTokensProvider: AllControlItemComponentTokensProvider {

    /// Provider of size semantic tokens to use for control-item-layout-based sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of color semantic tokens to use for control-item-layout-based  colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for control-item-layout-based  spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to control-item-layout-based components.
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens. If nil, a default one will be used (``OrangeThemeSizeSemanticTokensProvider``)
    ///    - colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens. If nil, a default one will be used (``OrangeThemeSpaceSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider?,
                colors: AllColorSemanticTokensProvider?,
                spaces: AllSpaceSemanticTokensProvider?) {
        OL.debug("Init of OrangeThemeControlItemComponentTokensProvider")
        self.sizes = (sizes ?? OrangeThemeSizeSemanticTokensProvider())
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeThemeSpaceSemanticTokensProvider())
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ControlItemComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+ControlItemComponentTokens.swift
    // This declaration of OrangeThemeControlItemComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
