# Dialogs

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **dialogs**.

## Overview

Dialogs components are UI elements that display information, system feedback or status changes.

### Alert Message

@TabNavigator {
    @Tab("Orange") {
        ![An alert message component in light and dark modes with Orange theme](component_alertMessage_Orange)
    }
    @Tab("Orange Compact") {
        ![An alert message component in light and dark modes with Orange Compact theme](component_alertMessage_OrangeCompact)
    }
    @Tab("Sosh") {
        ![An alert message component in light and dark modes with Sosh theme](component_alertMessage_Sosh)
    }
    @Tab("Wireframe") {
        ![An alert message component in light and dark modes with Wireframe theme](component_alertMessage_Wireframe)
    }
}

``OUDSAlertMessage`` is a UI element that displays system feedback, status changes or required action; throughout detailed, prominent, persistent and actionable communication. Alert message includes functional icon and semantic colour, and may include as well a close button and/or action link.

``OUDSAlertMessage`` does not disappear automatically and remains visible until dismissed or resolved by the user.

```swift
    // A basic positive alert message with text and badge
    OUDSAlertMessage(label: "Label")

    // A more complex alert message for warning status with a description and a close action
    // to dismiss the message.
    OUDSAlertMessage(label: "Warning", status: .warning, description: "Some details about the warning") {
        // Do some tasks here to dismiss the alert message when clicked
    }

    // The description and the bullet list are OUDSTextualContent values: raw (string literal),
    // localized or rich text
    OUDSAlertMessage(label: "Label",
                     description: .rich(AttributedString(markdown: "This is **an important notice**")), // Manage in your side errors for init
                     bulletList: [
                         "First thing",
                         .localized("second_thing_wording", bundle: Bundle.module),
                         .rich(AttributedString(markdown: "One **more thing**")), // Manage in your side errors for init
                     ])

    // Add a custom icon for accent and neutral status
    // with original rendering mode (to avoid tints) or not.
    // By default, tinted, template mode.
    OUDSAlertMessage(label: "Label", status: .accent(image: OUDSImage(asset: Image("ic_heart"))))
    OUDSAlertMessage(label: "Label", status: .neutral(image: OUDSImage(asset: Image("ic_heart"), renderingMode: .original)))
```

### Inline Alert

@TabNavigator {
    @Tab("Orange") {
        ![An inline alert component in light and dark modes with Orange theme](component_inlineAlert_Orange)
    }
    @Tab("Orange Compact") {
        ![An inline alert component in light and dark modes with Orange Compact theme](component_inlineAlert_OrangeCompact)
    }
    @Tab("Sosh") {
        ![An inline alert component in light and dark modes with Sosh theme](component_inlineAlert_Sosh)
    }
    @Tab("Wireframe") {
        ![An inline alert component in light and dark modes with Wireframe theme](component_inlineAlert_Wireframe)
    }
}

``OUDSInlineAlert`` is a lightweight UI element, placed in the content flow, that displays information, system feedback, status changes throughout short, prominent, 
persistent and non actionable communication. 
``OUDSInlineAlert`` includes functional icon and semantic colour, and does not include a close button and/or action link. 
Inline alert does not disappear and remains visible.

```swift
    // An inline alert with a label and the default neutral status
    OUDSInlineAlert(label: "Label")

    // An inline alert
    OUDSInlineAlert(label: "Warning", status: .warning)

    // Add a custom icon for accent and neutral status
    OUDSInlineAlert(label: "Label", status: .accent(image: OUDSImage(asset: Image("ic_heart"))))
    OUDSInlineAlert(label: "Label", status: .neutral(image: OUDSImage(asset: Image("ic_heart"))))
```

### Alert Banner

@TabNavigator {
    @Tab("Orange") {
        ![An alert banner component in light and dark modes with Orange theme](component_alertBanner_Orange)
    }
    @Tab("Orange Compact") {
        ![An alert message component in light and dark modes with Orange Compact theme](component_alertBanner_OrangeCompact)
    }
    @Tab("Sosh") {
        ![An alert message component in light and dark modes with Sosh theme](component_alertBanner_Sosh)
    }
    @Tab("Wireframe") {
        ![An alert message component in light and dark modes with Wireframe theme](component_alertBanner_Wireframe)
    }
}

``OUDSAlertBanner`` is a messaging component used to communicate important information, system states, or service updates across an interface. It supports multiple semantic statuses, layouts, actions, and responsive behaviours to ensure consistent communication across products and platforms.

Two layouts are available for a banner content:
    - **center** The basic layout with label and optional action as link. The content of the banner is centerted into the screen.
    - **start ** The banner with mode information with label, description, close button and additional action link. The content of the banner is at leading and action link can be placed at trailing or at the bottom of banner.
Both propose a status to inforce information displayed in the banner by applying background colors.


```swift
    // A banner with center layout in a positive status
    OUDSAlertBanner(layout: .center(label: "Label", status: .positive))
    // A banner with center layout in a positive status with action (i.e Link)
    OUDSAlertBanner(layout: .center(label: "Label",
                                    status: .negative,
                                    action: (label: "Action", onClick: { // do something }))
    // A more complex alert banner for warning status with a description and a close action
    // to dismiss the banner.
    OUDSAlertBanner(layout: .start(label: "Warning",
                                   status: .warning,
                                   description: "Some details about the warning",
                                   onClose: {
                                      // Do some stuff here to dismiss the alert banner when clicked
                                    })
    // Add a custom action (i.e Link) at bottom (could also at top trailing position)
    @Environment(\.openURL) private var openUrl
    let actionLink = OUDSAlertBanner.ActionLink(text: "Action", position: .bottom) {
       openUrl.callAsFunction(url)
    }

    OUDSAlertBanner(layout: .start(label: "Label", actionLink: actionLink))
    // Adjust containers alignment (icon, action link, close button)
    OUDSAlertBanner(layout: .start(label: "Label", status: .warning, actionLink: actionLink, alignment: .top)
```
