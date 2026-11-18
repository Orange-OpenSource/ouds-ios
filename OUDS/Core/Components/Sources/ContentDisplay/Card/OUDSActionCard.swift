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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

/// A `OUDSActionCard` is a container component used to group related content (text, images, actions, etc.)
/// inside a styled surface with a background, optional borders and optional elevation. It also handle and interaction
/// and prose to make some staff when clicked.
///
/// The card does not impose any particular content layout: you provide the content yourself
/// through a `@ViewBuilder`, and the card applies the background, borders, corner radius and
/// skeleton loading behavior according to the given ``OUDSCardStyle`` and interaction state.
///
/// ## Handle action on card
///
/// An action can be provided to make some staff when card is clicked.
/// Introduce by this interaction, the `@ViewBuilder` propose to the `OUDSButtonInteractionState` to adjust card
/// content according to its value.
///
/// ## Code samples
///
/// ```swift
///    // Build a basic Acrion card with content and action
///    OUDSActionCard(style: .elevated()) {
///        // Do some staff here
///    } content: { interactionState in
///        CardContent()
///    }
///
///    // Disable the intaction
///    OUDSActionCard(style: .elevated()) {
///        // Do some staff here
///    } content: { interactionState in
///         CardContent()
///    }
///    .disabled(true)
///
///    // Set the card as skeleon
///    OUDSActionCard(style: .elevated()) {
///        // Do some staff here
///    } content: { interactionState in
///         CardContent()
///    }
///    .showSkeleton(isVisible: true)
///
/// ```
///
/// The card automatically reacts to the `isEnabled` environment value to adjust its background
/// and borders rendering (e.g. for a disabled interaction state), and supports skeleton loading
/// through the ``showSkeleton(isVisible:)`` modifier applied around its clipped shape.
///
/// ## Accessibility considerations
///
/// Always check the results of rich text mode with high contrast, light and dark modes, and Voice Over vocalization.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-card)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A card component in light and dark modes with Orange theme](component_card_Orange)
///
/// ### Orange Compact
///
/// ![A card component in light and dark modes with Orange Compact theme](component_card_OrangeCompact)
///
/// ### Sosh
///
/// ![A card component in light and dark modes with Sosh theme](component_card_Sosh)
///
/// ### Wireframe
///
/// ![A card component in light and dark modes with Wireframe theme](component_card_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.4.0
@available(iOS 15, macOS 13, visionOS 1, tvOS 16, *)
public struct OUDSActionCard<Content: View>: View {

    // MARK: Stored properties

    private let style: OUDSCardStyle
    private let content: (_ interactionState: OUDSButtonInteractionState) -> Content
    private let action: () -> Void

    @Environment(\.theme) private var theme

    // MARK: Initializer

    /// Creates a card with the given style and content.
    ///
    /// - Parameters:
    ///    - style: The ``OUDSCardStyle`` applied to the card, defining its background, borders and elevation.
    ///    - content: A view builder that produces the content to display inside the card.
    public init(style: OUDSCardStyle,
                action: @escaping () -> Void,
                @ViewBuilder content: @escaping (_ interactionState: OUDSButtonInteractionState) -> Content)
    {
        self.style = style
        self.action = action
        self.content = content
    }

    // MARK: Body

    public var body: some View {
        OUDSInteractionButton(action: action) { interactionState in
            content(interactionState)
                .modifier(CardBackgroundModifier(style: style, interactionState: interactionState))
        }
    }
}
