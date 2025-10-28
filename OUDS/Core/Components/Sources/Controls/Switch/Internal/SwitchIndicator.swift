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

    // MARK: Body

    var body: some View {
        Cursor(interactionState: interactionState, isOn: isOn)
            .padding(.horizontal, spacePadding)
            .frame(width: trackWidth, height: trackHeight, alignment: cursorHorizontalAlignment)
            .oudsBackground(trackColor)
            .clipShape(RoundedRectangle(cornerRadius: theme.switch.switchBorderRadiusTrack))
            .animation(.timingCurve(0.2, 0, 0, 1, duration: 0.150), value: cursorHorizontalAlignment)
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
            isOn ? theme.switch.switchColorTrackSelected : theme.switch.switchColorTrackUnselected
        case .hover, .pressed:
            isOn ? theme.switch.switchColorTrackSelectedInteraction : theme.switch.switchColorTrackUnselectedInteraction
        case .disabled, .readOnly:
            theme.colors.actionDisabled
        }
    }

    private var trackWidth: Double {
        theme.switch.switchSizeWidthTrack
    }

    private var trackHeight: Double {
        theme.switch.switchSizeHeightTrack
    }
}

private struct Cursor: View {

    // MARK: Stored properties

    let interactionState: InteractionState
    let isOn: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        HStack(alignment: .center) {
            Image(decorative: "ic_switch_selected", bundle: theme.resourcesBundle)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .foregroundStyle(tickColor)
                .opacity(theme.switch.switchOpacityCheck)
        }
        .frame(width: cursorWidth, height: cursorHeight, alignment: .center)
        .oudsBackground(theme.switch.switchColorCursor)
        .clipShape(RoundedRectangle(cornerRadius: theme.switch.switchBorderRadiusCursor))
        .oudsShadow(theme.elevations.elevationRaised)
        .animation(Animation.timingCurve(0.2, 0, 0, 1, duration: 0.150), value: cursorWidth)
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

    private var tickColor: Color {
        if isOn {
            switch interactionState {
            case .enabled, .hover:
                theme.switch.switchColorCheck.color(for: colorScheme)
            case .pressed:
                Color.clear
            case .disabled, .readOnly:
                theme.colors.actionDisabled.color(for: colorScheme)
            }
        } else {
            Color.clear
        }
    }
}
