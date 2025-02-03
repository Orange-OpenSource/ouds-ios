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

/// The ``OUDSSwitch`` proposes a layout as a nested element.
/// It also propose a more complex layout with text, icon and divider. For this layout,
/// if switch is in form it is possible to set it in error state.
///
/// ## Code samples
/// ```swift
///     // Switch as nested element (with no text)
///     OUDSSwitch(isOn $isOn)
///
///     // Text, icon and divider
///     OUDSSwtcih(isOn $isOn, label: "Allow notifications", icon: Image("ic_heart"), divider: true)
///
///     // Text, icon and divider with error in form
///     OUDSSwtcih(isOn $isOn, label: "Allow notifications", icon: Image("ic_heart"), onError: true, divider: true)
/// ```
///
/// ## Design documentation
///
/// See [#TODO]
///
/// - Since: 0.11.0
public struct OUDSSwitch: View {

    // MARK: Stored Properties

    private var isOn: Binding<Bool>
    private let layout: Layout

    private enum Layout {
        case labeled(OUDSSwitchLabel.Label)
        case nested
    }

    // MARK: Initializers

    /// Creates a switch with no label.
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines whether the switch is on
    ///     or off.
    public init(isOn: Binding<Bool>) {
        self.isOn = isOn
        self.layout = .nested
    }

    /// Creates a switch with label and optional helper text, icon, divider.
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines whether the switch is on
    ///     or off.
    ///   - label: The main label of the switch.
    ///   - helperText: An additonal helper text.
    ///   - icon: An optional icon
    ///   - onError: It the option is on error
    ///   - divider: If true a divider is added at the bottom of the view.
    public init(isOn: Binding<Bool>, label: String, helperText: String? = nil, icon: Image? = nil, onError: Bool = false, divider: Bool = false) {
        self.isOn = isOn
        self.layout = .labeled(.init(label: label, helperText: helperText, icon: icon, onError: onError, divider: divider))
    }

    // MARK: Body

    public var body: some View {
        switch layout {
        case .labeled(let label):
            Button("") {
                isOn.wrappedValue.toggle()
            }
            .buttonStyle(OUDSSwitchLabeledStyle(isOn: isOn.wrappedValue, label: label))
        case .nested:
            Button("") {
                isOn.wrappedValue.toggle()
            }
            .buttonStyle(OUDSSwitchNestedStyle(isOn: isOn.wrappedValue))
        }
    }
}

// swiftlint:disable convenience_type
struct Constants {
    static let inputSwitchSizeWidthTrack: CGFloat = 56
    static let inputSwitchSizeHeightTrack: CGFloat = 32
    static let inputSwitchSizeWidthCursorTrue: CGFloat = 24
    static let inputSwitchSizeWidthCursorFalse: CGFloat = 16
    static let inputSwitchSizeWidthCursorPressed: CGFloat = 32
}
// swiftlint:enable convenience_type
