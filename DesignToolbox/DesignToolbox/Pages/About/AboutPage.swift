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

struct AboutPage: View {

    // MARK: Stored properties

    let privacyPolicyUrl: URL
    let legalInformationUrl: URL
    let appSettingsUrl: URL

    // MARK: Initializer

    init() {
        guard let privacyNoticeUrl = Bundle.main.url(forResource: "about_privacy_policy", withExtension: "html") else {
            OL.fatal("Unable to find about_privacy_policy.html in resources")
        }

        guard let legalInformationUrl = Bundle.main.url(forResource: "about_legal_information", withExtension: "html") else {
            OL.fatal("Unable to find about_legal_information.html in resources")
        }

        guard let appSettingsUrl = URL(string: UIApplication.openSettingsURLString) else {
            OL.fatal("Unable to find app settings URL")
        }

        self.privacyPolicyUrl = privacyNoticeUrl
        self.legalInformationUrl = legalInformationUrl
        self.appSettingsUrl = appSettingsUrl
    }

    // MARK: Body

    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    WebView(from: privacyPolicyUrl)
                        .navigationTitle("app_about_privacyPolicy_label")
                } label: {
                    Text("app_about_privacyPolicy_label")
                }

                NavigationLink {
                    WebView(from: legalInformationUrl)
                        .navigationTitle("app_about_legalInformation_label")
                } label: {
                    Text("app_about_legalInformation_label")
                }

                NavigationLink {
                    AccessibilityStatementPage()
                        .navigationTitle("app_about_accessibilityStatement_label")
                } label: {
                    Text("app_about_accessibilityStatement_label")
                }

                // TODO: Only for debug purposes, should be displayed in another way
                Text("\(Bundle.main.tokensLibraryVersion)")
                Text("app_about_details_appVersion" <- Bundle.main.marketingVersion)
                Text("app_about_details_buildNumber" <- Bundle.main.buildNumber)
                Text("app_about_details_buildType" <- Bundle.main.fullBuildType)
                if let buildDetails = Bundle.main.buildDetails {
                    Text("app_about_githubBuildDetails" <- buildDetails)
                }

                Button("app_about_appSettings_label") {
                    UIApplication.shared.open(appSettingsUrl)
                }.accessibilityHint("app_about_appSettings_hint_a11y")
            }
            .oudsNavigationTitle("app_bottomBar_about_label")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}
