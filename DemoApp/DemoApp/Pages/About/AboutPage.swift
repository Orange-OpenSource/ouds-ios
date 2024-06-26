//
// Software Name: Orange Unified Design System
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

import SwiftUI

struct AboutPage: View {
    
    // =======================
    // MARK: Stored properties
    // =======================

    let privacyNoticeUrl: URL
    let cguUrl: URL

    // =================
    // MARK: Initializer
    // =================

    init() {
        guard let privacyNoticeUrl = Bundle.main.url(forResource: "PrivacyNotice", withExtension: "html") else {
            fatalError("Unable to find PrivacyNotice.html in resources")
        }
        guard let cguUrl = Bundle.main.url(forResource: "CGU", withExtension: "html") else {
            fatalError("Unable to find CGU.html in resources")
        }

        self.privacyNoticeUrl = privacyNoticeUrl
        self.cguUrl = cguUrl
    }

    // ==========
    // MARK: Body
    // ==========

    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    Text("Add Change Log")
                } label: {
                    Text("about.page.changelog.title")
                }

                NavigationLink {
                    WebView(from: privacyNoticeUrl)
                        .navigationTitle("about.page.privacyPolicy.title")
                } label: {
                    Text("about.page.privacyPolicy.title")
                }
                
                NavigationLink {
                    WebView(from: cguUrl)
                        .navigationTitle("about.page.cgu.title")
                } label: {
                    Text("about.page.cgu.title")
                }
            }
            .navigationTitle("about.page.title")
        }
    }
}
