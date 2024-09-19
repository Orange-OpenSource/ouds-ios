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

// MARK: - Type aliases to keep grammar clear

/// Type alias precising `Double` value are used (because of multiplier factors) for a **border width raw token**.
public typealias BorderWidthRawToken = Double

/// Type alias precising `Double` value are used (because of multiplier factors) for a **border radius raw token**.
public typealias BorderRadiusRawToken = Double

/// Type alias for `String` so as to help users (developers) to see that raw tokens are needed and linked to `String` for **border style raw token**.
/// `String` are used here to prevent to rely on _SwiftUI_ types which are not compatible with `@objc` and are heavier than primitive types.
/// In addition, if new styles are defined in design team side (such as kind of composite styles) and need to be processed differently 
/// (because not available with _SwiftUI_ because are composed of several styles),
/// such  `String` values could be processed later without any API breaks.
public typealias BorderStyleRawToken = String

// MARK: - Raw tokens

/// This is the group of all **raw tokens** related to **borders**.
///
/// Primitive types such as `Double` and `String` must be used to as to allow to use `@objc` keywords in _Swift extensions_ for overriding.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
///
/// In the future, generating tools like _Style Dictionary_ should either follow this file template and structure or just replace values or lines.
public enum BorderRawTokens { }
