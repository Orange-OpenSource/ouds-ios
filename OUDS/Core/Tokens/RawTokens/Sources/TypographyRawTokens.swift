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

// MARK: - Type aliases to keep grammar clear

/// In the global design system tool, *font family* raw tokens are basically `String` values
public typealias TypographyFontFamilyRawToken = String

/// In the global design system tool, *font weight* raw tokens are basically `String` values
public typealias TypographyFontWeightRawToken = String

/// In the global design system tool, *font size* raw tokens are basically `CGFloat` values
public typealias TypographyFontSizeRawToken = CGFloat

/// In the global design system tool, *font line height* raw tokens are basically `Int` values
public typealias TypographyFontLineHeightRawToken = CGFloat

// MARK: Primitive tokens

// MARK: - Composite raw token

/// Composite raw tokens are here to pack a set of specific values according to the global design system tool.
/// Here a *typography* is finaly defined by some specific values.
public struct TypographyCompositeRawToken: Equatable {

    // Font family is not included here because this is the only thing which can vary

    /// The font size to apply for the texts
    public let size: TypographyFontSizeRawToken
    /// The line height to apply on texts
    public let lineHeight: TypographyFontLineHeightRawToken
    /// The font weight to associated wit the font family
    public let weight: TypographyFontWeightRawToken
    // TODO: How to deal "letter spacing"?
}

// MARK: - Raw tokens

/// This is the group of all **raw tokens** related to **typography**.
/// Primitive types such as `Int` and `String` must be used to as to allow to use `@objc` keywords in extensions for overriding.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
public enum TypographyRawTokens { }
