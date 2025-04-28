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

// swiftlint:disable nesting

/// Just to gather all the accessiblity identifiers in use in the views and reuse them for UI tests for example.
/// Wraps identifiers by groups of views / features  with kind of path as values.
enum A11YID {

    // MARK: - Tab view

    enum Tabs {
        static let components = "com.orange.ouds.designsystemtoolbox.a11y.tabs.components"
    }

    // MARK: - Components page

    enum ComponentsPages {

        static let checkboxPage = "com.orange.ouds.designsystemtoolbox.a11y.componentsPages.checkboxPage"
    }

    // MARK: - Components

    enum Components {

        enum Checkbox {

            static let checkboxPicker = "com.orange.ouds.designsystemtoolbox.a11y.components.checkbox.checkboxPicker"
        }
    }
}

// swiftlint:enable nesting
