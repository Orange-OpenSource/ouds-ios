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
import OUDSTokensRaw

/// This is a basic theme any themes must be a subclass off.
/// A Swift `class` has been used to as to allow to easily override some attributes and have inheritance, without having for developers
/// to implement all tokens.
/// Any properties of an overridable theme should be defined so as to provide defaults values.
/// We allow this theme to be derivated / be overriden.
///
/// **Warning: You are not supposed to use this abstract default theme directly. Please prefer `OrangeTheme` instead**
/// `OUDSTheme` can be seen as a kid of "abstract class" in _object oriented paradigm_.
open class OUDSTheme {

    /// Any theme must have a font family, it can be custom or not. If `nil`, it means the system font must be used.
    /// The name of the font fmaily to apply if not the Apple SF.
    public var customFontFamily: TypographyFontFamilyRawToken?

    // Please refer to extensions for any others tokens, it will be clearer

    public init() { }
}
