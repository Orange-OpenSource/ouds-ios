//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System
//

// swiftlint:disable missing_docs

extension OUDSTheme: OpacitySemanticTokens {
    @objc open var opacityMedium: OpacitySemanticToken { OpacityRawTokens.opacity500 }
    @objc open var opacityOpaque: OpacitySemanticToken { OpacityRawTokens.opacity900 }
    @objc open var opacityStrong: OpacitySemanticToken { OpacityRawTokens.opacity700 }
    @objc open var opacityTransparent: OpacitySemanticToken { OpacityRawTokens.opacity0 }
    @objc open var opacityWeak: OpacitySemanticToken { OpacityRawTokens.opacity300 }
    @objc open var opacityWeaker: OpacitySemanticToken { OpacityRawTokens.opacity100 }
}

// swiftlint:enable missing_docs
