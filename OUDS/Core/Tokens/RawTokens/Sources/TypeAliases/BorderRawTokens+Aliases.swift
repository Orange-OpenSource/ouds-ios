//
// Software Name: OUDSThemesContract iOS
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

/// Type alias precising `Double` value are used (because of multiplier factors) for a **border width raw token**, to keep grammar clean and clear with design system grammar.
public typealias BorderWidthRawToken = Double

/// Type alias precising `Double` value are used (because of multiplier factors) for a **border radius raw token**, to keep grammar clean and clear with design system grammar.
public typealias BorderRadiusRawToken = Double

/// Type alias for `String` so as to help users (developers) to see that raw tokens are needed and linked to `String` for **border style raw token**.
/// `String` are used here to prevent to rely on _SwiftUI_ types which are not compatible with `@objc` and are heavier than primitive types.
/// In addition, if new styles are defined in design team side (such as kind of composite styles) and need to be processed differently
/// (because not available with _SwiftUI_ because are composed of several styles),
/// such  `String` values could be processed later without any API breaks.
/// Keeps grammar clean and clear with design system grammar.
public typealias BorderStyleRawToken = String
