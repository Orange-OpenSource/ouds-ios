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

extension Color {

    public init?(hexadecimalCode: String) {

        let hexadecimalCodeSanitized = hexadecimalCode.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        var r: CGFloat = 0.0, g: CGFloat = 0.0, b: CGFloat = 0.0, a: CGFloat = 1.0

        let hexadecimalCodeLength = hexadecimalCodeSanitized.count

        guard Scanner(string: hexadecimalCodeSanitized).scanHexInt64(&rgb) else {
            return nil
        }

        if hexadecimalCodeLength == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
        } else if hexadecimalCodeLength == 8 {
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0
        } else {
            print("[OUDS] Warning - The hexadecimal code value given for the colors cannot be processed (\(hexadecimalCode))")
            return nil
        }

        self.init(red: r, green: g, blue: b, opacity: a)
    }
}
