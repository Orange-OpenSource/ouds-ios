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
///     // Supposing we have a switch in on state
///     @Published var isOn: Bool  = false
///
///     // Switch as nested element (with no text)
///     OUDSSwitch(isOn $isOn)
///
///     // A leading switch with a label, an helper text and an icon.
///     // The default layout will be used here.
///     OUDSSwtcih(isOn $isOn,
///                  label: "Allow notifications",
///                  icon: Image("ic_heart"))
///
///     // A leading switch with a label, an helper text, an icon, a divider and is about an error.
///     // The default layout will be used here.
///     OUDSSwtcih(isOn $isOn,
///                  label: "Allow notifications",
///                  icon: Image("ic_heart"),
///                  onError: true,
///                  divider: true)
///
///     // A leading switch with a label, an helper text, an icon, a divider and is about an error.
///     // The inverse layout will be used here.
///     OUDSSwtcih(isOn $isOn,
///                  label: "Allow notifications",
///                  icon: Image("ic_heart"),
///                  onError: true,
///                  divider: true,
///                  orientation: .inverse)
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

    /// The two available layouts for this component
    private enum Layout {
        /// Switch selector with labled elements
        /// Details are defined in the ``OUDSSwitchLabel.Items``.
        case labeled(OUDSSwitchLabel.Items)
        /// Displays only the switch selector
        case selectorOnly
    }

    /// Used to define the orientation of the Layout
    public enum Orientation {
        // Switch selector in leading position, icon in trailing position, like LTR mode.
        case `default`
        /// Icon in leading position, switch selector in trailing position, like RTL mode
        case inverse
    }

    // MARK: Initializers

    /// Creates a switch with no label.
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines whether the switch is on
    ///     or off.
    public init(isOn: Binding<Bool>) {
        self.isOn = isOn
        self.layout = .selectorOnly
    }

    /// Creates a switch with label and optional helper text, icon, divider.
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines whether the switch is on
    ///     or off.
    ///   - labelText: The main label text of the switch.
    ///   - helperText: An additonal helper text.
    ///   - icon: An optional icon
    ///   - onError: It the option is on error
    ///   - divider: If true a divider is added at the bottom of the view.
    ///   - orientation: Specify the orientation of the layout. If Default the switch at the leading position, if inverse it is on trailing.
    public init(isOn: Binding<Bool>,
                labelText: String,
                helperText: String? = nil,
                icon: Image? = nil,
                onError: Bool = false,
                divider: Bool = false,
                orientation: Orientation = .default) {
        self.isOn = isOn
        self.layout = .labeled(.init(labelText: labelText, helperText: helperText, icon: icon, onError: onError, divider: divider, orientation: orientation))
    }

    // MARK: Body

    public var body: some View {
        switch layout {
        case .labeled(let items):
            Button("") {
                withAnimation(.easeInOut) {
                    isOn.wrappedValue.toggle()
                }
            }
            .buttonStyle(OUDSSwitchLabeledStyle(isOn: isOn.wrappedValue, items: items))
        case .selectorOnly:
            Button("") {
                withAnimation(.easeInOut) {
                    isOn.wrappedValue.toggle()
                }
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
