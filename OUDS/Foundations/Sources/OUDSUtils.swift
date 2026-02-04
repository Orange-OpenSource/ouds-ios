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

/// A set of utilities from OUDS lirbary shared with love ⸜(｡˃ ᵕ ˂)⸝♡♡♡
///
/// - Since: 1.2.0
public enum OUDSUtils {

    // MARK: - Language detection

    /// Flag risen if the preferred language of the user or the current locale language code refers to arabic language
    public static func isArabicLanguageInUse() -> Bool {
        if let preferredLanguage = Locale.preferredLanguages.first, preferredLanguage.hasPrefix("ar") {
            return true
        }
        if #available(iOS 16.0, *) {
            if let languageCode = Locale.current.language.languageCode, languageCode.identifier == "ar" {
                return true
            }
        } else {
            return Locale.current.languageCode == "ar"
        }
        return false
    }

    // MARK: - Alphabets

    /// Using the latin alphabet (based on ASCII), returns as String value a letter or group of letters based on an index and a case.
    ///
    /// - Parameters:
    ///    - index: A rank, starting at 0
    ///    - isUppercase: True if letter must be upper cased, false otherwise
    /// - Returns: A letter or group a letters (e.g. 1 to Z, AA to AZ, etc).
    public static func cyclicLatinLetter(at index: UInt8, isUppercase: Bool) -> String {
        let alphabetSize = 26
        let baseChar: UInt8 = isUppercase ? UInt8(ascii: "A") : UInt8(ascii: "a")

        var idx = Int(index)
        var result = ""

        repeat {
            let position = idx % alphabetSize
            let letter = Character(UnicodeScalar(baseChar + UInt8(position)))
            result = String(letter) + result
            idx = idx / alphabetSize - 1
        } while idx >= 0

        return result
    }

    /// Using the arabic alphabet, returns as String value a letter or group of letters based on an index.
    ///
    /// - Parameter index: A rank, starting at 0
    /// - Returns: A letter or group of letters
    public static func cyclicArabicLetter(at index: UInt8) -> String {
        let arabicLetters: [String] = [
            "أ",
            "ب",
            "ت",
            "ث",
            "ج",
            "ح",
            "خ",
            "د",
            "ذ",
            "ر",
            "ز",
            "س",
            "ش",
            "ص",
            "ض",
            "ط",
            "ظ",
            "ع",
            "غ",
            "ف",
            "ق",
            "ك",
            "ل",
            "م",
            "ن",
            "ه",
            "و",
            "ي",
        ]

        let alphabetSize = arabicLetters.count
        var idx = Int(index)
        var result = ""

        repeat {
            let position = idx % alphabetSize
            let letter = arabicLetters[position]
            result = letter + result
            idx = idx / alphabetSize - 1
        } while idx >= 0

        return result
    }
}
