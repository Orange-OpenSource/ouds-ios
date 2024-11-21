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

/// Defined as the group of all **raw tokens** related to **grid**.
/// Values are defined in *GridRawTokens+Values.swift* file updated by the tokenator.
/// ``GridRawTokens`` are tokens to use to define *grids*  using ``GridRawToken` type.
///
/// Primitive types such as `Int must be used to as to allow to use `@objc` keywords in extensions for overriding.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
public enum GridRawTokens {

    // ଘ( ･ω･)_/ﾟ･:*:･｡☆
    // Note: So as to help the tokenator, the values have been added in the Values folder
    // This trick helps also to write documentation for these tokens as the tokenator cannot generate documentation
}
