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

import Foundation
import OUDSFoundations
import OUDSTokensComponent
import OUDSTokensSemantic

/// This is a basic theme any theme must be a subclass off, or all themes must have as ancestor.
/// A Swift `class` has been used so as to allow to easily override some attributes and have inheritance, without having for developers
/// to implement all tokens.
/// Any properties of an overridable theme should be defined so as to provide defaults values.
/// We allow this theme to be derivated and be overriden.
/// ``OUDSTheme`` can be seen as a kind of "abstract class" in _object oriented paradigm_, or *theme contract*.
/// Because `OUDSTheme` is not a *final* class, its type cannot be seen as `Sendable`, that is the reason why this conformity is unchecked.
///
/// **Warning: You are not supposed to use this abstract default theme directly. Please prefer `OrangeTheme` instead**
/// Prefer theme like `OrangeTheme`.
///
/// Any theme is handled as ``OUDSTheme``.
/// It contains plenty of *tokens provider* for semantic tokens and component tokens.
/// These providers are given to the theme in its initialize using ``TokensProviders``.
/// Theme can have also non-provider properties like *font family* to apply.
///
/// - Since: 0.8.0
open class OUDSTheme: @unchecked Sendable {

    // MARK: - Semantic tokens

    /// All color semantic tokens exposed in one object
    public let colors: AllColorSemanticTokensProvider

    /// All border semantic tokens exposed in one object
    public let borders: AllBorderSemanticTokensProvider

    /// All elevation semantic tokens exposed in one object
    public let elevations: AllElevationSemanticTokensProvider

    /// A theme can have a custom font which is not the system font
    public let fontFamily: FontFamilySemanticToken?

    /// All font semantic tokens exposed in one object
    public let fonts: AllFontSemanticTokensProvider

    /// All grid semantic tokens exposed in one object
    public let grids: AllGridSemanticTokensProvider

    /// All opacity semantic tokens exposed in one object
    public let opacities: AllOpacitySemanticTokensProvider

    /// All size semantic tokens exposed in one object
    public let sizes: AllSizeSemanticTokensProvider

    /// All size semantic tokens exposed in one object
    public let spaces: AllSpaceSemanticTokensProvider

    // MARK: - Component tokens

    /// All components tokens related to button components like `OUDSButton`
    public let button: AllButtonComponentTokensProvider

    /// All components tokens related to link components like `OUDSLink`
    public let link: AllLinkComponentTokensProvider

    /// All components tokens related to select components like `OUDSSelect`
    public let select: AllSelectComponentTokensProvider

    /// All components tokens related to skeleto components like `OUDSSkeleton`
    public let skeleton: AllSkeletonComponentTokensProvider

    /// All components tokens related to tags components like `OUDSTag`
    public let tag: AllTagComponentTokensProvider

    // NOTE: Add new component tokens provider here

    // MARK: - Initializers

    /// Defines a basic kind of abstract theme to subclass then.
    /// Verifies using ``TokensProviders`` if some semantic or component tokens providers are missing.
    /// If so, errors are logged and *fatalError* is triggered because unexpected behavior.
    ///
    /// - Parameters:
    ///    - tokensProviders: All the semantic and component tokens providers
    ///    - fontFamily: Set `nil` if system font to use, otherwise use the `FontFamilySemanticToken` you want to apply
    public init(tokensProviders: TokensProviders,
                fontFamily: FontFamilySemanticToken? = nil) {
        
        // Check if we have all the exxpected tokens providers
        let missingProviders = tokensProviders.missingProviders()
        if !missingProviders.isEmpty {
            OUDSLogger.error("Some token providers are missing: '\(missingProviders)'")
        }
        
        // Load semantic tokens providers
        colors = tokensProviders.get()
        borders = tokensProviders.get()
        elevations = tokensProviders.get()
        fonts = tokensProviders.get()
        grids = tokensProviders.get()
        opacities = tokensProviders.get()
        sizes = tokensProviders.get()
        spaces = tokensProviders.get()
        
        // Load component tokens providers
        button = tokensProviders.get()
        link = tokensProviders.get()
        select = tokensProviders.get()
        skeleton = tokensProviders.get()
        tag = tokensProviders.get()
        // NOTE: Add new component tokens provider here
        
        // Load other configuration elements
        self.fontFamily = fontFamily
    }

    deinit { }
}
