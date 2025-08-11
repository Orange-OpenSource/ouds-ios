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
import OUDSTokensSemantic
import SwiftUI

// MARK: - OUDS Tag

/// A tag is a small element that shows short info like a label, keyword, or category.
/// It helps users quickly find, group, or understand content.
///
/// Tags have seven status depending on the context of the information they represent. Each state is designed
/// to convey a specific meaning and ensure clarity in communication.
///
/// ## Hierarchies
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
/// Badges have seven status depending on the context of the information they represent.
/// Each state is designed to convey a specific meaning and ensure clarity in communication.
///
/// - **Neutral** Default or inactive state. Used for standard labels, categories, or when no specific
/// status needs to be communicated.
///
/// - **Accent** Used to draw attention to new features, recommendations, or content suggestions.
/// Invites users to explore and engage with new offerings, creating an exciting and engaging experience.
///
/// - **Positive** Indicates success, confirmation, or a positive status. Commonly used to highlight
/// completed actions or approved items.
///
/// - **Warning** Signals caution or a potentially risky situation. Used to draw attention to items
/// requiring user awareness or intervention.
///
/// - **Negative** Represents errors, critical issues, or urgent attention needed. Used to highlight
///  problems or failed actions.
///
/// - **Info** Conveys informational messages or supplementary details. Used for neutral, helpful,
/// or contextual information.
///
/// - **Disabled** Shows that the tag is inactive and cannot be interacted with. Appears faded or greyed out. This is not
///  allowed when loader activated.
///
/// ## Shape
///
/// - **Rounded** A tag with fully rounded corners, creating a pill-shaped appearance. Rounded
/// tags offer a softer and more approachable look, suitable for most modern interfaces.
///
/// - **Square** A tag with sharp, square corners. Squared tags provide a more formal, structured, or
/// technical feel. They are often used in business contexts to label promotions, offers, or important notices.
///
/// ## Size
///
/// - **Default** The standard tag size, suitable for most use cases and offering good readability.
///
/// - **Small** A compact tag with reduced height and font size. Used when saving space is important or
/// when grouping elements visually.
///
/// ## Layout
///
/// -**Text only** A tag that displays only text. Used for simple labels, categories, or keywords without additional visual
///  elements.
///
///  -**Text + Bullet** A tag with a small indicator (dot) alongside the text. Used to show status, presence, or activity
///  next to the label.
///
/// -**Text + Icon** A tag that includes an icon before the text. Used to visually reinforce the meaning of the tag,
/// such as status, type, or action.
///
/// - **Text + Loader** A tag that combines a loading spinner (or progress indicator) with text. Used to indicate that
/// a process or action related to the tag is in progress.
///
/// ## Code samples
///
/// ```swift
///     // Text only with neutral status, for emphasized hierarchy with rounded shape in default size
///     OUDSTag(label: "Label", hierarchy: .emphasized, status: .neutral, shape: .rounded, size: .default)
///
///     // Text with bullet and negative status, using default hierarchy (emphasized), shape (rounded) and size (default)
///     OUDSTag(label: "Label", hasBullet: true, status: .negative)
///
///     // Tag with label and icon
///     OUDSTag(icon: Image("ic_heart"), label: "Label")
///
///     // Tag with label and loader
///     OUDSTag(icon: Image("ic_heart"), label: "Label", loader: true)
/// ```
///
/// ## Design documentation
///     @TODO: Update doc url)
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/)
///
/// - Version: 1.1.0 (Figma component design version)
/// - Since: 0.18.0
public struct OUDSTag: View {

    // MARK: Stored Properties

    private let hierarchy: Hierarchy
    private let status: Status
    private let shape: Shape
    private let size: Size
    private let type: `Type`

    @Environment(\.theme) private var theme

    enum `Type` {
        case textAndIcon(label: String, icon: OUDSTag.Icon?)
        case textAndLoader(label: String)

        var label: String {
            switch self {
            case .textAndIcon(let label, _), .textAndLoader(let label):
                return label
            }
        }
    }

    /// Type of iccon in a Tag.
    public enum Icon {
        /// The bullet icon in `OUDSTag`
        case bullet

        /// An icon from asset
        case asset(Image)
    }

