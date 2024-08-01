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

public typealias OpacityRawToken = Double

// MARK: - Raw tokens

/// This is the group of all **raw tokens** related to **opacity**.
/// Primitive types such as `Double` must be used to as to allow to use `@objc` keywords in extensions for overriding.
public struct OpacityRawTokens {
    
    // MARK: Primitive token - Opacity

    public static let opacity0: OpacityRawToken = 0
    public static let opacity100: OpacityRawToken = 0.04
    public static let opacity200: OpacityRawToken = 0.08
    public static let opacity300: OpacityRawToken = 0.16
    public static let opacity400: OpacityRawToken = 0.24
    public static let opacity500: OpacityRawToken = 0.32
    public static let opacity600: OpacityRawToken = 0.48
    public static let opacity700: OpacityRawToken = 0.64
    public static let opacity800: OpacityRawToken = 0.88
    public static let opacity900: OpacityRawToken = 1
}
