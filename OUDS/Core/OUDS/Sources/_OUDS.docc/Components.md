# Components
  
_Components_ are defined here and can be integrated in applications.

Comming soon.

## How to use components

Import the target of components, and use the component you want:

```swift
import OUDSComponents // To get the components

struct YourView: View {

    @State private var writtenText: String = ""

    var body: some View {
        OUDSFormsTextInput(placeholder: "Some placeholder to display", value: $writtenText)
    }
}
```

Of course you must use in your root view the `OUDSThemeableView` with the suitable theme:

```swift
    // The theme can be OrangeTheme or your own
    OUDSThemeableView(theme: theTheme) {
        
    }
``` 


