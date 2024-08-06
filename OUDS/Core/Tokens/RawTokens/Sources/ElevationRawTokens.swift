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

public typealias ElevationRawToken = Int

// MARK: - Raw tokens

/// This is the group of all **raw tokens** related to **elevations**.
/// Primitive types such as `Int` must be used to as to allow to use `@objc` keywords in extensions for overriding.
/// Such tokens are packed in a _Swift enum_ so as to gather them in one object with the suitable namespace and avoid to have just constants in nothing else
///  (i.e. publicly accessible from everywhere). More optimized than _struct_.
public enum ElevationRawTokens {

    // MARK: Primitive token - Elevation - Z Index

    public static let elevationZIndex0: ElevationRawToken = 0
    public static let elevationZIndexMinus9999: ElevationRawToken = -9999
    public static let elevationZIndex1000: ElevationRawToken = 1000
    public static let elevationZIndex1010: ElevationRawToken = 1010
    public static let elevationZIndex1020: ElevationRawToken = 1020
    public static let elevationZIndex1030: ElevationRawToken = 1030
    public static let elevationZIndex1035: ElevationRawToken = 1035
    public static let elevationZIndex1038: ElevationRawToken = 1038
    public static let elevationZIndex1040: ElevationRawToken = 1040
    public static let elevationZIndex1045: ElevationRawToken = 1045
    public static let elevationZIndex1050: ElevationRawToken = 1050
    public static let elevationZIndex1060: ElevationRawToken = 1060
    public static let elevationZIndex1070: ElevationRawToken = 1070
    public static let elevationZIndex1080: ElevationRawToken = 1080
    public static let elevationZIndex1090: ElevationRawToken = 1090

    // MARK: Primitive token - Elevation - X

    public static let elevationX0: ElevationRawToken = 0

    // MARK: Primitive token - Elevation - Y

    public static let elevationY0: ElevationRawToken = 0
    public static let elevationY100: ElevationRawToken = 1
    public static let elevationY200: ElevationRawToken = 2
    public static let elevationY300: ElevationRawToken = 4
    public static let elevationY400: ElevationRawToken = 8
    public static let elevationY500: ElevationRawToken = 12
    public static let elevationY600: ElevationRawToken = 20

    // MARK: Primitive token - Elevation - Blur

    public static let elevationBlur0: ElevationRawToken = 0
    public static let elevationBlur100: ElevationRawToken = 1
    public static let elevationBlur200: ElevationRawToken = 2
    public static let elevationBlur300: ElevationRawToken = 3
    public static let elevationBlur400: ElevationRawToken = 4
    public static let elevationBlur500: ElevationRawToken = 8
    public static let elevationBlur600: ElevationRawToken = 12
    public static let elevationBlur700: ElevationRawToken = 20

    // MARK: Primitive token - Elevation - Spread

    public static let elevationSpreadMinus100: ElevationRawToken = -1
    public static let elevationSpreadMinus200: ElevationRawToken = -2
    public static let elevationSpreadMinus300: ElevationRawToken = -4
    public static let elevationSpreadMinus400: ElevationRawToken = -8
    public static let elevationSpread0: ElevationRawToken = 0
    public static let elevationSpread300: ElevationRawToken = 3
}
