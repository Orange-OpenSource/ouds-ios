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

/// A class which wraps all **component  tokens of badge** for *badge* objects like `OUDSBadge`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBadgeComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `BadgeComponentTokens` so as to expose the component tokens for *badge* through any `OUDSTheme`.
/// *Badge* components tokens are defined with semantic tokens of dimensions (`AllDimensionSemanticTokensProvider`)
/// and spaces (from `AllSpaceSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class SoshThemeBadgeComponentTokensProvider: AllBadgeComponentTokensProvider {

    /// Provider of spaces semantic tokens to use for badge spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimension semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSBadge`
    /// - Parameters:
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``SoshThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens, if nil, default one will be used ( ``SoshThemeDimensionSemanticTokensProvider``)
    public init(spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of SoshThemeBadgeComponentTokensProvider")
        self.spaces = (spaces ?? SoshThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? SoshThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeBadgeComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BadgeComponentTokens is not here but in Core/Themes/Sosh/Values/ComponentTokens/SoshTheme+BadgeComponentTokens.swift
    // This declaration of SoshThemeBadgeComponentTokensProvider is here also to allow to write documentation.
}
