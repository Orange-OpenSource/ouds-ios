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

/// A class which wraps all **color mode semantic tokens**, *multiple* or not, and expose them.
/// This provider should be integrated as a `AllColorModeSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users. It helps users to override some of the tokens and assign them to an `OUDSTheme` implementation to use.
///
/// ```swift
///     // Define your own provider for color mode semantic tokens
///     class CustomColorModeTokensProviderr: OrangeThemeColorModeSemanticTokensProvider {
///
///         // Then override the color mode semantic tokens you want, using the color mode raw tokens available
///
///         override var onBrandSecondaryLight: ColorModeSemanticToken {
///              ColorModeRawTokens.light
///         }
///
///         override var onBrandSecondaryDark: ColorModeSemanticToken {
///              ColorModeRawTokens.dark
///         }
///
///         override var onStatusAccentEmphasized: MultipleColorModeSemanticTokens {
///             MultipleColorModeSemanticTokens(light: ColorModeRawTokens.dark, dark: ColorModeRawTokens.light)
///         }
/// }
/// ```
///
/// Then, you can give this `CustomColorTokensProvider` to your own theme implementation:
///
/// ```swift
/// class LocalTheme: OrangeTheme {
///
///     override init() {
///         super.init(colorModes: CustomColorModeTokensProviderr())
///     }
/// }
/// ```
///
/// or to an already existing theme for example:
///
/// ```swift
///     OrangeTheme(colorModes: CustomColorModeTokensProviderr())
/// ```
///
/// - Since: 0.13.0
open class OrangeThemeColorModeSemanticTokensProvider: AllColorModeSemanticTokensProvider {

    /// Provider of color semantic tokens to use for depending to some color modes
    public let colors: AllColorSemanticTokensProvider

    #if DEBUG
    private nonisolated(unsafe) static var instanceCount: Int = 0
    #endif

    /// Defines a provider of color mode semantic tokens
    /// - Parameter colors: Provider for color semantic tokens. If nil, a default one will be used (``OrangeThemeColorSemanticTokensProvider``)
    public init(colors: AllColorSemanticTokensProvider? = nil) {
        OL.debug("Init of OrangeThemeColorModeSemanticTokensProvider")
        self.colors = (colors ?? OrangeThemeColorSemanticTokensProvider())
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "OrangeThemeColorModeSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the integration of generated code produced by the tokenator
    // the implemention of ColorModeSemanticTokens and ColorModeMultipleSemanticTokens are not here
    // but in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+ColorModeMultipleSemanticTokens.swift
    // and in Core/Themes/Orange/Values/SemanticTokens/OrangeTheme+ColorModeSemanticTokens.swift
    // This declaration of OrangeThemeColorModeSemanticTokensProvider is here to allow to write documentation.
}

// swiftlint:enable type_name
