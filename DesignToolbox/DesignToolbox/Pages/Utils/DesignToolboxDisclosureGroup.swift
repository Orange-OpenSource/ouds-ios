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

import OUDSTokensSemantic
import SwiftUI

/// The disclosure group used in Design tool box to have the same bahaviour on the header (arrow) and for all contents displayed.
/// As the `DesignToolboxDisclosureGroupStyle` is not available for ios versions below 16, the feature is mutualize in `InternalDisclosure`
struct DesignToolboxDisclosureGroup<Label, Content>: View where Label: View, Content: View {

    // MARK: Stored properties

    private let label: () -> Label
    private let content: () -> Content
    private let accessibilityLabel: String
    @Binding private var isExpanded: Bool
    @Environment(\.theme) private var theme

    // MARK: Initializer

    /// Creates a disclosure group with the given label and content views, and
    /// a binding to the expansion state (expanded or collapsed).
    ///
    /// - Parameters:
    ///   - isExpanded: A binding to a Boolean value that determines the group's
    ///    expansion state (expanded or collapsed).
    ///   - accessibilityLabel: Accessibility label to vocalize what the user will see when expended.
    ///   - content: The content shown when the disclosure group expands.
    ///   - label: A view that describes the content of the disclosure group.
    init(isExpanded: Binding<Bool>, accessibilityLabel: String, @ViewBuilder content: @escaping () -> Content, @ViewBuilder label: @escaping () -> Label) {
        self._isExpanded = isExpanded
        self.content = content
        self.label = label
        self.accessibilityLabel = accessibilityLabel
    }

    // MARK: Body

    var body: some View {
        if #available(iOS 16.0, *) {
            DisclosureGroup(isExpanded: $isExpanded, content: content, label: label)
                .disclosureGroupStyle(DesignToolboxDisclosureGroupStyle(accessibilityLabel: accessibilityLabel))
        } else {
            InternalDisclosure(isExpanded: $isExpanded, accessibilityLabel: accessibilityLabel, content: content, label: label)
        }
    }
}

@available(iOS 16.0, *)
struct DesignToolboxDisclosureGroupStyle: DisclosureGroupStyle {

    let accessibilityLabel: String

    func makeBody(configuration: Configuration) -> some View {
        InternalDisclosure(isExpanded: configuration.$isExpanded, accessibilityLabel: accessibilityLabel) {
            configuration.content
        } label: {
            configuration.label
        }
    }
}

/// Implemennt the feature of disclosure.
struct InternalDisclosure<Label, Content>: View where Label: View, Content: View {

    // MARK: Stored properties

    private let label: () -> Label
    private let content: () -> Content
    private let accessibilityLabel: String
    @Binding private var isExpanded: Bool
    @Environment(\.theme) private var theme

    // MARK: Initializer

    init(isExpanded: Binding<Bool>, accessibilityLabel: String, @ViewBuilder content: @escaping () -> Content, @ViewBuilder label: @escaping () -> Label) {
        self.label = label
        self.content = content
        self.accessibilityLabel = accessibilityLabel
        self._isExpanded = isExpanded
    }

    // MARK: Body

    var body: some View {
        VStack {
            Button {
                withAnimation {
                    isExpanded.toggle()
                }
            } label: {
                HStack(alignment: .center, spacing: 0) {
                    label()
                    Spacer()
                    Image("ic_chevron-up")
                        .resizable()
                        .renderingMode(.template)
                        .rotationEffect(Angle.degrees(isExpanded ? 0 : 180))
                        .oudsForegroundColor(theme.colors.colorSurfaceBrandPrimary)
                        .frame(width: 20, height: 20)
                        .padding(.trailing, theme.spaces.spacePaddingInlineMedium)
                        .accessibilityLabel(accessibilityLabel.localized())
                }
            }
            .buttonStyle(.plain)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, theme.spaces.spacePaddingBlockShort)

            if isExpanded {
                content()
            }
        }
    }
}
