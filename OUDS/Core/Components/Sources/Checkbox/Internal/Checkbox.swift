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

/// The checkbox component with several layouts
struct Checkbox: View {

    // MARK: - Properties

    private let selectorOnly: Bool
    private let label: String?
    private let helper: String?
    private let icon: Image?
    private let isInversed: Bool
    private let hasDivider: Bool
    private let status: OUDSCheckbox.Status
    private let action: () -> Void

    @Environment(\.theme) private var theme

    // MARK: - Initializers

    init(status: OUDSCheckbox.Status,
         action: @escaping () -> Void) {
        selectorOnly = true
        label = nil
        helper = nil
        icon = nil
        isInversed = false
        hasDivider = false
        self.status = status
        self.action = action
    }

    init(label: String,
         isInversed: Bool,
         status: OUDSCheckbox.Status,
         hasDivider: Bool = false,
         action: @escaping () -> Void) {
        selectorOnly = false
        self.label = label
        helper = nil
        icon = nil
        self.isInversed = isInversed
        self.hasDivider = hasDivider
        self.status = status
        self.action = action
    }

    init(label: String,
         helper: String,
         isInversed: Bool,
         status: OUDSCheckbox.Status,
         hasDivider: Bool = false,
         action: @escaping () -> Void) {
        selectorOnly = false
        self.label = label
        self.helper = helper
        icon = nil
        self.isInversed = isInversed
        self.hasDivider = hasDivider
        self.status = status
        self.action = action
    }

    init(label: String,
         icon: Image,
         isInversed: Bool,
         status: OUDSCheckbox.Status,
         hasDivider: Bool = false,
         action: @escaping () -> Void) {
        selectorOnly = false
        self.label = label
        helper = nil
        self.icon = icon
        self.isInversed = isInversed
        self.hasDivider = hasDivider
        self.status = status
        self.action = action
    }

    init(label: String,
         helper: String,
         icon: Image,
         isInversed: Bool,
         status: OUDSCheckbox.Status,
         hasDivider: Bool = false,
         action: @escaping () -> Void) {
        selectorOnly = false
        self.label = label
        self.helper = helper
        self.icon = icon
        self.isInversed = isInversed
        self.hasDivider = hasDivider
        self.status = status
        self.action = action
    }

    // MARK: - Body

    var body: some View {
        appliedLayout()
            .padding(theme.select.selectSpacePaddingInset)
            .frame(minWidth: theme.listItem.listItemSizeMinWidth,
                   minHeight: theme.listItem.listItemSizeMinHeight)
            .accessibilityAddTraits(.isButton)
            .onTapGesture {
                action()
            }
            .border(Color.black, width: 1) // NOTE: #264 - Debug
    }

    // MARK: - Layouts

    @ViewBuilder
    private func appliedLayout() -> some View {
        if selectorOnly {
            selectorOnlyLayout()
        } else {
            defaultLayout()
        }
    }

    private func selectorOnlyLayout() -> some View {
        CheckboxSelector(isAlone: true, status: status)
            .accessibilityAddTraits(.isButton)
            .onTapGesture {
                action()
            }
            .modifier(OUDSCheckboxStyle(status: status, item: .checkbox))
    }

    // We are sure here label can be uwnrapped because of precondition above (selectorOnly)
    @ViewBuilder
    private func defaultLayout() -> some View {
        HStack(spacing: theme.listItem.listItemSpaceColumnGap) {
            if isInversed {
                if icon != nil {
                    Spacer()
                    image()
                }
                texts()
                selector()
            } else {
                selector()
                texts()
                if icon != nil {
                    Spacer()
                    image()
                }
            }
        }
    }

    private func selector() -> some View {
        CheckboxSelector(isAlone: false, status: status)
            .modifier(OUDSCheckboxStyle(status: status, item: .checkbox))
    }

    // swiftlint:disable force_unwrapping
    @ViewBuilder
    private func texts() -> some View {
        if let helper {
            VStack(spacing: theme.listItem.listItemSpaceRowGap) {
                Text(label!)
                    .typeLabelDefaultLarge(theme)
                    .modifier(OUDSCheckboxStyle(status: status, item: .label))

                Text(helper)
                    .typeLabelDefaultMedium(theme)
                    .modifier(OUDSCheckboxStyle(status: status, item: .helper))
            }
        } else {
            Text(label!)
                .typeLabelDefaultLarge(theme)
                .modifier(OUDSCheckboxStyle(status: status, item: .label))
        }
    }
    // swiftlint:enable force_unwrapping

    // swiftlint:disable force_unwrapping
    @ViewBuilder
    private func image() -> some View {
        icon!
        .frame(maxHeight: theme.checkRadio.checkRadioSizeMaxHeightAssetsContainer)
        .accessibilityHidden(true)
    }
    // swiftlint:enable force_unwrapping
}
