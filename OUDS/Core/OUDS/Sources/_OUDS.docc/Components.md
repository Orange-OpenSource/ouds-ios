# Components
  
_Components_ are the `View` objects you can add in the views of your apps, like buttons, links, cards etc.

## How to use components

Import the target of components, and use the component you want:

```swift
import OUDSComponents // To get the components
```

Of course you must use in your root view the <doc:/OUDS/OUDSThemeableView> with the suitable theme to asign it in environement variable so as to allow components to laod their tokens:

```swift
    // The theme can be OrangeTheme or your own
    OUDSThemeableView(theme: theTheme) {
        
    }
``` 

You can get more details about _Components_ with the [OUDSComponents documentation](https://ios.unified-design-system.orange.com/documentation/oudstokenscomponent/).

## Available components

### Button

```swift
     // Icon only with default hierarchy
     OUDSButton(hierarchy: .default, icon: Image("ic_heart")) {}

     // Text only with negative hierarchy
     OUDSButton(hierarchy: .negative, text: "Delete") {}

     // Text and icon with strong hierarchy
     OUDSButton(hierarchy: .strong, icon: Image("ic_heart"), text: "Validate") {}
```
