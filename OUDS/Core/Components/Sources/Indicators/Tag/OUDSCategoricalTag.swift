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

/// A `OUDSCategoricalTag` is a non-interactive label used to visually distinguish non-functional categories using categorical colours.
/// It can represent information such as promotions, events, benefits or other locally defined categories.
/// It does not communicate functional status or system feedback.
/// Use the `OUDSTag` for success, warning, error, availability or other functional states.
/// Use `OUDSCategoricalTag` tag only when its colour categories are defined by the product or local market guidelines.
///
/// Colors to use for categories are defined in `categorical tag` component tokens.
/// The `OUDSCategoricalTag` is today defined for Orange, Orange Compact and Wireframe themes, **but not for Sosh**.
///
/// ## Category
///
/// Categorical tags have five categories, each with its own background color.
///
/// **Only the Orange, Orange Compact, and Wireframe themes have such colors defined. Not Sosh.**
///
/// ## Shape
///
/// Tags can have two shapes:
///
/// - **Rounded**: A tag with fully rounded corners, creating a pill-shaped appearance.
///
/// - **Square**: A tag with sharp, square corners.
///
/// ## Size
///
/// Tags can have two sizes:
///
/// - **Default**: The standard tag size, suitable for most use cases.
///
/// - **Small**: A compact tag with reduced height and font size.
///
/// ## Layout
///
/// There are three available layouts:
///
/// - **Text only**: A tag that displays only text.
///
/// - **Text + Bullet**: A tag with a small indicator (dot) alongside the text.
///
/// - **Text + Icon**: A tag that includes an icon before the text.
///
/// ## Code samples
///
/// ```swift
///     // Text only with category 1, rounded shape, default size
///     OUDSCategoricalTag(label: "Label", category: .category1)
///
///     // Text with category 2 and bullet
///     OUDSCategoricalTag(label: "Label", category: .category2, leading: .bullet)
///
///     // Text with category 3 and custom icon
///     OUDSCategoricalTag(label: "Label", category: .category3, leading: .icon(OUDSImage(asset: Image(decorative: "ic_heart"))))
///
///     // Small size, square shape
///     OUDSCategoricalTag(label: "Label", category: .category4, shape: .square, size: .small)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-tag)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A categorical tag component in light and dark modes with Orange theme](component_categoricalTag_Orange)
///
/// ### Orange Compact
///
/// ![A categorical tag component in light and dark modes with Orange Compact theme](component_categoricalTag_OrangeCompact)
///
/// ### Sosh
///
/// ![A categorical tag component in light and dark modes with Sosh theme](component_categoricalTag_Sosh)
///
/// ### Wireframe
///
/// ![A categorical tag component in light and dark modes with Wireframe theme](component_categoricalTag_Wireframe)
///
/// - Version: 1.0.0
/// - Since: 3.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSCategoricalTag: View { // TODO: #1782 - Add hyperlink to design system documentation

    // MARK: - Properties

    private let category: Category
    private let shape: OUDSTag.Shape
    private let size: OUDSTag.Size
    private let leading: Leading
    private let label: String

    // MARK: - Configuration enums

    /// The category of a `OUDSCategoricalTag` determines the background color of the tag.
    ///
    /// - Since: 3.2.0
    @frozen public enum Category: CaseIterable {

        /// Category 1
        case category1

        /// Category 2
        case category2

        /// Category 3
        case category3

        /// Category 4
        case category4

        /// Category 5
        case category5
    }

    /// The leading element of a `OUDSCategoricalTag`.
    ///
    /// - Since: 3.2.0
    @frozen public enum Leading { // TODO: v4 - Mutualize with OUDSTag

        /// No leading element
        case none

        /// A bullet (dot) as leading element
        case bullet

        /// A custom icon as leading element
        case icon(OUDSImage)
    }

    // MARK: - Initializers

    /// Creates a categorical tag with a label and category.
    ///
    /// ```swift
    ///     OUDSCategoricalTag(label: "Label", category: .category1)
    /// ```
    ///
    /// - Parameters:
    ///    - label: The label displayed in the tag
    ///    - category: The category determining the background color. Default set to *category1*.
    ///    - leading: The leading element (bullet or icon). Default set to *none*.
    ///    - shape: The shape of the tag. Default set to *rounded*.
    ///    - size: The size of the tag. Default set to *default*.
    public init(label: String,
                category: Category = .category1,
                leading: Leading = .none,
                shape: OUDSTag.Shape = .rounded,
                size: OUDSTag.Size = .default)
    {
        self.label = label
        self.category = category
        self.leading = leading
        self.shape = shape
        self.size = size
    }

    /// Creates a categorical tag with a localized label, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSCategoricalTag(LocalizedStringKey("category_tag"), bundle: Bundle.module, category: .category2)
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - category: The category determining the background color. Default set to *category1*.
    ///    - leading: The leading element (bullet or icon). Default set to *none*.
    ///    - shape: The shape of the tag. Default set to *rounded*.
    ///    - size: The size of the tag. Default set to *default*.
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                category: Category = .category1,
                leading: Leading = .none,
                shape: OUDSTag.Shape = .rounded,
                size: OUDSTag.Size = .default)
    {
        let resolvedLabel = key.resolved(tableName: tableName, bundle: bundle)
        self.init(label: resolvedLabel, category: category, leading: leading, shape: shape, size: size)
    }

    // MARK: - Body

    public var body: some View {
        Label {
            CategoricalTagLabel(size: size, label: label)
        } icon: {
            CategoricalTagIcon(size: size, leading: leading)
        }
        .modifier(TagPaddingsAndSizeModifier(size: size, hasIcon: hasIcon))
        .modifier(CategoricalTagBackgroundModifier(category: category))
        .modifier(TagShapeModifier(shape: shape))
        .accessibilityLabel(label)
    }

    // MARK: - Helpers

    private var hasIcon: Bool {
        switch leading {
        case .icon, .bullet:
            true
        case .none:
            false
        }
    }
}
