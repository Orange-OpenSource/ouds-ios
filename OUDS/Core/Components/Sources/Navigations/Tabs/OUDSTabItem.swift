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

#if !os(watchOS)
import SwiftUI

/// The content of an item in ``OUDSLineTabs`` or ``OUDSContainedTabs``.
///
/// Tags must be unique within a group of tabs. Labels and descriptions support raw,
/// localized and rich text. Images are decorative: the label describes the tab.
/// The application owns the selected content; tabs only update the selection binding.
@available(iOS 15, macOS 13, tvOS 16, visionOS 1, *)
public struct OUDSTabItem<Tag: Hashable> {

    /// Stable, unique value identifying the tab.
    public let tag: Tag
    /// The visible label of the tab.
    public let label: OUDSTextualContent
    /// An optional description below the label.
    public let description: OUDSTextualContent?
    /// An optional decorative image.
    public let image: OUDSImage?
    /// An optional badge or tag, displayed at the trailing edge of the label or asset.
    public let trailing: OUDSTabItemTrailing?
    /// Whether this tab can be selected.
    public let isEnabled: Bool
    /// Optional identifier for UI automation.
    public let accessibilityIdentifier: String?

    /// Creates a tab. Provide a nonempty label and a tag unique within its group.
    ///
    /// - Parameters:
    ///   - tag: The value written to the selection binding when activated.
    ///   - label: The visible and accessible label. In asset-only layout it is used only by assistive technologies.
    ///   - description: Optional secondary text.
    ///   - image: Optional decorative image, without SwiftUI modifiers on its asset.
    ///   - trailing: Optional badge or tag. Badge sizes are enforced by the tabs component.
    ///   - isEnabled: Whether the tab can be activated. Defaults to `true`.
    ///   - accessibilityIdentifier: Optional identifier for UI automation.
    public init(
        tag: Tag,
        label: OUDSTextualContent,
        description: OUDSTextualContent? = nil,
        image: OUDSImage? = nil,
        trailing: OUDSTabItemTrailing? = nil,
        isEnabled: Bool = true,
        accessibilityIdentifier: String? = nil)
    {
        self.tag = tag
        self.label = label
        self.description = description
        self.image = image
        self.trailing = trailing
        self.isEnabled = isEnabled
        self.accessibilityIdentifier = accessibilityIdentifier
    }
}

/// Layout shared by all items in a group of tabs.
@available(iOS 15, macOS 13, tvOS 16, visionOS 1, *)
@frozen public enum OUDSTabsLayout {
    /// A visible label, without an asset.
    case textOnly
    /// An asset before the label, respecting the reading direction.
    case textAndLeadingAsset
    /// An asset above the label.
    case textAndTopAsset
    /// An asset without visible text. The item's label is still required for accessibility.
    case assetOnly

    var hasAsset: Bool { self != .textOnly }
    var hasText: Bool { self != .assetOnly }
}
#endif
