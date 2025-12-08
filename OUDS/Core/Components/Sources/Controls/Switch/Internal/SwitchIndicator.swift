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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// MARK: - Switch Indicator

/// The indicator of the switch.
/// Its content depends mainly to the ``InteractionState`` and from flags also.
struct SwitchIndicator: View {

    // MARK: Stored properties

    let interactionState: InteractionState
    @Binding var isOn: Bool

    @State private var offset = CGSize.zero
    @State private var isDragging: Bool = false

    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        Cursor(interactionState: interactionStateComputed, isOn: isOn)
            .padding(.horizontal, padding)
            .frame(width: trackWidth, height: trackHeight, alignment: cursorHorizontalAlignment)
            .oudsBackground(trackColor)
            .clipShape(RoundedRectangle(cornerRadius: theme.switch.borderRadiusTrack))
            .animation(.timingCurve(0.2, 0, 0, 1, duration: 0.150), value: cursorHorizontalAlignment)
        #if os(iOS)
            .modifier(VibrateModifier(isOn: $isOn))
        #endif
        #if os(iOS) || os(visionOS) || os(macOS)
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    if !(interactionState == .disabled || interactionState == .readOnly) {

                        isDragging = true
                        offset = gesture.translation

                        if offset.width >= 10 {
                            isOn = true
                        }

                        if offset.width <= -10 {
                            isOn = false
                        }
                    }
                }
                .onEnded { _ in
                    isDragging = false
                })
        #endif
    }

    // MARK: Private Helpers

    private var interactionStateComputed: InteractionState {
        if isDragging {
            return .pressed
        }
        return interactionState
    }

    private var cursorHorizontalAlignment: Alignment {
        isOn ? .trailing : .leading
    }

    private var padding: Double {
        isOn ? theme.switch.spacePaddingInlineSelected : theme.switch.spacePaddingInlineUnselected
    }

    private var trackColor: MultipleColorSemanticTokens {
        switch interactionState {
        case .enabled:
            isOn ? theme.switch.colorTrackSelected : theme.switch.colorTrackUnselected
        case .hover, .pressed:
            isOn ? theme.switch.colorTrackSelectedInteraction : theme.switch.colorTrackUnselectedInteraction
        case .readOnly:
            theme.colors.actionReadOnlySecondary
        case .disabled:
            theme.colors.actionDisabled
        }
    }

    private var trackWidth: Double {
        theme.switch.sizeWidthTrack
    }

    private var trackHeight: Double {
        theme.switch.sizeHeightTrack
    }
}

// MARK: - Cursor

private struct Cursor: View {

    // MARK: Stored properties

    let interactionState: InteractionState
    let isOn: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        HStack(alignment: .center) {
            Image(decorative: "Switch/ic_switch_selected", bundle: theme.resourcesBundle)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .foregroundStyle(tickColor)
                .opacity(theme.switch.opacityCheck)
        }
        .frame(width: cursorWidth, height: cursorHeight, alignment: .center)
        .oudsBackground(theme.switch.colorCursor)
        .clipShape(RoundedRectangle(cornerRadius: theme.switch.borderRadiusCursor))
        .oudsShadow(theme.elevations.raised)
        .animation(Animation.timingCurve(0.2, 0, 0, 1, duration: 0.150), value: cursorWidth)
    }

    // MARK: Private helpers

    private var cursorWidth: Double {
        switch interactionState {
        case .pressed:
            isOn ? theme.switch.sizeWidthCursorSelectedPressed : theme.switch.sizeWidthCursorUnselectedPressed
        case .disabled, .enabled, .hover, .readOnly:
            isOn ? theme.switch.sizeWidthCursorSelected : theme.switch.sizeWidthCursorUnselected
        }
    }

    private var cursorHeight: Double {
        isOn ? theme.switch.sizeHeightCursorSelected : theme.switch.sizeHeightCursorUnselected
    }

    private var tickColor: Color {
        if isOn {
            switch interactionState {
            case .enabled, .hover:
                theme.switch.colorCheck.color(for: colorScheme)
            case .pressed:
                Color.clear
            case .readOnly:
                theme.colors.actionReadOnlyPrimary.color(for: colorScheme)
            case .disabled:
                theme.colors.actionDisabled.color(for: colorScheme)
            }
        } else {
            Color.clear
        }
    }
}

// MARK: - Vibrate Modifier

#if os(iOS)
private struct VibrateModifier: ViewModifier {

    @Binding var isOn: Bool

    func body(content: Content) -> some View {
        if #available(iOS 17.0, *) {
            content.onChange(of: isOn) {
                VibrationsManager.warning()
            }
        } else {
            content.onChange(of: isOn) { _ in
                VibrationsManager.warning()
            }
        }
    }
}
#endif
