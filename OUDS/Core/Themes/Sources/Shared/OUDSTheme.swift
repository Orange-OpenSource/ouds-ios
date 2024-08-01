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
import SwiftUI
import OUDSTokensRaw
import OUDSTokensSemantic

/// This is a basic theme any themes must be a subclass off.
/// A Swift `class` has been used to as to allow to easily override some attributes and have inheritance, without having for developers
/// to implement all tokens.
/// Any properties of an overridable theme should be defined so as to provide defaults values.
/// We allow this theme to be derivated / be overriden.
///
/// **Warning: You are not supposed to use this abstract default theme directly. Please prefer `OrangeTheme` instead**
open class OUDSTheme {

    @Environment(\.colorScheme) var colorScheme

    public init() { }

    // Please refer to extensions for properties, it will be more clear
}
