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

/// Uses an ``OUDSNavigationListItem``  object backed by a ``SwiftUICore/NavigationLink``
/// so as to use easily the navigation list item from OUDS inside the navigation of the app.
///
/// ## Code samples
///
/// ```swift
///     // Title will be used both for OUDSNavigationListItem label and navigation title
///     OUDSNavigationLink(title: "Title of my destination view") {
///         // The view to display when the user taps on the item
///         MyDestinationView()
///     }
/// ```
///
/// - Since: 2.2.0
public struct OUDSNavigationLink<Destination: View>: View {

    // MARK: - Properties

    /// The label of the ``OUDSNavigationListItem``, used then as naivgaiton title
    private let title: String
    /// The type of affordance for the ``OUDSNavigationListItem``, e.g. `.next` or `.back` to define the chevron.
    private let affordanceType: OUDSNavigationListItemAffordanceType
    /// The style to apply to the ``OUDSNavigationListItem``
    private let style: OUDSListItemContentStyle
    /// The ``SwiftUICore/View`` to display when the user taps on the element
    @ViewBuilder private let destination: () -> Destination

    /// Flag to know if the user taps the item or not, i.e. if `Destination` view must be displayed.
    @State private var isActive: Bool = false

    // MARK: - Initializers

    /// Defines an ``OUDSNavigationListItem`` backed by a ``SwiftUICore/NavigationLink``
    /// with a `Destination` ``SwiftUICore/View``  to display whe the user taps.
    ///
    /// - Parameters:
    ///    - title: The label for the ``OUDSNavigationListItem``
    ///    - affordanceType: The type of link to apply, default set to `.next`
    ///    - style: The type of style to apply, default set to `.standard(divider: false, background: false)`
    ///    - destination: A closure providing the view to display when the user taps the item.
    public init(title: String,
                affordanceType: OUDSNavigationListItemAffordanceType = .next,
                style: OUDSListItemContentStyle = .standard(divider: false, background: false),
                destination: @escaping () -> Destination)
    {
        self.title = title
        self.affordanceType = affordanceType
        self.style = style
        self.destination = destination
        isActive = false
    }

    // MARK: - Body

    public var body: some View {
        OUDSNavigationListItem(data: .init(label: title), affordanceType: affordanceType) {
            isActive = true
        }
        .oudsListItemStyle(style)
        .background {
            NavigationLink(destination: destination().navigationTitle(title), isActive: $isActive) {
                EmptyView()
            }
            .hidden()
        }
    }
}
