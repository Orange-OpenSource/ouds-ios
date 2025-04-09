# Layouts

Some components can be used for **layouts**.

## Overview

### Colored Surface

Colored backgrounds use surface colors to maximize the contrast with content. 
The colors of several OUDS components (for instance ``OUDSButton`` or ``OUDSLink``) are automatically adjusted if they are placed on ``OUDSColoredSurface``.
To do so, some tokens associated with these specific colors can be customized and are identified with the *Mono* suffix (for instance *buttonColorBgDefaultEnabledMono* of *OrangeThemeButtonComponentTokensProvider*).

#### How it works

According to the color, the `OUDSColoredSurface` helper adds in SwiftUI environment two flags:
- `oudsUseMonochrome`: to inform a component that needs to use mono version of tokens 
- `oudsOnColoredSurface`: to inform a component it is placed on colored surface even if the mono is off 

#### How to use

```swift
    // The folowing view has a colored background ``OUDSBackgroundColor.statusPositiveEmphasized`` with
    // - a button that uses the mono version of tokens
    // - a text with the color adapted according to the adjusted colorScheme  

    // As view
    OUDSColoredSurface(color: .statusPositiveEmphasized) {
        VStack {
            Text("Status Positive Emphasized")
            .oudsForegroundColor(theme.colors.colorContentDefault)

            OUDSButton(text: "Button") {}
        }
    }

    // As view modifier

    VStack {
        Text("Status Positive Emphasized")
        .oudsForegroundColor(theme.colors.colorContentDefault)

        OUDSButton(text: "Button") {}
    }
    .oudsColoredSurface(color: .statusPositiveEmphasized)
```
