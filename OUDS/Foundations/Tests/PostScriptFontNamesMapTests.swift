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

import OUDSFoundations
import SwiftUI
import Testing

/// Struct to test `PostScriptFontNamesMap`.
struct PostScriptFontNamesMapTests {

    // MARK: - Arial

    @Test
    func arialRegular() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Arial", Font.Weight.regular)] == "ArialMT")
    }

    @Test
    func arialBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Arial", Font.Weight.bold)] == "Arial-BoldMT")
    }

    // MARK: - Helvetica

    @Test
    func helveticaLight() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica", Font.Weight.light)] == "Helvetica-Light")
    }

    @Test
    func helvetica() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica", nil)] == "Helvetica")
    }

    @Test
    func helveticaBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica", Font.Weight.bold)] == "Helvetica-Bold")
    }

    // MARK: - SF Pro

    @Test
    func sfProUltraLight() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", Font.Weight.ultraLight)] == "SFPro-Ultralight")
    }

    @Test
    func sfProThin() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", Font.Weight.thin)] == "SFPro-Thin")
    }

    @Test
    func sfProLight() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", Font.Weight.light)] == "SFPro-Light")
    }

    @Test
    func sfProRegular() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", Font.Weight.regular)] == "SFPro-Regular")
    }

    @Test
    func sfPro() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", nil)] == "SFPro-Regular")
    }

    @Test
    func sfProMedium() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", Font.Weight.medium)] == "SFPro-Medium")
    }

    @Test
    func sfProSemiBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", Font.Weight.semibold)] == "SFPro-Semibold")
    }

    @Test
    func sfProBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", Font.Weight.bold)] == "SFPro-Bold")
    }

    @Test
    func sfProHeavy() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", Font.Weight.heavy)] == "SFPro-Heavy")
    }

    @Test
    func sfProBlack() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("SF Pro", Font.Weight.black)] == "SFPro-Black")
    }

    // MARK: - Menlo

    @Test
    func menloRegular() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Menlo", Font.Weight.regular)] == "Menlo-Regular")
    }

    @Test
    func menloBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Menlo", Font.Weight.bold)] == "Menlo-Bold")
    }

    // MARK: - Courier New

    @Test
    func courierNew() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Courier New", nil)] == "CourierNewPSMT")
    }

    @Test
    func courierNewBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Courier New", Font.Weight.bold)] == "CourierNewPS-BoldMT")
    }

    // MARK: - Helvetica Neue

    @Test
    func helveticaNeueUltraLight() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue", Font.Weight.ultraLight)] == "HelveticaNeue-Ultralight")
    }

    @Test
    func helveticaNeueThin() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue", Font.Weight.thin)] == "HelveticaNeue-Thin")
    }

    @Test
    func helveticaNeueLight() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue", Font.Weight.light)] == "HelveticaNeue-Light")
    }

    @Test
    func helveticaNeueRegular() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue", Font.Weight.regular)] == "HelveticaNeue-Regular")
    }

    @Test
    func helveticaNeue() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue", nil)] == "HelveticaNeue")
    }

    @Test
    func helveticaNeueMedium() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue", Font.Weight.medium)] == "HelveticaNeue-Medium")
    }

    @Test
    func helveticaNeueSemiBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue", Font.Weight.semibold)] == "HelveticaNeue-Semibold")
    }

    @Test
    func helveticaNeueBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue", Font.Weight.bold)] == "HelveticaNeue-Bold")
    }

    // MARK: - Helvetica Neue Arabic

    @Test
    func helveticaNeueArabicLight() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue Arabic", Font.Weight.light)] == "HelveticaNeueLTArabic-Light")
    }

    @Test
    func helveticaNeueArabicRegular() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue Arabic", Font.Weight.regular)] == "HelveticaNeueLTArabic-Roman")
    }

    @Test
    func helveticaNeueArabicBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue Arabic", Font.Weight.bold)] == "HelveticaNeueLTArabic-Bold")
    }

    @Test
    func helveticaNeueArabic() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Helvetica Neue Arabic", nil)] == "HelveticaNeueLTArabic-Roman")
    }

    // MARK: - Sosh

    @Test
    func soshThin() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Sosh", Font.Weight.thin)] == "Sosh-Thin")
    }

    @Test
    func soshRegular() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Sosh", Font.Weight.regular)] == "Sosh-Regular")
    }

    @Test
    func soshMedium() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Sosh", Font.Weight.medium)] == "Sosh-Medium")
    }

    @Test
    func soshBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Sosh", Font.Weight.bold)] == "Sosh-Bold")
    }

    @Test
    func soshBlack() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Sosh", Font.Weight.black)] == "Sosh-Black")
    }

    // MARK: - Chalkboard SE

    @Test
    func chalkboardSELight() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Chalkboard SE", Font.Weight.light)] == "ChalkboardSE-Light")
    }

    @Test
    func chalkboardSERegular() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Chalkboard SE", Font.Weight.regular)] == "ChalkboardSE-Regular")
    }

    @Test
    func chalkboardSEBold() throws {
        #expect(kApplePostScriptFontNames[PSFNMK("Chalkboard SE", Font.Weight.bold)] == "ChalkboardSE-Bold")
    }

    // MARK: - Fallbacks

    @Test("A not managed font without fallback must return the font family name")
    func unknownFontFamilyWithoutFallback() throws {
        let unknownFontFamily = "Luciole"
        #expect(kApplePostScriptFontNames[PSFNMK(unknownFontFamily, nil)] == nil)
        #expect(kApplePostScriptFontNames[PSFNMK(unknownFontFamily, weight: nil)] == nil)
        #expect(kApplePostScriptFontNames[PSFNMK(unknownFontFamily, weight: "")] == nil)
        #expect(kApplePostScriptFontNames[PSFNMK(unknownFontFamily, Font.Weight.bold)] == nil)
        #expect(kApplePostScriptFontNames[PSFNMK(unknownFontFamily, Font.Weight.regular)] == nil)
    }

    @Test("A not managed font with fallback must return the font family name and font weight")
    func unknownFontFamilyWithFallback() throws {
        let unknownFontFamily = "Luciole"
        #expect(kApplePostScriptFontNames[orKey: PSFNMK(unknownFontFamily, nil)] == unknownFontFamily)
        #expect(kApplePostScriptFontNames[orKey: PSFNMK(unknownFontFamily, weight: nil)] == unknownFontFamily)
        #expect(kApplePostScriptFontNames[orKey: PSFNMK(unknownFontFamily, weight: "")] == unknownFontFamily)
        #expect(kApplePostScriptFontNames[orKey: PSFNMK(unknownFontFamily, Font.Weight.bold)] == "\(unknownFontFamily)-Bold")
        #expect(kApplePostScriptFontNames[orKey: PSFNMK(unknownFontFamily, Font.Weight.regular)] == "\(unknownFontFamily)-Regular")
    }
}
