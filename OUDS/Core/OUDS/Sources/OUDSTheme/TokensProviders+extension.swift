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

    public func checkInstances(count: Int, for providerName: String) {
        guard count > 1 else { return }
        OL.warning("🧮 There are \(count) instances of \(providerName), it should be unique!")
    }
}
#endif
