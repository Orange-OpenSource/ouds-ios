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
import WebKit

struct WebView: UIViewRepresentable {

    enum ContentSource {
        case url(URL)
        case html(String)
    }
    
    // =======================
    // MARK: Stored properties
    // =======================

    let source: ContentSource

    // =================
    // MARK: Initializer
    // =================
    
    init(from url: URL) {
        self.source = .url(url)
    }

    init(with htmlContent: String) {
        self.source = .html(htmlContent)
    }

    // =========================
    // MARK: UIViewRepresentable
    // =========================

    @MainActor
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    @MainActor
    func updateUIView(_ webView: WKWebView, context: Context) {
        switch source {
        case let .url(url):
            let request = URLRequest(url: url)
            webView.load(request)
        case let .html(string):
            webView.loadHTMLString(string, baseURL: nil)
        }
    }
}
