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

Alert message is a UI element that displays system feedback, status changes or required action; throughout detailed, prominent, persistent and actionable communication. Alert message includes functional icon and semantic colour, and may include as well a close button and/or action link.

Alert message does not disappear automatically and remains visible until dismissed or resolved by the user.

```swift
    // A basic positive alert message with text and badge
    OUDSAlertMessage(label: "Label")

    // A more complex alert message for warning status with a description and a close action
    // to dismiss the message.
    OUDSAlertMessage(label: "Warning", status: .warning, description: "Some details about the warning") {
        // Do some tasks here to dismiss the alert message when clicked
    }
        
    // Add a custom icon for accent and neutral status
    OUDSAlertMessage(label: "Label", status: .accent(icon: OUDSIcon(asset: Image("ic_heart"))))
    OUDSAlertMessage(label: "Label", status: .neutral(icon: OUDSIcon(asset: Image("ic_heart"))))
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

Inline alert is a lightweight UI element, placed in the content flow, that displays information, system feedback, status changes throughout short, prominent, 
persistent and non actionable communication. Inline alert includes functional icon and semantic colour, and does not include a close button and/or action link. 
Inline alert does not disappear and remains visible.


```swift
    // An inline alert with a label and the default neutral status
    OUDSInlineAlert(label: "Label")

    // An inline alert
    OUDSAlertMessage(label: "Warning", status: .warning)

    // Add a custom icon for accent and neutral status
    OUDSInlineAlert(label: "Label", status: .accent(icon: OUDSIcon(asset: Image("ic_heart"))))
    OUDSInlineAlert(label: "Label", status: .neutral(icon: OUDSIcon(asset: Image("ic_heart"))))
```
