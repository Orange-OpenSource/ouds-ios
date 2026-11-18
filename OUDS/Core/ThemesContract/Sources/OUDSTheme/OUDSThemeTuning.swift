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

import Foundation

// MARK: - Type aliases

/// Type alias to keep things simple and short
public typealias Tuning = OUDSThemeTuning

// MARK: - OUDS Theme Tuning

/// To ease flexibility of themes and enhance their adoption some parts of the theme can be tuned.
/// This allows for example to have a theme defined by the Brand but to apply some customization.
///
/// But beware, these are only flags using inside components definitions to chose the token to apply.
/// Some tokens for rounded and not rounded cases can have the same values in the end (like for Wireframe theme) or not (like for Orange theme).
///
/// - Since: 0.19.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSThemeTuning: @unchecked Sendable {

    // MARK: Tuned properties

    /// If components like alert message (e.g. `OUDSAlertMessage`) must have always rounded corners or not
    @available(*, deprecated, renamed: "hasRoundedAlerts", message: "See MIGRATION.md v3.4.0.")
    public let hasRoundedAlertMessages: Bool // TODO: v4 - Rename to hasRoundedAlerts

    /// If components like alert message (e.g. `OUDSAlertMessage`) must have always rounded corners or not
    public let hasRoundedAlerts: Bool

    /// If components like button (`OUDSButton`) must have always rounded corners or not
    public let hasRoundedButtons: Bool

    /// If components like list item (`OUDSStaticListItem` and `OUDSNavigationListItem`) must have always rounded corners or not
    @available(*, deprecated, renamed: "hasRoundedCardItems", message: "See MIGRATION.md v3.4.0.")
    public let hasRoundedListItems: Bool // TODO: v4 - Remove

    /// If components like card item based components like `OUDSNavigationListItem` and `OUDSStaticListItem`  with card styles must have always rounded corners or not
    public let hasRoundedCardItems: Bool

    /// If components like chat input components (classic and assistant) must have always rounded corners or not
    public let hasRoundedChatInputs: Bool // TODO: #1869, #1790 - Update documentation above with components name

    /// If text input components (e.g. `OUDSTextInput`, `OUDSPinCodeInput`, `OUDSPasswordInput` and `OUDSTextArea`)
    /// must have always rounded corners or not
    @available(*, deprecated, renamed: "hasRoundedInputs", message: "See MIGRATION.md v3.4.0.")
    public let hasRoundedTextInputs: Bool // TODO: v4 - Remove

    /// If text input components (e.g. `OUDSTextInput`, `OUDSPinCodeInput`, `OUDSPasswordInput` and `OUDSTextArea`)
    /// must have always rounded corners or not
    public let hasRoundedInputs: Bool

    /// If components like modal must have always rounded corners or not
    public let hasRoundedModals: Bool // TODO: #1582 - Update documentation above with components name

    /// If components like progress indicators (e.g. `OUDSCircularProgressIndicator` or `OUDSLinearProgressIndicator`) must have always rounded corners or not
    public let hasRoundedProgressIndicators: Bool

    /// If components like card (`OUDSCard`) must have always rounded corners or not
    public let hasRoundedCard: Bool

    /// Defines the tuning for a theme
    ///
    /// - Parameters:
    ///    - hasRoundedButtons: If button component must have rounded corners or not (default set to *false*)
    ///    - hasRoundedChatInputs: If chat input component must have rounded corners or not (default set to *false*)
    ///    - hasRoundedCard: If card components must have rounded corners or not (default set to *false*)
    ///    - hasRoundedTextInputs: If text-based inputs component must have rounded corners or not (default set to *false*)
    ///    - hasRoundedAlertMessages: If alert components must have rounded corners or not (default set to *false*)
    ///    - hasRoundedModals: If modal-based components must have rounded corners or not (default set to *false*)
    ///    - hasRoundedProgressIndicators: If progress indicators component must have rounded corners or not (default set to *false*)
    ///    - hasRoundedListItems: If list and card items based components must have rounded corners or not (default set to *false*)
    ///    - hasRoundedCard: If card components must have rounded corners or not (default set to *false*)
    public init(hasRoundedButtons: Bool = false,
                hasRoundedChatInputs: Bool = false,
                hasRoundedCard: Bool = false,
                hasRoundedTextInputs: Bool = false, // TODO: v4 - Rename to hasRoundedInputs
                hasRoundedAlertMessages: Bool = false, // TODO: v4 - Rename to hasRoundedAlerts, and sort alphabetically
                hasRoundedModals: Bool = false,
                hasRoundedProgressIndicators: Bool = false,
                hasRoundedListItems: Bool = false) // TODO: v4 - Rename to hasRoundedCardItems, and sort alphabetically
    {
        self.hasRoundedAlertMessages = hasRoundedAlertMessages
        hasRoundedAlerts = hasRoundedAlertMessages
        self.hasRoundedButtons = hasRoundedButtons
        self.hasRoundedListItems = hasRoundedListItems
        hasRoundedCardItems = hasRoundedListItems
        self.hasRoundedCard = hasRoundedCard        
        self.hasRoundedChatInputs = hasRoundedChatInputs
        self.hasRoundedTextInputs = hasRoundedTextInputs
        hasRoundedInputs = hasRoundedTextInputs
        self.hasRoundedModals = hasRoundedModals
        self.hasRoundedProgressIndicators = hasRoundedProgressIndicators
    }
}

