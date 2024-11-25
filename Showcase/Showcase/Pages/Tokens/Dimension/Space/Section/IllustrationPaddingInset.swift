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

import OUDS
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// MARK: - PaddingInset

struct IllustrationForPaddingInset: View {
    @Environment(\.theme) private var theme

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaceFixedNone) {
            ForEach(NamedSpace.PaddingInset.allCases, id: \.rawValue) { namedSpaceToken in
                let token = namedSpaceToken.token(from: theme)
                let name = namedSpaceToken.rawValue
                SpaceTokenPage.Illustration(
                    paddingType: Padding.inset(token),
                    name: name,
                    additionalAsset: nil
                )
            }
        }
    }
}
