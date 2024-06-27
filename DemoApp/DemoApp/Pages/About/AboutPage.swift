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

import SwiftUI

struct AboutPage: View {

    // =======================
    // MARK: Stored properties
    // =======================

    let privacyPolicyUrl: URL
    let legalInformationUrl: URL

    // =================
    // MARK: Initializer
    // =================

    init() {
        guard let privacyNoticeUrl = Bundle.main.url(forResource: "about_privacy_policy", withExtension: "html") else {
            fatalError("Unable to find about_privacy_policy.html in resources")
        }
        guard let legalInformationUrl = Bundle.main.url(forResource: "about_legal_information", withExtension: "html") else {
            fatalError("Unable to find about_legal_information.html in resources")
        }

        self.privacyPolicyUrl = privacyNoticeUrl
        self.legalInformationUrl = legalInformationUrl
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
                    WebView(from: privacyPolicyUrl)
                        .navigationTitle("about.page.privacyPolicy.title")
                } label: {
                    Text("about.page.privacyPolicy.title")
                }

                NavigationLink {
                    WebView(from: legalInformationUrl)
                        .navigationTitle("about.page.legalInformation.title")
                } label: {
                    Text("about.page.legalInformation.title")
                }
            }
            .navigationTitle("about.page.title")
        }
    }
}
