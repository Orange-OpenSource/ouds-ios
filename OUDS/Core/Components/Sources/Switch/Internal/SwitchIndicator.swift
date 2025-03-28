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

/// The indicator of the switch.
/// Its content depends mainly to the ``InteractionState`` and from flags also.
struct SwitchIndicator: View {

    // MARK: Stored properties

    let interactionState: InteractionState
    let isOn: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        HStack(alignment: .center) {
            Cursor(interactionState: interactionState, isOn: isOn)
        }
        .padding(.horizontal, spacePadding)
        .frame(width: trackWidth, height: trackHeight, alignment: cursorHorizontalAlignment)
        .background(trackColor.color(for: colorScheme))
        .clipShape(Capsule())
        .animation(Animation.timingCurve(0.2, 0, 0, 1, duration: 0.150), value: trackWidth)
    }

    // MARK: Private Helpers

    private var cursorHorizontalAlignment: Alignment {
        isOn ? .trailing : .leading
    }

    private var spacePadding: Double {
        isOn ? theme.switch.switchSpacePaddingInlineSelected : theme.switch.switchSpacePaddingInlineUnselected
    }

    private var trackColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .enabled:
            return isOn ? theme.switch.switchColorTrackSelected : theme.switch.switchColorTrackUnselected
        case .hover, .pressed:
            return isOn ? theme.switch.switchColorTrackSelectedInteraction : theme.switch.switchColorTrackUnselectedInteraction
        case .disabled, .readOnly:
            return theme.colors.colorActionDisabled
        }
    }

    private var trackWidth: Double {
        theme.switch.switchSizeWidthTrack
    }

    private var trackHeight: Double {
        theme.switch.switchSizeHeightTrack
    }
}

struct Cursor: View {

    // MARK: Stored properties

    let interactionState: InteractionState
    let isOn: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        HStack(alignment: .center) {
            tick
        }
        .frame(width: cursorWidth, height: cursorHeight, alignment: .center)
        .background(corsorBackgroundColor)
        .clipShape(Capsule())
        .oudsShadow(theme.elevations.elevationRaised)
    }

    // MARK: Private helpers

    private var cursorWidth: Double {
        switch interactionState {
        case .pressed:
            isOn ? theme.switch.switchSizeWidthCursorSelectedPressed : theme.switch.switchSizeWidthCursorUnselectedPressed
        case .disabled, .enabled, .hover, .readOnly:
            isOn ? theme.switch.switchSizeWidthCursorSelected : theme.switch.switchSizeWidthCursorUnselected
        }
    }

    private var cursorHeight: Double {
        isOn ? theme.switch.switchSizeHeightCursorSelected : theme.switch.switchSizeHeightCursorUnselected
    }

    private var corsorBackgroundColor: Color {
        theme.switch.switchColorCursor.color(for: colorScheme)
    }

    @ViewBuilder
    private var tick: some View {
        if isOn {
            switch interactionState {
            case .enabled, .disabled, .hover:
                Image(decorative: "ic_form_tick", bundle: Bundle.OUDSComponents)
                    .renderingMode(.template)
                    .foregroundStyle(tickColor.color(for: colorScheme))
                    .opacity(theme.switch.switchOpacityCheck)
            default:
                EmptyView()
            }
        }
    }
    private var tickColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .enabled, .hover, .pressed:
            return theme.switch.switchColorCheck
        case .disabled, .readOnly:
            return theme.colors.colorActionDisabled
        }
    }
}
