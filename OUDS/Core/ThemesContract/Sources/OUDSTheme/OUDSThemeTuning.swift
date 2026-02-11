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

/// Type alais to keep things simple and short
public typealias Tuning = OUDSThemeTuning

// MARK: - OUDS Theme Tuning

/// To ease flexiblity of themes and enhance their adoption some parts of the theme can be tuned.
/// This allows for example to have a theme defined by the Brand but to apply some customization.
///
/// - Since: 0.19.0
public struct OUDSThemeTuning: @unchecked Sendable {

    /// Unique identifier for the tuning
    private let id = UUID()

    // MARK: Tuned properties

    /// If components like button (`OUDSButton`) must have always rounded corners or not
    public let hasRoundedButtons: Bool

    /// If text input components (e.g. `OUDSTextInput)` must have always rounded corners or not
    public let hasRoundedTextInputs: Bool

    /// If components like alert message (e.g. `OUDSAlertMessage)` must have always rounded corners or not
    public let hasRoundedAlertMessage: Bool

    /// Defines the tuning for a theme
    ///
    /// - Parameters:
    ///    - hasRoundedButtons: If buttons must have rounded corners or not (default set to *false*)
    ///    - hasRoundedTextInputs: If text inputs must have rounded corners or not (default set to *false*)
    ///    - hasRoundedAlertMessage: If allert messages must have rounded corners or not (default set to *false*)
    public init(hasRoundedButtons: Bool = false,
                hasRoundedTextInputs: Bool = false,
                hasRoundedAlertMessage: Bool = false)
    {
        self.hasRoundedButtons = hasRoundedButtons
        self.hasRoundedTextInputs = hasRoundedTextInputs
        self.hasRoundedAlertMessage = hasRoundedAlertMessage
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
        lhs.id == rhs.id
    }
}

// MARK: - Predefine tunings

extension Tuning {

    /// By default a theme does not have rounded corners at all
    public static let `default` = Tuning()

    /// The theme tuning for *Orange France* is the default one.
    /// There are no rounded corners.
    public static let OrangeFrance = Tuning.default

    /// The theme tuning for *Orange Business* contains:
    /// - square corners for buttons (i.e. not rounded)
    /// - rounded corners for text inputs
    /// - rounded corners for alert messages
    public static let OrangeBusiness = Tuning(hasRoundedTextInputs: true, hasRoundedAlertMessage: true)

    /// The theme tuning for *Max It *contains:
    /// - rounded corners for buttons
    /// - rounded corners for text inputs
    /// - rounded corners for alert messages
    public static let MaxIt = Tuning(hasRoundedButtons: true,
                                     hasRoundedTextInputs: true,
                                     hasRoundedAlertMessage: true)
}
