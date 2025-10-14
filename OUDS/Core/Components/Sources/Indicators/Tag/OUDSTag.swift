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

import OUDSFoundations
import SwiftUI

/// A tag is a small element that shows short information like a label, keyword, or category.
/// It helps users quickly find, group, or understand content.
///
/// ## Hierarchies
///
/// Tags have two hierarchies so as to highlight or not their content.
///
/// - **emphasized**: A tag with a solid, high-contrast background. Used to draw strong attention to important
/// labels or categories. Emphasized tags stand out prominently against the interface and are ideal for
/// primary or high-priority information.
///
/// - **muted**: A tag with a subtle, light, or semi-transparent background. Used for secondary or
/// less prominent information. Muted tags blend more with the background, providing a softer visual
/// emphasis compared to emphasized tags.
///
/// ## Status
///
/// Tags have seven status depending on the context of the information they represent. Each state is designed
/// to convey a specific meaning and ensure clarity in communication.
///
/// - **Neutral**: Default or inactive state. Used for standard labels, categories, or when no specific
/// status needs to be communicated.
///
/// - **Accent**: Used to draw attention to new features, recommendations, or content suggestions.
/// Invites users to explore and engage with new offerings, creating an exciting and engaging experience.
///
/// - **Positive**: Indicates success, confirmation, or a positive status. Commonly used to highlight
/// completed actions or approved items.
///
/// - **Warning**: Signals caution or a potentially risky situation. Used to draw attention to items
/// requiring user awareness or intervention.
///
/// - **Negative**: Represents errors, critical issues, or urgent attention needed. Used to highlight
///  problems or failed actions.
///
/// - **Info**: Conveys informational messages or supplementary details. Used for neutral, helpful,
/// or contextual information.
///
/// - **Disabled**: Shows that the tag is inactive and cannot be interacted with. Appears faded or greyed out. This is not
///  allowed when loader is activated.
///
/// ## Shape
///
/// Tags can have two shapes.
///
/// - **Rounded**: A tag with fully rounded corners, creating a pill-shaped appearance. Rounded
/// tags offer a softer and more approachable look, suitable for most modern interfaces.
///
/// - **Square**: A tag with sharp, square corners. Squared tags provide a more formal, structured, or
/// technical feel. They are often used in business contexts to label promotions, offers, or important notices.
///
/// ## Size
///
/// Tags can have two sizes.
///
/// - **Default**: The standard tag size, suitable for most use cases and offering good readability.
///
/// - **Small**: A compact tag with reduced height and font size. Used when saving space is important or
/// when grouping elements visually.
///
/// ## Layout
///
/// There are four available layouts for tags.
///
/// -**Text only**: A tag that displays only text. Used for simple labels, categories, or keywords without additional visual
///  elements.
///
///  -**Text + Bullet**: A tag with a small indicator (dot) alongside the text. Used to show status, presence, or activity
///  next to the label.
///
/// -**Text + Icon**: A tag that includes an icon before the text. Used to visually reinforce the meaning of the tag,
/// such as status, type, or action.
///
/// - **Text + Loader**: A tag that combines a loading spinner (or progress indicator) with text. Used to indicate that
/// a process or action related to the tag is in progress.
///
/// ## Code samples
///
/// ```swift
///     // Text only with neutral status, for emphasized hierarchy with rounded shape in default size
///     OUDSTag(label: "Label",  status: .neutral(), hierarchy: .emphasized, shape: .rounded, size: .default)
///     // Or also
///     OUDSTag(label: "Label")
///
///     // Tag with neutral status with bullet
///     OUDSTag(label: "Label", status: .neutral(leading: .bullet)
///
///     // Tag with neutral status with a custom decorative icon
///     OUDSTag(label: "Label", status: .neutral(icon: Image(decorative: "ic_heart")))
///     // If your layout is in RTL model but your tag has an icon with another meaning because of bad orientation,
///     // you can flip the icon
///     OUDSTag(label: "Label", status: .neutral(icon: Image(decorative: "ic_heart"), flipIcon: true))
///
///     // Text with neutral status with bullet
///     OUDSTag(label: "Label", status: .neutral(bullet: true))
///
///     // Tag with loader with rounded shape in small size
///     OUDSTag(label: "Label", shape: .rounded, size: .large)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A tag component in light and dark mode with Orange theme](component_tag_Orange)
///
/// ### Orange Business Tools
///
/// ![A tag component in light and dark mode with Orange Business Tools theme](component_tag_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A tag component in light and dark mode with Sosh theme](component_tag_Sosh)
///
/// ### Wireframe
///
/// ![A tag component in light and dark mode with Wireframe theme](component_tag_Wireframe)
///
/// - Version: 1.4.0 (Figma component design version)
/// - Since: 0.18.0
///
public struct OUDSTag: View {

