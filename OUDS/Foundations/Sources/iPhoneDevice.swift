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

// MARK: - Environment

private struct iPhoneDeviceEnvironmentKey: EnvironmentKey {

    static let defaultValue = iPhoneDevice.unknown
}

extension EnvironmentValues {

    /// The `iPhoneDevice` in use, defined depending to screen dimensions.
    /// No need to get more details (at least for privacy concerns), just to know why group of devices it is part of.
    /// Can be useful to compute some lements like indicators of tab bars.
    public var iPhoneInUse: iPhoneDevice {
        get {
            self[iPhoneDeviceEnvironmentKey.self]
        }
        set {
            self[iPhoneDeviceEnvironmentKey.self] = newValue
        }
    }
}

// MARK: - iPhone Device

/// List some iPhone devices which can use OUDS, i.e. supposed to support at least iOS 15.
/// Helps to define some metrics like tab bar heights.
///
/// - Since: 1.0.0
public enum iPhoneDevice: CustomStringConvertible, Sendable {

    /*
     Following iPhones not suppsoed to support iOS 15:
     - iPhones 6, 6 Plus
     - iPhones 5s, 5c, 5
     - iPhone 4, 4s
     - iPhone 3GS, 3G
     - iPhone 1
     */

    /// Not managed nor recognized
    case unknown

    /// iPhone SE series
    case se1, se2, se3

    /// 7, 8
    case regular7, regular8

    /// 6s+, 7+, 8+
    case plus6s, plus7, plus8

    /// iPhone X series
    case x, xs, xsMax

    /// iPhone 11 series
    case xr, regular11, pro11, proMax11

    /// iPhone 12 series
    case mini12, regular12, pro12, proMax12

    /// iPhone 13 series
    case mini13, regular13, pro13, proMax13

    /// iPhone 14 series
    case regular14, plus14, pro14, proMax14

    /// iPhone 15 series
    case regular15, plus15, pro15, proMax15

    /// iPhone 16 series
    case e16 /* = SE 4*/, regular16, plus16, pro16, proMax16

    /// iPhone 17 series
    case air, regular17, pro17, proMax17

    /// Returns a flag saying if the devic emodel has the home button, i.e. Touch ID, i.e. no safe area
    public var hasHomeButton: Bool {
        switch self {
        case .se1, .se2, .se3, .regular7, .regular8, .plus6s, .plus7, .plus8:
            true
        default:
            false
        }
    }

    /// The heights of the tab bar in portrait and landscape mode defined in points
    public var tabBarHeights: (portrait: CGFloat, landscape: CGFloat) {
        if hasHomeButton {
            (portrait: 49.0, landscape: 32.0)
        } else {
            (portrait: 83.0, landscape: 53.0)
        }
        // Seems to work fine with all generation froms iOS 15 max to iOS 26 max.
        // A bit of magic ଘ(੭ ᐛ )━☆ﾟ.*･｡ﾟ
    }

    /// For `CustomStringConvertible`
    public var description: String {
        switch self {
        case .unknown: "Unknown"
        // SE series
        case .se1: "iPhone SE (1st gen)"
        case .se2: "iPhone SE (2nd gen)"
        case .se3: "iPhone SE (3rd gen)"
        // 7-8 series
        case .regular7: "iPhone 7"
        case .regular8: "iPhone 8"
        case .plus6s: "iPhone 6S Plus"
        case .plus7: "iPhone 7 Plus"
        case .plus8: "iPhone 8 Plus"
        // X series
        case .x: "iPhone X"
        case .xs: "iPhone XS"
        case .xsMax: "iPhone XS Max"
        // 11 series
        case .xr: "iPhone XR"
        case .regular11: "iPhone 11"
        case .pro11: "iPhone 11 Pro"
        case .proMax11: "iPhone 11 Pro Max"
        // 12 series
        case .mini12: "iPhone 12 mini"
        case .regular12: "iPhone 12"
        case .pro12: "iPhone 12 Pro"
        case .proMax12: "iPhone 12 Pro Max"
        // 13 series
        case .mini13: "iPhone 13 mini"
        case .regular13: "iPhone 13"
        case .pro13: "iPhone 13 Pro"
        case .proMax13: "iPhone 13 Pro Max"
        // 14 series
        case .regular14: "iPhone 14"
        case .plus14: "iPhone 14 Plus"
        case .pro14: "iPhone 14 Pro"
        case .proMax14: "iPhone 14 Pro Max"
        // 15 series
        case .regular15: "iPhone 15"
        case .plus15: "iPhone 15 Plus"
        case .pro15: "iPhone 15 Pro"
        case .proMax15: "iPhone 15 Pro Max"
        // 16 series
        case .e16: "iPhone 16e (SE 4)"
        case .regular16: "iPhone 16"
        case .plus16: "iPhone 16 Plus"
        case .pro16: "iPhone 16 Pro"
        case .proMax16: "iPhone 16 Pro Max"
        // 17 series
        case .air: "iPhone Air"
        case .regular17: "iPhone 17"
        case .pro17: "iPhone 17 Pro"
        case .proMax17: "iPhone 17 Pro Max"
        }
    }

    /// According to dimensions (e.g. *UIScreen.main.nativeBounds*), defines which type of iPhone it is
    /// according to [devicespecifications.com](https://www.devicespecifications.com/).
    /// (and also [some specifications](https://iosref.com/res)).
    ///
    /// Expected values are the highest logical resolution value multiplied by the scale factor, or in the end screen resolution.
    ///
    /// - Parameters:
    ///    - width: Screen native bounds width
    ///    - height: Screen native bounds width
    ///    - safeAreaBottom: The bottom safe area dimension, default set to 0
    public init(_ width: Double, _ height: Double, _ safeAreaBottom: CGFloat = 0) {
        let maxDimension = max(width, height)

        switch maxDimension {
        case 1_136: // 568 x @2 (SE 1st gen)
            self = .se1
        case 1_334: // 667 x @2 (SE 2nd gen, SE 3rd gen, 7, 8)
            self = safeAreaBottom > 0 ? .se2 : .regular7
        case 1_792: // 896 x @2 (XR, 11)
            self = .xr
        case 2_208, 1_920: // 736 x @3 (6S Plus, 7 Plus, 8 Plus)
            self = .plus6s
        case 2_340: // (12 mini, 13 mini)
            self = .mini12
        case 2_436: // 812 x @3 (X, XS, 11 Pro, 12 mini, 13 mini)
            self = .xs
        case 2_532: // 844 x @3 (12, 12 Pro, 13, 13 Pro, 14, 16e)
            self = .regular12
        case 2_556: // 852 x @3 (14 Pro, 15, 15 Pro, 16)
            self = .pro14
        case 2_622: // 2 622 x @3 (16 Pro, 17, 17 Pro)
            self = .regular17
        case 2_688: // 896 x @3 (XS Max, 11 Pro Max)
            self = .xsMax
        case 2_736:
            self = .air
        case 2_778: // 926 x @3 (12 Pro Max, 13 Pro Max, 14 Plus)
            self = .proMax12
        case 2_796: // 932 x @3 (14 Pro Max, 15 Plus, 15 Pro Max, 16 Plus)
            self = .proMax14
        case 2_868: // 956 x @3 (16 Pro max, 17 Pro Max)
            self = .proMax16
        default:
            OL.warning("iPhone device not recognized (with max dimension \(maxDimension)), please submit an issue with the device reference and computed dimension (https://github.com/Orange-OpenSource/ouds-ios/issues)")
            self = iPhoneDevice.unknown
        }
    }
}
