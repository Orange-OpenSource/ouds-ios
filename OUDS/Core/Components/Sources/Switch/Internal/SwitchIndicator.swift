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

struct SwitchIndicator: View {

    // MARK: Stored properties

    let internalState: ControlItemInternalState
    let isOn: Bool

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: Body

    var body: some View {
        HStack(alignment: .center) {
            Cursor(internalState: internalState, isOn: isOn)
        }
        .padding(.horizontal, spacePadding)
        .frame(width: trackWidth, height: trackHeight, alignment: cursorHorizontalAlignment)
        .background(trackColor.color(for: colorScheme))
        .clipShape(Capsule())
    }

    // MARK: Private Helpers

    private var cursorHorizontalAlignment: Alignment {
        isOn ? .trailing : .leading
    }

    private var spacePadding: Double {
        isOn ? theme.switch.switchSpacePaddingInlineSelected : theme.switch.switchSpacePaddingInlineUnselected
    }

    private var trackColor: MultipleColorSemanticTokens {
        switch internalState {
        case .enabled:
            return isOn ? theme.switch.switchColorTrackTrue : theme.switch.switchColorTrackFalse
        case .hover, .pressed:
            return isOn ? theme.switch.switchColorTrackTrueInteraction : theme.switch.switchColorTrackFalseInteraction
        case .disabled, .readOnly:
            return theme.colors.colorActionDisabled
        }
    }

    private var trackWidth: Double {
        Constants.inputSwitchSizeWidthTrack // TODO: use right token
    }

    private var trackHeight: Double {
        Constants.inputSwitchSizeHeightTrack // TODO: use right token
    }
}

struct Cursor: View {

    // MARK: Stored properties

    let internalState: ControlItemInternalState
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
        .shadow(elevation: theme.elevations.elevationRaised.elevation(for: colorScheme))
    }

    // MARK: Private helpers

    private var cursorWidth: Double {
        switch internalState {
        case .pressed:
            // TODO: Use token
            Constants.inputSwitchSizeWidthCursorPressed
        case .disabled, .enabled, .hover, .readOnly:
            // TODO: Use token
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

    @ViewBuilder
    private var tick: some View {
        if isOn {
            switch internalState {
            case .enabled, .disabled, .hover:
                Image(decorative: "ic_form_tick", bundle: Bundle.OUDSComponents)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .accessibilityHidden(true)
                    .foregroundStyle(tickColor.color(for: colorScheme))
            default:
                EmptyView()
            }
        }
    }
    private var tickColor: MultipleColorSemanticTokens {
        switch internalState {
        case .enabled, .hover, .pressed:
            return theme.switch.switchColorCheck
        case .disabled, .readOnly:
            return theme.colors.colorActionDisabled
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
