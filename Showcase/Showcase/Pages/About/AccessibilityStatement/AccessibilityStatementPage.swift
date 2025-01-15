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

import DeclarationAccessibility
import SwiftUI

struct AccessibilityStatementPage: View {

    // MARK: Stored properties

    let detailsPageURL: URL

    // MARK: Initializer

    init() {
        guard let detailsPageURL = Bundle.main.url(forResource: "accessibility_detail", withExtension: "html") else {
            fatalError("Unable to find accessibility_detail.html in resources")
        }

        self.detailsPageURL = detailsPageURL
    }

    // MARK: Body

    var body: some View {
        VStack {
            DeclarationView(xmlFileName: "accessibility_result", selectedTheme: .orange, url: detailsPageURL.absoluteString, useWebView: true)
        }
    }
}
