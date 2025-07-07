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

// swiftlint:disable missing_docs

// MARK: - Operator -- (Int)

postfix operator --

extension Int {

    @discardableResult
    public static postfix func -- (value: inout Int) -> Int {
        value -= 1
        return value
    }
}

// MARK: - Operator ++ (Int)

postfix operator ++

extension Int {

    @discardableResult
    public static postfix func ++ (value: inout Int) -> Int {
        value += 1
        return value
    }
}

// swiftlint:enable missing_docs
