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

/// A class which wraps all **component tokens of card** for card components.
/// Contains a reference to a semantic tokens provider to define the component tokens.
/// This provider implements `AllCardComponentTokensProvider` and `CardComponentTokens` to expose card tokens through `OUDSTheme`.
/// Custom themes can subclass ``OrangeThemeCardComponentTokensProvider`` to override individual tokens.
/// Card component tokens are defined with border semantic tokens from `AllBorderSemanticTokensProvider`.
///
/// ```swift
/// class CustomCardComponentTokensProvider: OrangeThemeCardComponentTokensProvider {
///     override var borderRadiusRounded: BorderRadiusSemanticToken { borders.radiusDefault }
/// }
/// ```
///
/// You can also supply your own border semantic tokens provider:
///
/// ```swift
/// let cardComponentTokensProvider = OrangeThemeCardComponentTokensProvider(
///     borders: CustomBorderSemanticTokensProvider())
/// ```
///
/// - Since: 3.3.0
open class OrangeThemeCardComponentTokensProvider: AllCardComponentTokensProvider {

    /// Provider of border semantic tokens to use for card borders
    public let borders: AllBorderSemanticTokensProvider

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Defines a provider of component tokens dedicated to card components.
    /// - Parameter borders: Provider for border semantic tokens. If nil, a default one will be used (``OrangeThemeBorderSemanticTokensProvider``).
    public init(borders: AllBorderSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeCardComponentTokensProvider")
        self.borders = (borders ?? OrangeThemeBorderSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeCardComponentTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implementation of CardComponentTokens is not here but in Core/Themes/Orange/Values/ComponentTokens/OrangeTheme+CardComponentTokens.swift
    // This declaration of OrangeThemeCardComponentTokensProvider is here also to allow to write documentation.
}
