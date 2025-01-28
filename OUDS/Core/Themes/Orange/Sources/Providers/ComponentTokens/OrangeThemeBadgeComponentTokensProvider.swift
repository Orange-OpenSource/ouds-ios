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

/// A class which wraps all **component  tokens of badge** for *badge* objects like `OUDSBadge`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBadgeComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// Custom themes can use subclass of ``OrangeThemeBadgeComponentTokensProvider`` and apply the provider they need.
/// It implements also the protocol `BadgeComponentTokens` so as to expose the component tokens for *badge* through any `OUDSTheme`.
/// *Badge* components tokens are defined with raw and semantic tokens of dimensions (`DimensionRawToken`),
/// and sizes (from `AllSizeSemanticTokensProvider`).
///
/// ```swift
///     // Define your own provider for badge component tokens
///     // by inheriting from existing provider
///     class CustomBadgeComponentTokensProvider: OrangeThemeBadgeComponentTokensProvider {
///
///         // Then override the badge component tokens you want.
///
///         override var badgeNotificationMinWidthL: DimensionRawToken { DimensionRawTokens.dimension100 }
///
///         override var badgeSizeM: SizeSemanticToken { DimensionRawTokens.dimension7xs }
///
///         // ...
///     }
///
///     // Or define your own provider from scratch
///     class CustomBadgeComponentTokensProvider: BadgeComponentTokens {
///
///         // And implement hundreds of tokens.
///         // You are allowed to give semantic tokens providers if you want to define values.
///     }
/// ```
///
/// Then, you can give this `CustomBadgeComponentTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(tokensProviders: [ CustomBadgeComponentTokensProvider(), ... ])
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(tokensProviders: [ CustomBadgeComponentTokensProvider(), ... ])
/// ```
///
/// - Since: 0.10.0
open class OrangeThemeBadgeComponentTokensProvider: AllBadgeComponentTokensProvider {

    /// Provider of size semantic tokens to use for link sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Defines a provider of component tokens dedicated to `OUDSBadge`
    /// - Parameter sizes: Provider for size semantic tokens
    public init(sizes: AllSizeSemanticTokensProvider) {
        OL.debug("Init of OrangeThemeBadgeComponentTokensProvider")
        self.sizes = sizes
    }

    deinit { }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BadgeComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+BadgeComponentTokens.swift
    // This declaration of OrangeThemeBadgeComponentTokensProvider is here also to allow to write documentation.
}
