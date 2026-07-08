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
///     // Title will be used both for OUDSNavigationListItem label and navigation title
///     OUDSNavigationLink(title: "Title of my destination view") {
///         // The view to display when the user taps on the item
///         MyDestinationView()
///     }
/// ```
///
/// - Since: 2.2.0
@available(iOS 15, *)
public struct OUDSNavigationLink<Destination: View>: View {

    // MARK: - Properties

    /// The label of the ``OUDSNavigationListItem``, used then as naivgaiton title
    private let title: String
    /// Set to `true`  if the label must be bold, false otherwise
    private let isBoldLabel: Bool
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
    /// with a `Destination` ``SwiftUICore/View``  to display whe the user taps.
    ///
    /// - Parameters:
    ///    - title: The label for the ``OUDSNavigationListItem``
    ///    - isBoldLabel: Flag to rise if title must be bold or not, default set to *false*
    ///    - indicatorType: The type of link to apply, default set to `.next`
    ///    - style: The type of style to apply, default set to `.standard(divider: false, background: false)`
    ///    - destination: A closure providing the view to display when the user taps the item.
    public init(title: String,
                isBoldLabel: Bool = false,
                indicatorType: OUDSNavigationListItemIndicatorType = .next,
                style: OUDSListItemContentStyle = .standard(.backgroundOnInteractionOnly(withDivider: true)),
                destination: @escaping () -> Destination)
    {
        self.title = title
        self.isBoldLabel = isBoldLabel
        self.indicatorType = indicatorType
        self.style = style
        self.destination = destination
        isActive = false
    }

    /// Defines an ``OUDSNavigationListItem`` backed by a `NavigationLink`
    /// with a `Destination` ``SwiftUICore/View``  to display whe the user taps.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - isBoldLabel: Flag to rise if title must be bold or not, default set to *false*
    ///    - indicatorType: The type of link to apply, default set to `.next`
    ///    - style: The type of style to apply, default set to `.standard(divider: false, background: false)`
    ///    - destination: A closure providing the view to display when the user taps the item.
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                isBoldLabel: Bool = false,
                indicatorType: OUDSNavigationListItemIndicatorType = .next,
                style: OUDSListItemContentStyle = .standard(.backgroundOnInteractionOnly(withDivider: true)),
                destination: @escaping () -> Destination)
    {
        self.init(title: key.resolved(tableName: tableName, bundle: bundle),
                  isBoldLabel: isBoldLabel,
                  indicatorType: indicatorType,
                  style: style,
                  destination: destination)
    }

    // MARK: - Body

    public var body: some View {
        OUDSNavigationListItem(data: .init(label: title, isBoldLabel: isBoldLabel), indicatorType: indicatorType) {
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
#endif
