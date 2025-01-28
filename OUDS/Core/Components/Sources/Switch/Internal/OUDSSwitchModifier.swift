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

import OUDS
import OUDSTokensComponent
import OUDSTokensRaw
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

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let internalState: InternalSwitchState
    let isOn: Bool

    // MARK: Body
    func body(content: Content) -> some View {
        HStack(alignment: .center) {
            HStack(alignment: .center) {
                cursor
            }
            .frame(width: cursorWidth, height: cursorHeight, alignment: .center)
            .background(corsorColor)
            .clipShape(Capsule())
            .shadow(elevation: theme.elevations.elevationRaised.elevation(for: colorScheme))
        }
        .padding(.horizontal, spacePadding)
        .frame(width: trackrWidth, height: trackHeight, alignment: cursorHorizontalAlignment)
        .background(trackColor)
        .clipShape(Capsule())
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
        // TODO: Use token
        isOn ? Constants.inputSwitchSizeWidthCursorTrue : Constants.inputSwitchSizeWidthCursorFalse
    }

    private var corsorColor: Color {
        theme.switch.switchColorCursor.color(for: colorScheme)
    }

    private var cursorHorizontalAlignment: Alignment {
        isOn ? .trailing : .leading
    }

    private var spacePadding: Double {
        isOn ? theme.switch.switchSpacePaddingInlineTrue : theme.switch.switchSpacePaddingInlineFalse
    }

    private var trackColor: Color {
        (isOn ? theme.switch.switchColorTrackTrue : theme.switch.switchColorTrackFalse)
            .color(for: colorScheme)
    }
    private var trackrWidth: Double {
        Constants.inputSwitchSizeWidthTrack
    }

    private var trackHeight: Double {
        // TODO: use token
        Constants.inputSwitchSizeHeightTrack
    }

    @ViewBuilder
    private var cursor: some View {
        if isOn {
            switch internalState {
            case .enabled, .disabled, .hover:
                // TODO: when, Link is merged, use right asset in ouds bundle not in main
                Image(decorative: "Tick")
                    .renderingMode(.template)
                    .foregroundStyle(theme.switch.switchColorCheck.color(for: colorScheme))
            default:
                EmptyView()
            }
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
