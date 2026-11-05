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

#if !os(tvOS) && !os(watchOS) && !os(visionOS)
// Component available only for iOS, but macOS not excluded to allow documentation build
import SwiftUI

/// Uses an ``OUDSNavigationListItem``  object backed by a `NavigationLink`
/// so as to use easily the navigation list item from OUDS inside the navigation of the app.
///
/// ## Code samples
///
/// ```swift
///     // The label of data will be used both for OUDSNavigationListItem label and navigation title
///     OUDSNavigationLink(data: OUDSListItemData(label: .textual("Title of my destination view"))) {
///         // The view to display when the user taps on the item
///         MyDestinationView()
///     }
///
///     // Same content options as OUDSNavigationListItem: data, leading and trailing
///     OUDSNavigationLink(
///         data: OUDSListItemData(label: "Profile", description: "View your profile"),
///         leading: .avatar(OUDSListItemAvatar(type: .icon, size: .medium)),
///         trailing: .text(.labelMuted(Text("Details")))
///     ) {
///         MyProfileView()
///     }
/// ```
///
/// The initializers taking a `title` or a `LocalizedStringKey` are deprecated since 3.3.0,
/// see `MIGRATION.md` section `v3.2.0 → v3.3.0`.
///
/// - Since: 3.0.0
@available(iOS 15, *)
public struct OUDSNavigationLink<Destination: View>: View {

    // MARK: - Properties

    /// The data of the ``OUDSNavigationListItem``, its label being used as navigation title
    private let data: OUDSListItemData

    /// An optional element displayed at the leading position (before the texts)
    private let leading: OUDSListItemLeading?

    /// An optional element displayed at the trailing position (after the texts)
    private let trailing: OUDSListItemTrailing?

    /// The type of indicator for the ``OUDSNavigationListItem``, e.g. `.next` or `.previous` to define the chevron.
    private let indicatorType: OUDSNavigationListItemIndicatorType

    /// The style to apply to the ``OUDSNavigationListItem``
    private let style: OUDSListItemContentStyle

    /// The ``SwiftUICore/View`` to display when the user taps on the element
    @ViewBuilder private let destination: () -> Destination

    /// Flag to know if the user taps the item or not, i.e. if `Destination` view must be displayed.
    @State private var isActive: Bool = false

    // MARK: - Initializers

    /// Defines an ``OUDSNavigationListItem`` backed by a `NavigationLink`
    /// with a `Destination` ``SwiftUICore/View``  to display whe the user taps,
    /// with the same content options as ``OUDSNavigationListItem``.
    ///
    /// The label of `data` is used as navigation title of the destination.
    ///
    /// - Parameters:
    ///    - data: The data of the item, including label, description, overline, extra label, slots and helper text.
    ///    - indicatorType: The type of link to apply, default set to `.next`
    ///    - leading: An optional element displayed at the leading position (before the texts).
    ///      **Note:** Ignored when `indicatorType` is `.previous`.
    ///    - trailing: An optional element displayed at the trailing position (after the texts).
    ///    - style: The type of style to apply, default set to `.item(divider: true, background: false)`
    ///    - destination: A closure providing the view to display when the user taps the item.
    ///
    /// - Since: 3.3.0
    public init(data: OUDSListItemData,
                indicatorType: OUDSNavigationListItemIndicatorType = .next,
                leading: OUDSListItemLeading? = nil,
                trailing: OUDSListItemTrailing? = nil,
                style: OUDSListItemContentStyle = .item(divider: true, background: false),
                destination: @escaping () -> Destination)
    {
        self.data = data
        self.indicatorType = indicatorType
        self.leading = leading
        self.trailing = trailing
        self.style = style
        self.destination = destination
        isActive = false
    }

    // MARK: - Body

    public var body: some View {
        OUDSNavigationListItem(data: data,
                               indicatorType: indicatorType,
                               leading: leading,
                               trailing: trailing)
        {
            isActive = true
        }
        .oudsListContentStyle(style)
        .background {
            NavigationLink(destination: destination().navigationTitle(data.labelContent.stringValue), isActive: $isActive) {
                EmptyView()
            }
            .hidden()
        }
    }
}
#endif
