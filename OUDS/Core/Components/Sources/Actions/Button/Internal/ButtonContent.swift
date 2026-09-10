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

import OUDSTokensSemantic
import SwiftUI

// MARK: - Button Icon

struct ButtonIcon: View {

    let image: OUDSImage
    let size: OUDSButton.Size

    @Environment(\.theme) private var theme
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize

    var body: some View {
        OUDSScaledIcon(image: image, size: sizeIcon)
            .padding(.all, paddingInset)
            .frame(maxHeight: maxHeight, alignment: .center)
    }

    private var sizeIcon: SizeSemanticToken {
        switch size {
        case .default:
            theme.button.sizeIconOnlyDefault
        case .small:
            theme.button.sizeIconOnlySmall
        }
    }

    private var paddingInset: CGFloat {
        switch size {
        case .default:
            theme.button.spaceInsetIconOnlyDefault
        case .small:
            theme.button.spaceInsetIconOnlySmall
        }
    }

    private var maxHeight: SizeSemanticToken {
        let rawValue = switch size {
        case .default:
            theme.button.sizeMaxSizeIconOnlyDefault
        case .small:
            theme.button.sizeMaxSizeIconOnlySmall
        }

        return rawValue * dynamicTypeSize.percentageRate / 100
    }
}

// MARK: - Button Text

struct ButtonText: View {

    let text: String
    let size: OUDSButton.Size

    @Environment(\.theme) private var theme

    var body: some View {
        TextForButton(text: text, size: size)
            .padding(.vertical, paddingVertical)
            .padding(.horizontal, paddingHorizontal)
    }

    private var paddingVertical: SizeSemanticToken {
        switch size {
        case .default:
            theme.button.spacePaddingBlockDefault
        case .small:
            theme.button.spacePaddingBlockSmall
        }
    }

    private var paddingHorizontal: SizeSemanticToken {
        switch size {
        case .default:
            theme.button.spacePaddingInlineIconNoneDefault
        case .small:
            theme.button.spacePaddingInlineIconNoneSmall
        }
    }
}

// MARK: - Button Text And Icon

struct ButtonTextAndIcon: View {

    let text: String
    let image: OUDSImage
    let size: OUDSButton.Size

    @Environment(\.theme) private var theme

    var body: some View {
        HStack(alignment: .center, spacing: spacing) {
            OUDSFixedIcon(image: image, size: sizeIcon)
            TextForButton(text: text, size: size)
        }
        .padding(.vertical, paddingVertical)
        .padding(.leading, paddingLeading)
        .padding(.trailing, paddingTrailing)
    }

    private var spacing: SizeSemanticToken {
        switch size {
        case .default:
            theme.button.spaceColumnGapIconDefault
        case .small:
            theme.button.spaceColumnGapIconSmall
        }
    }

    private var paddingVertical: SizeSemanticToken {
        switch size {
        case .default:
            theme.button.spacePaddingBlockDefault
        case .small:
            theme.button.spacePaddingBlockSmall
        }
    }

    private var paddingLeading: SizeSemanticToken {
        switch size {
        case .default:
            theme.button.spacePaddingInlineIconStartDefault
        case .small:
            theme.button.spacePaddingInlineIconStartSmall
        }
    }

    private var paddingTrailing: SizeSemanticToken {
        switch size {
        case .default:
            theme.button.spacePaddingInlineEndIconStartDefault
        case .small:
            theme.button.spacePaddingInlineEndIconStartSmall
        }
    }

    private var sizeIcon: SizeSemanticToken {
        switch size {
        case .default:
            theme.button.sizeIconDefault
        case .small:
            theme.button.sizeIconSmall
        }
    }
}

// MARK: - Text For Button

private struct TextForButton: View {

    let text: String
    let size: OUDSButton.Size

    @Environment(\.theme) private var theme

    var body: some View {
        switch size {
        case .default:
            Text(LocalizedStringKey(text))
                .labelStrongLarge(theme)
                .multilineTextAlignment(.center)
        case .small:
            Text(LocalizedStringKey(text))
                .labelStrongMedium(theme)
                .multilineTextAlignment(.center)
        }
    }
}