    // MARK: Stored Properties

    private let appearance: Appearance
    private let shape: Shape
    private let size: Size
    private let type: `Type`

    // MARK: - Configuration enums

    /// The internal type of tag
    enum `Type` {
        /// Tag with label and status
        case status(label: String, status: Status)
        /// Tag with label in loading state
        case loader(label: String)

        // Label of the the tag
        var label: String {
            switch self {
            case let .status(label, _), let .loader(label):
                label
            }
        }
    }

    /// The status of an `OUDSTag` determines the leading elmeent, the background
    /// and the content colors of the tag according to the category.
    public struct Status {

        let leading: Self.Leading
        let category: Self.Category
        let customIcon: Image?
        let flipIcon: Bool

        /// The leading element of the tag
        public enum Leading {
            /// Means no element
            case none
            /// To display the leading bullet
            case bullet
            /// To display the leadiong icon. For `OUDSTag.Status.Category.neutral` and `OUDSTag.Status.Category.accent`
            /// the decorative icon need to be provided. For other categories, a default icon is already provided.
            case icon
        }

        /// The category of the status.
        public enum Category {
            /// Default or inactive state. Used for standard labels, categories, or when no specific status needs to be communicated.
            case neutral

            /// Used to draw attention to new features, recommendations, or content suggestions.
            /// Invites users to explore and engage with new offerings, creating an exciting and engaging experience.
            case accent

            /// Indicates success, confirmation, or a positive status. Commonly used to highlight completed actions or approved items.
            case positive

            /// Signals caution or a potentially risky situation. Used to draw attention to items requiring user awareness or intervention.
            case warning

            /// Represents errors, critical issues, or urgent attention needed. Used to highlight problems or failed actions.
            case negative

            /// Conveys informational messages or supplementary details. Used for neutral, helpful, or contextual information.
            case info
        }

        /// Use to create a tag with a positive status.
        /// - Parameter leading: The leading element in the tag
        public static func positive(leading: Self.Leading) -> Status {
            Status(leading: leading, category: .positive)
        }

        /// Use to create a tag with a negative status.
        /// - Parameter leading: The leading element in the tag
        public static func negative(leading: Self.Leading) -> Status {
            Status(leading: leading, category: .negative)
        }

        /// Use to create a tag with a warning status.
        /// - Parameter leading: The leading element in the tag
        public static func warning(leading: Self.Leading) -> Status {
            Status(leading: leading, category: .warning)
        }

        /// Use to create a tag with a information status.
        /// - Parameter leading: The leading element in the tag
        public static func info(leading: Self.Leading) -> Status {
            Status(leading: leading, category: .info)
        }

        /// Use to create a tag with a neutral status with leading icon.
        /// - Parameters
        ///     - icon: The icon to set as leading element in the tag
        ///     - flipIcon: Default set to `false`, set to true to reverse the image (i.e. flip vertically)
        public static func neutral(icon: Image, flipIcon: Bool = false) -> Status {
            Status(leading: .icon, category: .neutral, alternativeIcon: icon, flipIcon: flipIcon)
        }

        /// Use to create a tag with a neutral status with leading bullet or not.
        /// - Parameter bullet: Default set to `false`, set to true to add bullet.
        public static func neutral(bullet: Bool = false) -> Status {
            Status(leading: bullet ? .bullet : .none, category: .neutral)
        }

        /// Use to create a tag with a accent status with leading icon.
        /// - Parameters
        ///     - icon: The icon to set as leading element in the tag
        ///     - flipIcon: Default set to `false`, set to true to reverse the image (i.e. flip vertically)
        public static func accent(icon: Image, flipIcon: Bool = false) -> Status {
            Status(leading: .icon, category: .accent, alternativeIcon: icon, flipIcon: flipIcon)
        }

