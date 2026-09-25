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
import OUDSThemesContract
import OUDSThemesWireframe
import OUDSTokensSemantic

// swiftlint:disable type_name

/// A class which overrides some **font semantic tokens** of `WireframeTheme` to allow to use custom font family.
/// This provider should be integrated as a `AllFontSemanticTokensProvider` implementation inside `OUDSTheme` so as to provide
/// all tokens to the users.
///
/// - Since: 3.1.0
final class WhiteLabelThemeFontSemanticTokensProvider: WireframeThemeFontSemanticTokensProvider {

    // MARK: - Properties

    let assignedFontFamily: String

    // MARK: - Initializers

    #if DEBUG
    nonisolated(unsafe) private static var instanceCount: Int = 0
    #endif

    /// Intializes the provider
    ///
    /// - Parameter fontFamily: The name of the font family to apply
    init(fontFamily: String = "") {
        assignedFontFamily = fontFamily
        super.init()
        OL.debug("Init of WhiteLabelThemeFontSemanticTokensProvider")
        #if DEBUG
        Self.instanceCount++
        checkInstances(count: Self.instanceCount, for: "WhiteLabelThemeFontSemanticTokensProvider")
        #endif
    }

    deinit {
        #if DEBUG
        Self.instanceCount--
        #endif
    }

    // MARK: - Values

    /// Has for value token familySystem
    override final var familyBody: FontFamilySemanticToken { familySystem }
    /// Has for value token familySystem
    override final var familyCode: FontFamilySemanticToken { familySystem }
    /// Has for value token familySystem
    override final var familyDisplay: FontFamilySemanticToken { familySystem }
    /// Has for value token familySystem
    override final var familyHeading: FontFamilySemanticToken { familySystem }
    /// Has for value token familySystem
    override final var familyLabel: FontFamilySemanticToken { familySystem }
    /// Has for value the one given at init of `WhiteLabelThemeFontSemanticTokensProvider`
    override final var familySystem: FontFamilySemanticToken { assignedFontFamily }
}

// swiftlint:enable type_name
