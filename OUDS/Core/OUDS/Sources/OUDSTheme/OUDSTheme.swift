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
import OUDSTokensSemantic

/// This is a basic theme any theme must be a subclass off, or all themes must have as ancestor.
/// A Swift `class` has been used so as to allow to easily override some attributes and have inheritance, without having for developers
/// to implement all tokens.
/// Any properties of an overridable theme should be defined so as to provide defaults values.
/// We allow this theme to be derivated and be overriden.
///
/// `OUDSTheme` can be seen as a kind of "abstract class" in _object oriented paradigm_.
/// **Warning: You are not supposed to use this abstract default theme directly. Please prefer `OrangeTheme` instead**
open class OUDSTheme {

    /// A theme can have a custom font which is not the system font
    public let customFontFamily: TypographyFontFamilySemanticToken?

    /// Defines a basic kind of abstract theme to subclass then.
    /// No custom font family will be used.
    public convenience init() {
        self.init(customFontFamily: nil)
    }

    /// Defines a basic kind of abstract theme to subclass then.
    /// - Parameters:
    ///    - customFontFamily: Set `nil` if system font to use, otherwise use the `TypographyFontFamilySemanticToken` you want to apply
    public init(customFontFamily: TypographyFontFamilySemanticToken?) {
        self.customFontFamily = customFontFamily
    }

    deinit { }

    // Please refer to extensions for properties, it will be more clear
}
