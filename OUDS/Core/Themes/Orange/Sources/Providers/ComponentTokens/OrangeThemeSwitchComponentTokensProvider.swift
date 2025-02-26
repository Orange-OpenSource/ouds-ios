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

/// A class which wraps all **component  tokens of switch** for *switch / toggle* objects like `OUDSSwitch`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllSwitchComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeSwitchComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `SwitchComponentTokens` so as to expose the component tokens for *switch / toggle* through any `OUDSTheme`.
/// *Switch* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`),
/// spaces (from `AllSpacesSemanticTokensProvider`) and sizes (`AllSizeSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for switch component tokens
///     // by inheriting from existing provider
///     class CustomSwitchComponentTokensProvider: OrangeThemeSwitchComponentTokensProvider {
///
///         // Then override the switch component tokens you want.
///
///         override var switchColorCursor: MultipleColorSemanticTokens { colors.colorRepositoryPositiveDefault }
///
///         override var switchSpacePaddingInlineFalse: SpaceSemanticToken { spaces.spaceFixedShortest }
///
///         override var switchSize: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeXl }
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomSwitchComponentTokensProvider: SwitchComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to use semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomSwitchComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(switch: CustomSwitchComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(switch: CustomSwitchComponentTokensProvider())
/// ```
///
/// - Since: 0.9.0
open class OrangeThemeSwitchComponentTokensProvider: AllSwitchComponentTokensProvider {

    /// Provider of size semantic tokens to use for button sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of color semantic tokens to use for button colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for button spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSSwitch`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens
    ///    - colors: Provider for color semantic tokens
    ///    - spaces: Provider for space semantic tokens
    public init(sizes: AllSizeSemanticTokensProvider,
                colors: AllColorSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider) {
        OL.debug("Init of OrangeThemeSwitchComponentTokensProvider")
        self.sizes = sizes
        self.colors = colors
        self.spaces = spaces
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of SwitchComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+SwitchComponentTokens.swift
    // This declaration of OrangeThemeSwitchComponentTokensProvider is here also to allow to write documentation.
}
