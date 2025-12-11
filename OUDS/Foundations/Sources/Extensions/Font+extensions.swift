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

import SwiftUI

extension Font.Weight: @retroactive CustomStringConvertible {

    /// From an integer value, like a `FontWeightRawToken`, defines the SwiftUI `Font.Weight` to apply.
    /// - Parameter weight: The raw value to convert
    public init(weight: Int) {
        self = Font.Weight.regular
        // From 701 to 950, assume it is the only higher value, i.e. black
        if weight <= 950 { self = Font.Weight.black }
        // No Font.Weight.extraBlack for 950
        // No Font.Weight.extraBold for 800
        if weight <= 700 { self = Font.Weight.bold }
        if weight <= 600 { self = Font.Weight.semibold }
        if weight <= 500 { self = Font.Weight.medium }
        if weight <= 400 { self = Font.Weight.regular }
        if weight <= 300 { self = Font.Weight.light }
        if weight <= 200 { self = Font.Weight.ultraLight }
        if weight <= 100 { self = Font.Weight.thin }
        if weight < 0 { self = Font.Weight.regular }
    }

    /// Computes from the current `self` value a description of the object which can be used later
    /// for example for font loading by appending this value to the font name.
    public var description: String {
        switch self {
        case .ultraLight:
            "Ultra-Light"
        case .thin:
            "Thin"
        case .light:
            "Light"
        case .regular:
            "Regular"
        case .medium:
            "Medium"
        case .semibold:
            "Semi-Bold"
        case .bold:
            "Bold"
        case .heavy:
            "Heavy"
        case .black:
            "Black"
        default:
            ""
        }
    }

    /// Computes from the current `self` value the `UIFont.Weight`
    #if os(macOS)
    public var nativeFontWeight: NSFont.Weight {
        switch self {
        case .ultraLight:
            .ultraLight
        case .thin:
            .thin
        case .light:
            .light
        case .regular:
            .regular
        case .medium:
            .medium
        case .semibold:
            .semibold
        case .bold:
            .bold
        case .heavy:
            .heavy
        default:
            .regular
        }
    }
    #else
    public var nativeFontWeight: UIFont.Weight {
        switch self {
        case .ultraLight:
            .ultraLight
        case .thin:
            .thin
        case .light:
            .light
        case .regular:
            .regular
        case .medium:
            .medium
        case .semibold:
            .semibold
        case .bold:
            .bold
        case .heavy:
            .heavy
        default:
            .regular
        }
    }
    #endif
}
