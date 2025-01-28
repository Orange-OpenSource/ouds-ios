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

import SwiftUI

/// The internal state used by modifiers to handle all states of the button.
enum InternalSwitchState {
    case enabled, hover, pressed, disabled
}

/// Just here to catch the isPressed state on the button
struct SwitchButtonStyle: ButtonStyle {

    // MARK: Stored properties

    @Environment(\.isEnabled) private var isEnabled
    @State private var isHover: Bool = false
    let isOn: Bool

    // MARK: Body

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .onHover { isHover in
                self.isHover = isHover
            }
            .modifier(SwitchButtonModifier(internalState: internalState(isPressed: configuration.isPressed), isOn: isOn))
    }

    // MARK: Private Helpers

    private func internalState(isPressed: Bool) -> InternalSwitchState {
        if !isEnabled {
            return .disabled
        }

        if isPressed {
            return .pressed
        }

        if isHover {
            return .hover
        }

        return .enabled
    }
}

struct SwitchButtonModifier: ViewModifier {

    // MARK: Stored properties

    let internalState: InternalSwitchState
    let isOn: Bool

    // MARK: Body

    func body(content: Content) -> some View {
        HStack(alignment: .center, spacing: 10) {
            HStack(alignment: .center, spacing: 10) {
                cursor
            }
            .padding(10)
            .frame(width: cursorWidth, height: cursorHeight, alignment: .center)
            .background(Constants.inputSwitchColorCursor)
            .cornerRadius(Constants.borderRadiusPill)
            .shadow(color: Constants.elevationColorRaised, radius: Constants.elevationBlurRaised / 2, x: Constants.elevationXRaised, y: Constants.elevationYRaised)
        }
        .padding(.horizontal, spacePadding)
        .padding(.vertical, 0)
        .frame(width: Constants.inputSwitchSizeWidthTrack, height: Constants.inputSwitchSizeHeightTrack, alignment: cursorHorizontalAlignment)
        .background(trackColor)
        .cornerRadius(Constants.borderRadiusPill)
    }

    // MARK: Private Helpers

    private var cursorWidth: Double {
        switch internalState {
        case .pressed:
            Constants.inputSwitchSizeWidthCursorPressed
        case .disabled, .enabled, .hover:
            isOn ? Constants.inputSwitchSizeWidthCursorTrue : Constants.inputSwitchSizeWidthCursorFalse
        }
    }

    private var cursorHeight: Double {
        isOn ? Constants.inputSwitchSizeWidthCursorTrue : Constants.inputSwitchSizeWidthCursorFalse
    }

    private var cursorHorizontalAlignment: Alignment {
        isOn ? .trailing : .leading
    }

    private var spacePadding: Double {
        isOn ? Constants.inputSwitchSpacePaddingInlineTrue : Constants.inputSwitchSpacePaddingInlineFalse
    }

    private var trackColor: Color {
        isOn ? .green : .gray
    }

    @ViewBuilder
    private var cursor: some View {
        switch internalState {
        case .enabled, .disabled, .hover:
            Image(decorative: "Tick")
        default:
            Circle().fill(Color.white)
        }
    }
}

// swiftlint:disable convenience_type
struct Constants {
    static let inputSwitchColorTrackTrue = Color(red: 0.24, green: 0.89, blue: 0.35)
    static let borderRadiusPill: CGFloat = 2_000.0
    static let inputSwitchSizeWidthTrack: CGFloat = 56
    static let inputSwitchSizeHeightTrack: CGFloat = 32
    static let inputSwitchSpacePaddingInlineTrue: CGFloat = 4
    static let inputSwitchColorCursor: Color = .white
    static let inputSwitchSizeWidthCursorTrue: CGFloat = 24
    static let elevationXRaised: CGFloat = 0
    static let elevationYRaised: CGFloat = 1
    static let elevationBlurRaised: CGFloat = 2
    static let elevationColorRaised: Color = .black.opacity(0.32)
    static let inputSwitchColorTrackFalse: Color = .black.opacity(0.44)
    static let inputSwitchSpacePaddingInlineFalse: CGFloat = 8
    static let inputSwitchSizeWidthCursorFalse: CGFloat = 16
    static let inputSwitchSizeWidthCursorPressed: CGFloat = 32
}
// swiftlint:enable convenience_type
