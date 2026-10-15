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

#if DEBUG
extension TokensProvider {

    // swiftlint:disable line_length
    /// If `count` is greater than 1, displays a warning message in the standard output
    /// saying the tokens provider with name `providerName` is instanciated more than once and should not be
    /// - Parameters:
    ///    - count: Supposed to be instance count
    ///    - providerName: Supposed to be name of the tokens provider
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func checkInstances(count: Int, for providerName: String) {
        guard count > 1 else { return }
        OL.debug("🧮 Nore there are \(count) instances of \(providerName), but it should be unique in most of cases. If this warning does not occur during tests, feel free to submit a bug: https://github.com/Orange-OpenSource/ouds-ios/issues")
    }
    // swiftlint:enable line_length
}
#endif
