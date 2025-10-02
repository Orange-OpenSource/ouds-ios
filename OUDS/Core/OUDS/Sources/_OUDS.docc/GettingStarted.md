# Getting Started with OUDS

@Metadata {
    @PageImage(purpose: icon, source: "ic_unified_ds")
    @PageImage(purpose: card, source: "ic_unified_ds")
}

How to add the package as dependency, import libraries and use theme and components for your apps.

## Integrate OUDS

### Use Swift Package Manager

If you want to add the iOS library of *Orange Unified Design System*, you need to add our _Swift Package_ into your project.
To do that, add a new _package dependency_ to your _Xcode_ project by refering to it by `github.com/Orange-OpenSource/ouds-ios`.
You are free to choose wether or not you want a branch or a specific tag, pick the solution you want.

You can [refer to the wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki/50-%E2%80%90-About-versions,-releases-and-builds) for more details about versions, releases and tags. You can find release tags (e.g. *0.18.0*) and release candidates tags (e.g. *0.18.0-rc3*).

### Import the library you need

You should use one (or several) of the following imports for your needs, which are basically _Swift Package_ products.

```swift
import OUDS // If you want to define your theme or use OUDSThemeableView
import OUDSModules // To use modules
import OUDSComponents // To use components
import OUDSThemesOrange // To use the default Orange theme
import OUDSThemesOrangeInverse // To use the Orange Inverse theme
import OUDSThemesOrangeBusinessTools // To use the Orange Business Tools theme
import OUDSThemesSosh // To use the Sosh theme
import OUDSThemesWireframe // To use the Wireframe theme
import OUDSTokensComponent // If you need to override or use directly components tokens
import OUDSTokenSemantic // If you need to override or use directly semantic tokens
import OUDSTokensRaw // If you need to override or use directly raw tokens
```

### Chose your theme

The *Orange Unified Design System* framework provides today five themes:

Theme                     | Description                          
------------------------- | ------------------------------------- 
Orange                    | The default one for Orange products and can be enriched / derivated  
Orange Inverse            | For some Orange products in specific use cases           
Orange Business Tools     | For some Orange products with heavy / rich UI and dimension constraints           
Sosh                      | For Sosh products
Wireframe                 | For mockups, prototypes and prooves of concepts witouth Orange-flavoured styles

### Apply a theme

@Row {
        @Column {
            You will need to use for your application root view the [`OUDSThemeableView`](https://ios.unified-design-system.orange.com/documentation/ouds/oudsthemeableview/). 
             [This page may help](https://ios.unified-design-system.orange.com/documentation/ouds/themes) also.
            This special view is here to define some elements as environment variables and injects the choosen theme.
        }
        @Column {
            ```swift
            import OUDS  // To get OUDSThemeableView
            import OUDSThemesOrange // To get OrangeTheme
            import SwiftUI

            @main
            struct YourApp: App {
                var body: some Scene {
                   WindowGroup {
                      OUDSThemeableView(theme: OrangeTheme()) {
                            // Your root view
                      }
                   }
                }
            }
            ```
        }
}

@Row {
    @Column {
        Then get the current applied theme in your views and use the tokens you want.
        The tokens are wrapped in providers with clear names, you only need to choose the ones you want.        
    }
    @Column {
        ```swift
        import OUDS // To load the theme as environment variabme

        // Use it in views as an environment variable
        @Environment(\.theme) var theme
        ```
    }
}

> Tip: Keep in mind only one theme can be used within one `OUDSThemeableView`.
