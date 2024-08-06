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

// See https://stackoverflow.com/questions/56874133/use-hex-color-in-swiftui
// Thanks kontiki (https://stackoverflow.com/users/7786555/kontiki)
extension Color {

    public init(hexadecimalCode: String) {

        let hexadecimalCode = hexadecimalCode.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hexadecimalCode).scanHexInt64(&int)

        let a, r, g, b: UInt64
        switch hexadecimalCode.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: Double(a) / 255)
    }
}

extension Color {

    public var brightness: Double {
        var brightness: CGFloat = 0.0
        let uiColor = UIColor(self)
        uiColor.getHue(nil, saturation: nil, brightness: &brightness, alpha: nil)
        return Double(brightness)
    }
}