    /// Represents the hierarchy of a tag
    public enum Hierarchy {
        /// A tag with a solid, high-contrast background.
        /// Used to draw strong attention to important labels or categories. Emphasized tags stand out
        /// prominently against the interface and are ideal for primary or high-priority information.
        case emphasized

        /// A tag with a subtle, light, or semi-transparent background.
        /// Used for secondary or less prominent information. Muted tags blend more with the background,
        /// providing a softer visual emphasis compared to emphasized tags.
        case muted
    }

    /// Defines the shape of the tag
    public enum Shape {
        /// A tag with sharp, square corners.
        /// Squared tags provide a more formal, structured, or technical feel. They are often used in business contexts to label promotions, offers, or important notices.
        case square

        /// A tag with fully rounded corners, creating a pill-shaped appearance.
        /// Rounded tags offer a softer and more approachable look, suitable for most modern interfaces.
        case rounded
    }

    public enum Size {
        /// The standard tag size, suitable for most use cases and offering good readability.
        case `default`

        /// A compact tag with reduced height and font size. Used when saving space is important or when grouping elements visually.
        case small
    }

    /// The status of an `OUDSTag` determines the background and content colors of the tag.
    public enum Status {
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

        /// Shows that the tag is inactive and cannot be interacted with. Appears faded or greyed out.
        case disabled
    }

    // MARK: Initializers

    /// Create a tag with simple label, categorie, or keyword without additional visual elements.
    /// A small indicator (bullet) could be displays to show status, presence, or activity next to the label.
    ///
    ///  Four different layouts are supported:
    ///     - **Text only**: when `icon` is `nil`, the tag displays only text.
    ///       Used for simple labels, categories, or keywords without additional visual elements.
    ///
    ///     - **Text and bullet**: when `icon` is equal to `OUDSTag.Icon.bullet`, the tag displays a small
    ///     indicator (bullet) alongside the text. Used to show status, presence, or activity next to the label.
    ///
    ///     - **Text and icon**: when `icon` is not `nil`, the tag includes an icon from asset before the text.
    ///     Used to visually reinforce the meaning of the tag, such as status, type, or action.
    ///
    ///     - **Text and loader**: when `loader` is `true`, the tag combines a loading spinner (or progress indicator)
    ///     with text. Used to indicate that a process or action related to the tag is in progress.
    ///
    /// - Parameters:
    ///    - label: The label displayed in the tag
    ///    - icon: The icon displayed before the label, or `nil` if there is no icon
    ///    - hierarchy: The importance of the tag. Its background color and its content color are based on this hierarchy combined to the [status] of the tag
    ///    - status: The status of the tag. Its background color and its content color are based on this status combined to
    ///    the `hierarchy` of the tag
    ///    - shape: The shape of the tag that allows to play with its corners appearance.
    ///    - size: The size of the tag
    ///    - loader: An optional loader (or progress indicator) displayed before the **label**. It will
    ///    replace the `icon` if provided. Used to indicate that a process or action related to the tag is in progress.
    public init(label: String,
                icon: OUDSTag.Icon? = nil,
                hierarchy: Hierarchy = .emphasized,
                status: Status = .neutral,
                shape: Shape = .rounded,
                size: Size = .default,
                loader: Bool = false) {
        self.hierarchy = hierarchy
        self.status = status
        self.shape = shape
        self.size = size
        if loader {
            if status == .disabled {
                OL.fatal("An OUDSTag with OUDSTag.Status.disabled status has been detected with loader activated, which is not allowed.")
            }
            self.type = .textAndLoader(label: label)
        } else {
            self.type = .textAndIcon(label: label, icon: icon)
        }
    }

    // MARK: Body

    public var body: some View {
        Label {
            TagLabel(label: type.label, hierarchy: hierarchy, status: status, size: size)
        } icon: {
            TagIcon(type: type, hierarchy: hierarchy, status: status, size: size)
        }
        .labelStyle(TagLabelStyle(hierarchy: hierarchy, status: status, shape: shape, size: size, hasIcon: hasIcon))
    }

    private var hasIcon: Bool {
        switch type {
        case .textAndIcon(_, let icon):
            return icon != nil
        default:
            return true
        }
    }
}
