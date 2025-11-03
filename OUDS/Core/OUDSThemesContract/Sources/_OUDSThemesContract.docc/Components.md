# Components

@Metadata {
    @PageImage(purpose: icon, source: "ic_component_intro")
    @PageImage(purpose: card, source: "ic_component_intro")
}

_Components_ are the `View` objects you can add in the views of your apps, like buttons, links, cards etc.

## How to use components

Import the target of components, and use the component you want:

```swift
import OUDSComponents // To get the components
```

Of course you must use in your root view the <doc:/OUDSThemesContract/OUDSThemeableView> with the suitable theme to asign it in environement variable so as to allow components to load their tokens:

```swift
// The theme can be OrangeTheme or your own
OUDSThemeableView(theme: OrangeTheme()) {
        
}
``` 

You can get more details about _Components_ with the [OUDSComponents documentation](https://ios.unified-design-system.orange.com/documentation/oudscomponents/).
