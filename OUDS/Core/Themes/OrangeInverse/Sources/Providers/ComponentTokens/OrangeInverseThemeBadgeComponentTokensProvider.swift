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

/// A class which wraps all **component  tokens of badge** for *badge* objects like `OUDSBadge`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllBadgeComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `BadgeComponentTokens` so as to expose the component tokens for *badge* through any `OUDSTheme`.
/// *Badge* components tokens are defined with raw and semantic tokens of dimensions (`DimensionRawToken`),
/// dimensions (`AllDimensionSemanticTokensProvider`) and sizes (from `AllSizeSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class OrangeInverseThemeBadgeComponentTokensProvider: AllBadgeComponentTokensProvider {

    /// Provider of size semantic tokens to use for badge sizes
    public let sizes: AllSizeSemanticTokensProvider

    /// Provider of spaces semantic tokens to use for badge spaces
    public let spaces: AllSpaceSemanticTokensProvider

    /// Provider of dimension semantic tokens to use for spaces as the Swift package exposes "closed" tokens of Figma
    public let dimensions: AllDimensionSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSBadge`
    /// - Parameters:
    ///    - sizes: Provider for size semantic tokens, if nil, a default one will be used (``OrangeInverseThemeSizeSemanticTokensProvider``)
    ///    - spaces: Provider for space semantic tokens, if nil, a default one will be used (``OrangeInverseThemeSpaceSemanticTokensProvider``)
    ///    - dimensions: Provider for dimension semantic tokens, if nil, default one will be used ( ``OrangeInverseThemeDimensionSemanticTokensProvider``)
    public init(sizes: AllSizeSemanticTokensProvider? = nil,
                spaces: AllSpaceSemanticTokensProvider? = nil,
                dimensions: AllDimensionSemanticTokensProvider? = nil)
    {
        OL.debug("Init of OrangeInverseThemeBadgeComponentTokensProvider")
        self.sizes = (sizes ?? OrangeInverseThemeSizeSemanticTokensProvider())
        self.spaces = (spaces ?? OrangeInverseThemeSpaceSemanticTokensProvider())
        self.dimensions = (dimensions ?? OrangeInverseThemeDimensionSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeInverseThemeBadgeComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of BadgeComponentTokens is not here but in Core/Themes/OrangeInverse/Values/ComponentTokens/OrangeInverseTheme+BadgeComponentTokens.swift
    // This declaration of OrangeInverseThemeBadgeComponentTokensProvider is here also to allow to write documentation.
}

// swiftlint:enable type_name
