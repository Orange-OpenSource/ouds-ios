# Alerts

@Metadata {
    @PageImage(purpose: icon, source: "ic_folder_categories")
    @PageImage(purpose: card, source: "ic_folder_categories")
}

Some components can be used for **alert**.

## Overview

Alert components are UI elements that display information, system feedback or status changes.

### Alert Message

@TabNavigator {
    @Tab("Orange") {
        ![A alert message component in light and dark modes with Orange theme](component_alertMessage_Orange)
    }
    @Tab("Orange Compact") {
        ![A alert message component in light and dark modes with Orange Compact theme](component_alertMessage_OrangeCompact)
    }
    @Tab("Sosh") {
        ![A alert message component in light and dark modes with Sosh theme](component_alertMessage_Sosh)
    }
    @Tab("Wireframe") {
        ![A alert message component in light and dark modes with Wireframe theme](component_alertMessage_Wireframe)
    }
}

Alert message is a UI element that displays system feedback, status changes or required action; throughout detailed, prominent, persistent and actionable communication. Alert message includes functional icon and semantic colour, and may include as well a close button and/or action link.

Alert Message does not disappear automatically and remains visible until dismissed or resolved by the user.

@TabNavigator {
    @Tab("SwiftUI") {
        ```swift
        // A basic positive alert mesage with text and badge
        OUDSAlertMessage(label: "Label")

        // A more complexe alert messsage for warning status with a descuption and a close action
        // to dismiss the message.
        OUDSAlertMessage(label: "Warning", status: .warning(), description: "Some details about the warning") {
            // Do some staff here to dismiss the alert message when clicked
        }
    }
}
