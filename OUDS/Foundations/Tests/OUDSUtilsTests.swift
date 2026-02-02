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

@testable import OUDSFoundations
import Testing

// swiftlint:disable convenience_type
@Suite("OUDS Utils Alphabet Tests (for OrderedBullet Lists)")
struct OUDSUtilsTests {

    // MARK: - Latin Lowercase Tests

    @Suite("Cyclic Latin Letter - Lowercase")
    struct LowercaseLatinTests {

        @Test("First letter should be 'a'")
        func firstLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 0, isUppercase: false) == "a")
        }

        @Test("Last single letter should be 'z'")
        func lastSingleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 25, isUppercase: false) == "z")
        }

        @Test("First double letter should be 'aa'")
        func firstDoubleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 26, isUppercase: false) == "aa")
        }

        @Test("Second double letter should be 'ab'")
        func secondDoubleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 27, isUppercase: false) == "ab")
        }

        @Test("Last double letter should be 'az'")
        func lastDoubleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 51, isUppercase: false) == "az")
        }

        @Test("First triple letter should be 'ba'")
        func firstTripleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 52, isUppercase: false) == "ba")
        }

        @Test("Middle values", arguments: [
            (5, "f"),
            (10, "k"),
            (15, "p"),
            (20, "u"),
        ])
        func middleValues(index: UInt8, expected: String) {
            #expect(OUDSUtils.cyclicLatinLetter(at: index, isUppercase: false) == expected)
        }

        @Test("Double letter progression", arguments: [
            (26, "aa"),
            (30, "ae"),
            (35, "aj"),
            (40, "ao"),
            (45, "at"),
            (50, "ay"),
        ])
        func doubleLetterProgression(index: UInt8, expected: String) {
            #expect(OUDSUtils.cyclicLatinLetter(at: index, isUppercase: false) == expected)
        }
    }

    // MARK: - Latin Uppercase Tests

    @Suite("Cyclic Latin Letter - Uppercase")
    struct UppercaseLatinTests {

        @Test("First letter should be 'A'")
        func testFirstLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 0, isUppercase: true) == "A")
        }

        @Test("Last single letter should be 'Z'")
        func testLastSingleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 25, isUppercase: true) == "Z")
        }

        @Test("First double letter should be 'AA'")
        func testFirstDoubleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 26, isUppercase: true) == "AA")
        }

        @Test("Second double letter should be 'AB'")
        func testSecondDoubleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 27, isUppercase: true) == "AB")
        }

        @Test("Last double letter should be 'AZ'")
        func testLastDoubleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 51, isUppercase: true) == "AZ")
        }

        @Test("First triple letter should be 'BA'")
        func testFirstTripleLetter() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 52, isUppercase: true) == "BA")
        }

        @Test("Uppercase progression", arguments: [
            (0, "A"),
            (1, "B"),
            (25, "Z"),
            (26, "AA"),
            (27, "AB"),
            (28, "AC"),
            (51, "AZ"),
            (52, "BA"),
            (53, "BB"),
        ])
        func uppercaseProgression(index: UInt8, expected: String) {
            #expect(OUDSUtils.cyclicLatinLetter(at: index, isUppercase: true) == expected)
        }
    }

    // MARK: - Arabic Tests

    @Suite("Cyclic Arabic Letter")
    struct ArabicLetterTests {

        @Test("First letter should be 'ا'")
        func testFirstLetter() {
            #expect(OUDSUtils.cyclicArabicLetter(at: 0) == "ا")
        }

        @Test("Second letter should be 'ب'")
        func secondLetter() {
            #expect(OUDSUtils.cyclicArabicLetter(at: 1) == "ب")
        }

        @Test("Last single letter should be 'ي' (28th letter)")
        func testLastSingleLetter() {
            #expect(OUDSUtils.cyclicArabicLetter(at: 27) == "ي")
        }

        @Test("First double letter should be 'اا'")
        func testFirstDoubleLetter() {
            #expect(OUDSUtils.cyclicArabicLetter(at: 28) == "اا")
        }

        @Test("Second double letter should be 'اب'")
        func testSecondDoubleLetter() {
            #expect(OUDSUtils.cyclicArabicLetter(at: 29) == "اب")
        }

        @Test("Last double letter should be 'اي'")
        func testLastDoubleLetter() {
            #expect(OUDSUtils.cyclicArabicLetter(at: 55) == "اي")
        }

        @Test("First triple letter should be 'با'")
        func testFirstTripleLetter() {
            #expect(OUDSUtils.cyclicArabicLetter(at: 56) == "با")
        }

        @Test("Second triple letter should be 'بب'")
        func secondTripleLetter() {
            #expect(OUDSUtils.cyclicArabicLetter(at: 57) == "بب")
        }
    }

    // MARK: - Edge Cases

    @Suite("Edge Cases")
    struct EdgeCaseTests {

        @Test("Latin lowercase at boundary 26")
        func latinLowercaseBoundary() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 25, isUppercase: false) == "z")
            #expect(OUDSUtils.cyclicLatinLetter(at: 26, isUppercase: false) == "aa")
        }

        @Test("Latin uppercase at boundary 26")
        func latinUppercaseBoundary() {
            #expect(OUDSUtils.cyclicLatinLetter(at: 25, isUppercase: true) == "Z")
            #expect(OUDSUtils.cyclicLatinLetter(at: 26, isUppercase: true) == "AA")
        }

        @Test("Arabic at boundary 28")
        func arabicBoundary() {
            #expect(OUDSUtils.cyclicArabicLetter(at: 27) == "ي")
            #expect(OUDSUtils.cyclicArabicLetter(at: 28) == "اا")
        }

        @Test("Maximum UInt8 value (255)")
        func maximumValue() {
            // Should not crash
            let latinLower = OUDSUtils.cyclicLatinLetter(at: 255, isUppercase: false)
            let latinUpper = OUDSUtils.cyclicLatinLetter(at: 255, isUppercase: true)
            let arabic = OUDSUtils.cyclicArabicLetter(at: 255)

            #expect(!latinLower.isEmpty)
            #expect(!latinUpper.isEmpty)
            #expect(!arabic.isEmpty)
        }
    }

    // MARK: - Consistency Tests

    @Suite("Consistency Tests")
    struct ConsistencyTests {

        @Test("Lowercase and uppercase should have same length")
        func caseLengthConsistency() {
            for index: UInt8 in 0 ... 100 {
                let lower = OUDSUtils.cyclicLatinLetter(at: index, isUppercase: false)
                let upper = OUDSUtils.cyclicLatinLetter(at: index, isUppercase: true)
                #expect(lower.count == upper.count)
            }
        }

        @Test("Sequential indices should produce sequential letters (first 26)")
        func sequentialLetters() {
            let lowercase = (0 ..< 26).map { OUDSUtils.cyclicLatinLetter(at: $0, isUppercase: false) }
            let expected = [
                "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
                "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
            ]
            #expect(lowercase == expected)
        }

        @Test("Arabic sequential letters (first 28)")
        func arabicSequentialLetters() {
            let arabic = (0 ..< 28).map { OUDSUtils.cyclicArabicLetter(at: $0) }
            let expected = [
                "ا", "ب", "ت", "ث", "ج", "ح", "خ", "د",
                "ذ", "ر", "ز", "س", "ش", "ص", "ض", "ط",
                "ظ", "ع", "غ", "ف", "ق", "ك", "ل", "م",
                "ن", "ه", "و", "ي",
            ]
            #expect(arabic == expected)
        }
    }
}

// swiftlint:enable convenience_type
