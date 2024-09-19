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
import OUDS
import OUDSTokensSemantic

/// A mock theme for tests
final class MockTheme: OUDSTheme {

    convenience init() {
        self.init(customFont: nil)
    }

    init(customFont: String?) {
        super.init(customFontFamily: customFont)
    }

    // Please refer to extensions
}
