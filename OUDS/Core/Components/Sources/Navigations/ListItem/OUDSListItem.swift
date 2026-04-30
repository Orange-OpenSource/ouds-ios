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

/// ListItem is a navigation UI element used to display a row of content within a list.
/// It typically contains a title, an optional subtitle, an optional leading icon,
/// and an optional trailing element (like a chevron or an action).
/// ListItem helps users navigate between sections or screens.
///
/// ## Code samples
///
/// ```swift
///     // Simple list item with title only
///     OUDSListItem(title: "Settings") {
///         // Navigate to settings
///     }
///
///     // List item with title and subtitle
///     OUDSListItem(title: "Profile", subtitle: "Edit your profile information") {
///         // Navigate to profile
///     }
///
///     // List item with icon, title, subtitle and trailing chevron
///     OUDSListItem(title: "Notifications",
///                  subtitle: "Manage your notifications",
///                  leadingIcon: Image(systemName: "bell")) {
///         // Navigate to notifications
///     }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-listitem)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.5.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListItem: View {

    // MARK: - Stored Properties

    private let layoutData: ControlItemData
    private let action: (() -> Void)?

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: - Initializer

    /// Creates a list item with a title, an optional subtitle, an optional leading icon,
    /// and an optional trailing chevron indicator.
    ///
    /// ```swift
    ///     OUDSListItem(title: "Settings",
    ///                  subtitle: "App settings",
    ///                  leadingIcon: Image(systemName: "gear")) {
    ///         // Navigate to settings
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///   - label: The main label text of the item, must not be empty
    ///   - overline: An optinal text can be added above the label, default set to `nil`
    ///   - extraLabel: An additional label text of the item, default set to `nil`
    ///   - description: A description, like an helper text, should not be empty, default set to `nil`
    ///   - helperText: An optional helper text added under all labels
    ///   - isOutlined: Flag to get an outlined item, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///   - action: An additional action to trigger when the radio button has been pressed
    ///    @available(*, deprecated, message: "Use instead OUDSCheckboxItem(:isOn:)")
    public init(label: String,
                overline: String? = nil,
                extraLabel: String? = nil,
                description: String? = nil,
                helperText: String? = nil,
                isOutlined: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                action: (() -> Void)? = nil)
    {
        let helperTextContent: TextualContent? = if let helperText {
            .raw(helperText)
        } else {
            nil
        }

        let texts = ControlItemData.Texts(label: label.localized(),
                                          overline: overline,
                                          extraLabel: extraLabel?.localized(),
                                          description: description?.localized())
        let style = ControlItemData.Style(isOutlined: isOutlined,
                                          isError: false,
                                          helperErrorText: helperTextContent,
                                          isReadOnly: isReadOnly,
                                          hasDivider: hasDivider,
                                          constrainedMaxWidth: false,
                                          isReversed: false)
        layoutData = .init(texts: texts, style: style)
        self.action = action
    }

    // MARK: - Body

    public var body: some View {
        ListControlItem(layoutData: layoutData, isSelected: false, action: action) {
            EmptyView()
        } trailing: {
            EmptyView()
        }
    }

    // MARK: - Helpers

    private var chevronImage: some View {
        Image(decorative: layoutDirection == .rightToLeft ? "ic_link_previous" : "ic_link_next",
              bundle: theme.resourcesBundle)
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 16, height: 16)
    }
}