        /// Use to create a tag with a accent status with leading bullet or not.
        /// - Parameter bullet: Default set to `false`, set to true to add bullet.
        public static func accent(bullet: Bool) -> Status {
            Status(leading: bullet ? .bullet : .none, category: .accent)
        }

        /// Internal initializer
        ///
        /// - Parameters:
        ///     - leading: The leading element
        ///     - category: The category of the status
        ///     - alternativeIcon: The optinal leading icon
        ///     - flipIcon: Flag to flip icon
        private init(leading: Leading, category: Self.Category, alternativeIcon: Image? = nil, flipIcon: Bool = false) {
            self.leading = leading
            self.category = category
            customIcon = alternativeIcon
            self.flipIcon = flipIcon
        }
    }

    /// Represents the appearance of an `OUDSTag`
    public enum Appearance {
        /// A tag with a solid, high-contrast background.
        /// Used to draw strong attention to important labels or categories. Emphasized tags stand out
        /// prominently against the interface and are ideal for primary or high-priority information.
        case emphasized

        /// A tag with a subtle, light, or semi-transparent background.
        /// Used for secondary or less prominent information. Muted tags blend more with the background,
        /// providing a softer visual emphasis compared to emphasized tags.
        case muted
    }

    /// Defines the shape of an `OUDSTag`
    public enum Shape {
        /// A tag with sharp, square corners.
        /// Squared tags provide a more formal, structured, or technical feel. They are often used in business contexts to label promotions, offers, or important notices.
        case square

        /// A tag with fully rounded corners, creating a pill-shaped appearance.
        /// Rounded tags offer a softer and more approachable look, suitable for most modern interfaces.
        case rounded
    }

    /// Defines the size of an `OUDSTag`
    public enum Size {
        /// The standard tag size, suitable for most use cases and offering good readability.
        case `default`

        /// A compact tag with reduced height and font size. Used when saving space is important or when grouping elements visually.
        case small
    }

    // MARK: - Initializer

    /// Create a tag with simple labeled and may be with leading element (bullet or icon).
    ///
    /// - Parameters:
    ///    - label: The label displayed in the tag
    ///    - status: The status of the tag. Its background color and its content color are based on
    ///    this `OUDSTag.Status` combined to the `OUDSTag.Hierarchy` of the tag
    ///    - appearance: The importance of the tag. Its background color and its content color are based on
    ///    this `OUDSTag.Hierarchy` combined to the `OUDSTag.Status` of the tag
    ///    - shape: The shape of the tag that allows to play with its corners appearance.
    ///    - size: The size of the tag
    ///    - hasLoader: If an optional loader (or progress indicator) is displayed before the `label` or not.
    ///    It will replace the `icon` if provided.
    ///
    ///   - remark: Use the SwiftUI.disabled to have tag in disabled state. This helper has no effect when loader is added.
    ///  When loadeer is added, `status` and `hierarchy` are ignored.
    public init(label: String,
                status: Status,
                appearance: Appearance = .emphasized,
                shape: Shape = .rounded,
                size: Size = .default,
                hasLoader: Bool = false)
    {
        self.appearance = appearance
        self.shape = shape
        self.size = size
        if hasLoader {
            type = .loader(label: label)
        } else {
            type = .status(label: label, status: status)
        }
    }

    /// Create a tag in the loading state.
    ///
    /// - Parameters:
    ///    - label: The label displayed in the tag
    ///    - shape: The shape of the tag that allows to play with its corners appearance.
    ///    - size: The size of the tag
    ///
    ///   - remark: The SwiftUI.disabled has no effect on this state.
    public init(label: String,
                shape: Shape = .rounded,
                size: Size = .default)
    {
        appearance = .emphasized
        self.shape = shape
        self.size = size
        type = .loader(label: label)
    }

    // MARK: Body

    public var body: some View {
        Label {
            TagLabel(appearance: appearance, size: size, type: type)
        } icon: {
            TagIcon(appearance: appearance, size: size, type: type)
        }
        .labelStyle(TagLabelStyle(appearance: appearance, shape: shape, size: size, type: type))
        .accessibilityLabel(accessibilityLabel)
    }

    // MARK: - Helpers

    /// Forges a string to vocalize with *Voice Over* describing the tag dependign to if loading state or not.
    private var accessibilityLabel: String {
        if case .loader = type {
            type.label + ", " + "core_common_loading_a11y".localized()
        } else {
            type.label
        }
    }
}
