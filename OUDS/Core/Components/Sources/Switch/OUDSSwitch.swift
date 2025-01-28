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

// MARK: - OUDS Button

/// The ``OUDSSwitch`` proposes layout with text only, icon only or text with icon.
///
///
/// ## Code samples
///
/// ```swift
/// ```
///
/// ## Design documentation
///
/// See
///
/// - Since: 0.10.0
public struct OUDSSwitch: View {

    // MARK: Stored Properties
    var isOn: Binding<Bool>

    // MARK: Initializers

    /// Create a switch with text and icon.
    ///
    /// - Parameters:
    public init(isOn: Binding<Bool>) {
        self.isOn = isOn
    }

    // MARK: Body
    public var body: some View {
        Button {
            isOn.wrappedValue.toggle()
        } label: {
            Text("")
        }
        .buttonStyle(SwitchButtonStyle(isOn: isOn.wrappedValue))
    }
}

struct SwitchTest: View {
    @State var isOn: Bool

    var body: some View {
        OUDSSwitch(isOn: $isOn)
    }
}

#Preview {
    SwitchTest(isOn: true)
}