// MARK: - Equatable

extension Tuning: Equatable {

    /// Checks if tunings are equals
    ///
    /// - Parameters:
    ///    - lhs: One of the tuning to test
    ///    - rhs: One of the tuning to test
    public static func == (lhs: Tuning, rhs: Tuning) -> Bool {
        (lhs.hasRoundedAlertMessages == rhs.hasRoundedAlertMessages)
            && (lhs.hasRoundedAlerts == rhs.hasRoundedAlerts)
            && (lhs.hasRoundedButtons == rhs.hasRoundedButtons)
            && (lhs.hasRoundedListItems == rhs.hasRoundedListItems)
            && (lhs.hasRoundedCard == rhs.hasRoundedCard)            
            && (lhs.hasRoundedCardItems == rhs.hasRoundedCardItems)
            && (lhs.hasRoundedChatInputs == rhs.hasRoundedChatInputs)
            && (lhs.hasRoundedTextInputs == rhs.hasRoundedTextInputs)
            && (lhs.hasRoundedInputs == rhs.hasRoundedInputs)
            && (lhs.hasRoundedModals == rhs.hasRoundedModals)
            && (lhs.hasRoundedProgressIndicators == rhs.hasRoundedProgressIndicators)
    }
}

// MARK: - Predefine tunings

extension Tuning {

    /// By default a theme does not have rounded corners at all
    public static let `default` = Tuning()

    /// The theme tuning for *Orange France* has nothing rounded but *chat input* based components.
    public static let OrangeFrance = Tuning(hasRoundedButtons: false,
                                            hasRoundedChatInputs: true,
                                            hasRoundedTextInputs: false,
                                            hasRoundedAlertMessages: false,
                                            hasRoundedModals: false,
                                            hasRoundedProgressIndicators: false,
                                            hasRoundedListItems: false)

    /// The theme tuning for *Orange Business* defines everything with rounded corners.
    public static let OrangeBusiness = Tuning.allRounded

    /// The theme tuning for *Max It* defines everything with rounded corners.
    public static let MaxIt = Tuning.allRounded

    /// Predefined tuning making everything rounded.
    public static let allRounded = Tuning(hasRoundedButtons: true,
                                          hasRoundedChatInputs: true,
                                          hasRoundedTextInputs: true,
                                          hasRoundedAlertMessages: true,
                                          hasRoundedModals: true,
                                          hasRoundedProgressIndicators: true,
                                          hasRoundedListItems: true,
                                          hasRoundedCard: true)

    /// Predefined tuning making everything not rounded.
    public static let nothingRounded = Tuning(hasRoundedButtons: false,
                                              hasRoundedChatInputs: false,
                                              hasRoundedTextInputs: false,
                                              hasRoundedAlertMessages: false,
                                              hasRoundedModals: false,
                                              hasRoundedProgressIndicators: false,
                                              hasRoundedListItems: false,
                                              hasRoundedCard: false)
}
