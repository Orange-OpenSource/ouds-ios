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
import OUDSTokensSemantic
import SwiftUI

struct OUDSSwitchButton: View {

    // MARK: Stored properties

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    let internalState: InternalSwitchState
    let isOn: Bool

    // MARK: Body

    var body: some View {
        HStack(alignment: .center) {
            HStack(alignment: .center) {
                cursor
            }
            .frame(width: cursorWidth, height: cursorHeight, alignment: .center)
            .background(corsorBackgroundColor)
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

    private var corsorBackgroundColor: Color {
        theme.switch.switchColorCursor.color(for: colorScheme)
    }

    private var cursorHorizontalAlignment: Alignment {
        isOn ? .trailing : .leading
    }

    private var spacePadding: Double {
        isOn ? theme.switch.switchSpacePaddingInlineTrue : theme.switch.switchSpacePaddingInlineFalse
    }

    private var trackColor: Color {
        switch internalState {
        case .enabled:
            return (isOn ? theme.switch.switchColorTrackTrue : theme.switch.switchColorTrackFalse)
                .color(for: colorScheme)
        case .hover, .pressed:
            return (isOn ? theme.switch.switchColorTrackTrueInteraction : theme.switch.switchColorTrackFalseInteraction).color(for: colorScheme)
        case .disabled:
            return theme.colors.colorActionDisabled.color(for: colorScheme)
        }
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
                    .foregroundStyle(cursorColor)
            default:
                EmptyView()
            }
        }
    }
    private var cursorColor: Color {
        switch internalState {
        case .enabled, .hover, .pressed:
            return theme.switch.switchColorCheck.color(for: colorScheme)
        case .disabled:
            return theme.colors.colorActionDisabled.color(for: colorScheme)
        }
    }
}
