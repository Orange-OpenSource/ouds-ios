# Foundations

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **typography**.

## Overview

The **Foundations** family gathers primitive building blocks of the design system. Today it exposes the *Typography* components.

### Typography

@TabNavigator {
    @Tab("Orange") {
        ![A heading typography component in light and dark modes with Orange theme](component_typography_heading_Orange)
    }
    @Tab("Orange Compact") {
        ![A heading typography component in light and dark modes with Orange Compact theme](component_typography_heading_OrangeCompact)
    }
    @Tab("Sosh") {
        ![A heading typography component in light and dark modes with Sosh theme](component_typography_heading_Sosh)
    }
    @Tab("Wireframe") {
        ![A heading typography component in light and dark modes with Wireframe theme](component_typography_heading_Wireframe)
    }
}

Typography components render text using the semantic font tokens exposed by the current theme. 
They are the recommended way to display text inside your app since they automatically apply the right font elements.
There are 5 types: ``OUDSDisplay``, ``OUDSHeading``, ``OUDSBody``, ``OUDSLabel`` and ``OUDSCode``.

```swift
// Display
OUDSDisplay(text: "Woy!")
OUDSDisplay(text: "Woy!", size: .medium)

// Heading
OUDSHeading(text: "Section title", size: .large, hasMarker: true)
OUDSHeading(text: "Welcome to Sosh", coloredText: "Sosh")
OUDSHeading(LocalizedStringKey("section_title"), bundle: Bundle.module, size: .xLarge)

// Body
OUDSBody(text: "This is the black collar song...")
OUDSBody(text: "This is the black collar song...", size: .large, weight: .strong)

// Label
OUDSLabel(text: "Label")
OUDSLabel(text: "Label", size: .xLarge, weight: .moderate)

// Code
OUDSCode(text: "let x = 42")
```
