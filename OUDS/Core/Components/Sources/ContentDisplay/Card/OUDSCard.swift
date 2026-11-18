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

/// A `OUDSCard` is a container component used to group related content (text, images, buttons,  etc.)
/// inside a styled surface with a background, optional borders and optional elevation.
///
/// The card does not impose any particular content layout: you provide the content yourself
/// through a `@ViewBuilder`, and the card applies the background, borders, corner radius and
/// skeleton loading behavior according to the given ``OUDSCardStyle``.
///
/// ## Code samples
///
/// ```swift
/// OUDSCard(style: .elevated()) {
///     VStack(alignment: .leading) {
///         OUDSHeading("Title")
///         OUDBddy("Some description text")
///         OUDSButton("Order", apperance: .strong)
///     }
/// }
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
public struct OUDSCard<Content: View>: View {

    // MARK: Stored properties

    private let style: OUDSCardStyle
    private let content: Content
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Initializer

    /// Creates a card with the given style and content.
    ///
    /// - Parameters:
    ///    - style: The ``OUDSCardStyle`` applied to the card, defining its background, borders and elevation.
    ///    - content: A view builder that produces the content to display inside the card.
    public init(style: OUDSCardStyle, @ViewBuilder content: @escaping () -> Content) {
        self.content = content()
        self.style = style
    }

    // MARK: Body

    public var body: some View {
        content
            .modifier(CardBackgroundModifier(style: style, interactionState: interactionState))
    }

    // MARK: Helpers

    private var interactionState: OUDSButtonInteractionState {
        isEnabled ? .enabled : .disabled
    }
}
