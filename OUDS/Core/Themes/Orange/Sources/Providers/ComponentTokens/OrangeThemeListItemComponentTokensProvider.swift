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

/// A class which wraps all **component  tokens of list item** for *list item* objects like `OUDSListItem`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllListItemComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeListItemComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `ListItemComponentTokens` so as to expose the component tokens for *list item* through any `OUDSTheme`.
/// *List item* components tokens are defined with semantic tokens of colors (from `AllColorSemanticTokensProvider`),
/// spaces (from `AllSpacesSemanticTokensProvider`) and sizes (`AllSizeSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for list item component tokens
///     // by inheriting from existing provider
///     class CustomListItemComponentTokensProvider: OrangeThemeListItemComponentTokensProvider {
///
///         // Then override the list item component tokens you want.
///
///         override var listItemSizeMinHeight: SizeSemanticToken { DimensionRawTokens.dimension450 }
///
///         override var listItemColorBgFocus: MultipleColorSemanticTokens { colors.colorDecorativeNeutralDefault }
///
///         override var listItemSpaceInset: SpaceSemanticToken { spaces.spaceRowGapNone }
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomListItemComponentTokensProvider: ListItemComponentTokens {
///
///         // And implement maybe hundreds of tokens.
///         // You are allowed to use semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomListItemComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(listItem: CustomListItemComponentTokensProvider())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(listItem: CustomListItemComponentTokensProvider())
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeListItemComponentTokensProvider: AllListItemComponentTokensProvider {

    /// Provider of size semantic tokens to use for button sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of color semantic tokens to use for button colors
    public let colors: AllColorSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for button spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSListItem`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens
    ///    - colors: Provider for color semantic tokens
    ///    - spaces: Provider for space semantic tokens
    public init(sizes: AllSizeSemanticTokensProvider,
                colors: AllColorSemanticTokensProvider,
                spaces: AllSpaceSemanticTokensProvider) {
        OL.debug("Init of OrangeThemeListItemComponentTokensProvider")
        self.sizes = sizes
        self.colors = colors
        self.spaces = spaces
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ListItemComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+ListItemComponentTokens.swift
    // This declaration of OrangeThemeListItemComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
