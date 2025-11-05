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

import OUDSFoundations
import OUDSThemesContract

/// A class which wraps all **component  tokens of divider** for *divider* objects like `OUDSHorizontalDivider` and `OUDSVerticalDivider`.
/// Contains also references to semantic tokens providers so as to be able to use them to define the component tokens.
/// This provider should be integrated as a `AllDividerComponentTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
/// It implements also the protocol `DividerComponentTokens` so as to expose the component tokens for *divider* through any `OUDSTheme`.
/// *Divider* components tokens are defined with raw and semantic tokens of borders (from `AllBorderSemanticTokensProvider`).
///
/// - Since: 0.17.0
final class SoshThemeDividerComponentTokensProvider: AllDividerComponentTokensProvider {

    /// Provider of border semantic tokens to use for chip sizes
    let borders: AllBorderSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to `OUDSChip`
    /// - Parameter borders: Provider for border semantic tokens. If nil, a default one will be used (``SoshThemeBorderSemanticTokensProvider``)
    init(borders: AllBorderSemanticTokensProvider? = nil) {
        OL.debug("Init of SoshThemeDividerComponentTokensProvider")
        self.borders = (borders ?? SoshThemeBorderSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "SoshThemeDividerComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ChipComponentTokens is not here but in Core/Themes/Sosh/Values/ComponentTokens/SoshTheme+ChipComponentTokens.swift
    // This declaration of SoshThemeChipComponentTokensProvider is here also to allow to write documentation.
}
