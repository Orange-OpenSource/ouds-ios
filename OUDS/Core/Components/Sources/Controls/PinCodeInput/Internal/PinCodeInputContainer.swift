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

// PinCodeInputContainer(value, length: length, error: error, isOutlined: isOutlined)
import SwiftUI

struct PinCodeInputContainer: View {

    @Binding var value: String
    let length: OUDSPinCodeInput.Length
    let error: OUDSPinCodeInput.InputError?
    let isOutlined: Bool

    var body: some View {
        EmptyView()
    }
}
