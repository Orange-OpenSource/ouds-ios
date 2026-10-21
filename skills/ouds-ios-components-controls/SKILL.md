---
name: ouds-ios-components-controls
description: Usage and code examples for OUDS iOS Controls components — OUDSCheckbox / OUDSCheckboxItem / OUDSCheckboxPicker / OUDSCheckboxIndeterminate, OUDSRadio / OUDSRadioItem / OUDSRadioPicker, OUDSSwitch / OUDSSwitchItem, OUDSSuggestionChip / OUDSFilterChip / OUDSChipPicker, OUDSPinCodeInput, OUDSPasswordInput, OUDSTextInput, OUDSTextArea. Load the ouds-ios-framework-usage skill first for imports, themes and image rules.
license: MIT
---

# OUDS Controls components

> Prerequisite: load `ouds-ios-framework-usage` first for imports, themes and image rules
> (`OUDSImage`, `// swiftlint:disable:next accessibility_label_for_image`).

## Common patterns (shared across most Controls)

These patterns apply to Checkbox, Radio, Switch, TextInput, TextArea, PinCodeInput, PasswordInput unless noted otherwise.

| Pattern | Syntax |
|---|---|
| Error state | `isError: true, errorText: .raw("Message")` — `errorText` is an `OUDSTextualContent` (`.raw`, `.localized`, `.rich`); prefer `.raw("…")` to a bare literal to avoid a deprecation warning |
| Rich error | `errorText: .rich(AttributedString)` |
| Plain helper | `helperText: .raw("…")` (`OUDSTextArea`: `helperText: .textual("…")`) — `helperText` is an `OUDSTextualContent` (`.raw`, `.localized`, `.rich`); prefer `.raw("…")` to a bare literal to avoid a deprecation warning |
| Rich helper | `helperText: .rich(AttributedString)` (`OUDSTextArea`: `helperText: .textual(.rich(AttributedString))`) |
| Error status (inputs) | `status: .textualError(message: "…")` — message is an `OUDSTextualContent` |
| Rich error status | `status: .textualError(message: .rich(AttributedString))` |
| Read-only | `isReadOnly: true` |
| Disabled | `.disabled(true)` — never combine with `isError` or `isReadOnly` |

> `OUDSSwitchItem`, `OUDSCheckboxItem`, `OUDSCheckboxItemIndeterminate` and `OUDSRadioItem` `errorText` as `String` / `AttributedString` is **deprecated** since v3.2.0, use `OUDSTextualContent`.
> **Literal pitfall**: a bare `errorText: "abc"` may select a deprecated initializer (warning) because `AttributedString` is expressible by a string literal. Write `errorText: .raw("abc")`.

> **Forbidden combinations** (fatal error at runtime): `isError` + `isReadOnly`, `isError` + `.disabled`, `isReadOnly` + `.disabled`

---

## Checkbox

```swift
OUDSCheckbox(isOn: $isOn, accessibilityLabel: "Label")
OUDSCheckboxIndeterminate(selection: $selection, accessibilityLabel: "Label")
OUDSCheckboxItem("Label", isOn: $isOn)
OUDSCheckboxItem("Label", isOn: $isOn, description: "Helper",
                 image: OUDSImage(asset: Image(decorative: "ic")))
OUDSCheckboxItem("Label", isOn: $isOn,
                 image: OUDSImage(asset: Image(decorative: "ic")), isReversed: true)
// Raw (non-tinted) image:
OUDSCheckboxItem("Label", isOn: $isOn,
                 image: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
OUDSCheckboxItem("Label", isOn: $isOn,
                 image: OUDSImage(asset: Image(systemName: "figure.handball"),
                                 flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
OUDSCheckboxItem(LocalizedStringKey("agree_terms"), bundle: Bundle.module, isOn: $isOn,
                 image: OUDSImage(asset: Image(decorative: "ic")))
// Indeterminate (three states) — also accepts LocalizedStringKey and an OUDSTextualContent errorText:
OUDSCheckboxItemIndeterminate("Label", selection: $selection,
                               image: OUDSImage(asset: Image(decorative: "ic")))
OUDSCheckboxItemIndeterminate(LocalizedStringKey("select_all"), bundle: Bundle.module,
                               selection: $selection)
// Error text: raw, localized or rich OUDSTextualContent
OUDSCheckboxItem("Label", isOn: $isOn, isError: true, errorText: .rich(AttributedString(…)))
// Error / helper / disabled → see "Common patterns" above
```

> Parameter order: `(_ label:, isOn:, description:, image:, isReversed:, isError:, errorText:, isReadOnly:, hasDivider:, constrainedMaxWidth:, action:)`

```swift
// Picker — image is OUDSImage?
OUDSCheckboxPicker(selections: $selections, checkboxes: [
    .init(tag: "a", label: "Option A"),
    .init(tag: "b", label: "Option B", description: "Details", isReversed: true),
    .init(tag: "c", label: "Option C", image: OUDSImage(asset: Image(systemName: "flame"))),
    .init(tag: "d", label: "Option D",
          image: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original)),
])
OUDSCheckboxPicker(selections: $selections, checkboxes: data,
                   placement: .verticalRooted("All options", .textAndCount))
OUDSCheckboxPicker(selections: $selections, checkboxes: data,
                   isReversed: true, placement: .horizontal(true))
```

---

## Radio Button

```swift
OUDSRadio(isOn: $isOn, accessibilityLabel: "Label")
OUDSRadioItem("Label", isOn: $isOn)
OUDSRadioItem("Label", isOn: $isOn, image: OUDSImage(asset: Image(decorative: "ic")))
// Raw (non-tinted) image:
OUDSRadioItem("Label", isOn: $isOn,
              image: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
OUDSRadioItem("Label", isOn: $isOn,
              image: OUDSImage(asset: Image(systemName: "chevron.right"),
                              flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
OUDSRadioItem(LocalizedStringKey("option_label"), bundle: Bundle.module, isOn: $isOn,
              image: OUDSImage(asset: Image(decorative: "ic")))
// Error text: raw, localized or rich OUDSTextualContent
OUDSRadioItem("Label", isOn: $isOn, isError: true, errorText: .rich(AttributedString(…)))
// Error / helper / disabled → see "Common patterns" above
OUDSRadioPicker(selection: $selection,
                radios: [
                    .init(tag: "a", label: "Option A"),
                    .init(tag: "b", label: "Option B",
                          image: OUDSImage(asset: Image(systemName: "flame"))),
                    .init(tag: "c", label: "Option C",
                          image: OUDSImage(asset: Image(decorative: "il_brand"),
                                         renderingMode: .original)),
                ],
                placement: .vertical)
```

---

## Switch

```swift
OUDSSwitch(isOn: $isOn, accessibilityLabel: "Label")
OUDSSwitchItem("Label", isOn: $isOn)
OUDSSwitchItem("Label", isOn: $isOn,
               image: OUDSImage(asset: Image(decorative: "ic")))
// Raw (non-tinted) image:
OUDSSwitchItem("Label", isOn: $isOn,
               image: OUDSImage(asset: Image(decorative: "il_brand"), renderingMode: .original))
// Flip icon for RTL:
OUDSSwitchItem("Label", isOn: $isOn,
               image: OUDSImage(asset: Image(systemName: "figure.handball"),
                               flipped: layoutDirection == .rightToLeft))
// LocalizedStringKey:
OUDSSwitchItem(LocalizedStringKey("wifi_setting"), bundle: Bundle.module, isOn: $isOn,
               image: OUDSImage(asset: Image(decorative: "ic")))
// Error text: raw, localized or rich OUDSTextualContent
OUDSSwitchItem("Label", isOn: $isOn, isError: true, errorText: .rich(AttributedString(…)))
// Error / helper / disabled → see "Common patterns" above
```

---

## Pin Code Input

Available lengths: `.four`, `.six` (default), `.eight`.

```swift
OUDSPinCodeInput($value)
OUDSPinCodeInput($value, length: .four, autofocus: true)
OUDSPinCodeInput($value, helperText: .raw("Enter your PIN"))
OUDSPinCodeInput($value, helperText: .localized("pin_helper", bundle: Bundle.module))
OUDSPinCodeInput($value, helperText: .rich(AttributedString(…)))
// Error status: .textualError(message: OUDSTextualContent), raw (literal), localized or rich
OUDSPinCodeInput($value, status: .textualError(message: .rich(AttributedString(…))))
```

> `OUDSPinCodeInput` `helperText` as `String` / `AttributedString` / `LocalizedStringKey` (`helperText key:`) is **deprecated** since v3.2.0, use `OUDSTextualContent`.
> `Status.error(message:)` and `Status.richError(message:)` are **deprecated** too, use `Status.textualError(message:)`.
> **Literal pitfall**: a bare `helperText: "abc"` may select a deprecated initializer (warning). Write `helperText: .raw("abc")`.
> A literal in `status: .textualError(message: "abc")` is fine.

---

## Password Input

> `status` is of type `OUDSTextInput.Status` (shared with `OUDSTextInput`).

```swift
OUDSPasswordInput(label: "Password", password: $password, isHiddenPassword: $isHidden)
OUDSPasswordInput(label: "Password", password: $password, isHiddenPassword: $isHidden,
                  placeholder: "Min. 8 chars", prefix: "🔑", lockIcon: true)
// Helper text: raw (string literal), localized or rich OUDSTextualContent
OUDSPasswordInput(label: "Password", password: $password, helperText: .raw("8 characters minimum"))
OUDSPasswordInput(label: "Password", password: $password, helperText: .rich(AttributedString(…)))
// Error status: .textualError(message: OUDSTextualContent), raw (literal), localized or rich
OUDSPasswordInput(label: "Password", password: $password, status: .textualError(message: "Too weak"))
```

> `OUDSPasswordInput` `helperText` as `String` / `AttributedString` is **deprecated** since v3.2.0, use `OUDSTextualContent`.
> `OUDSTextInput.Status.error(message:)` and `.richError(message:)` are **deprecated** too, use `.textualError(message:)`.
> **Literal pitfall**: a bare `helperText: "abc"` may select a deprecated initializer (warning). Write `helperText: .raw("abc")`.

---

## Chips

```swift
OUDSSuggestionChip(text: "Label") {}
OUDSSuggestionChip(image: OUDSImage(asset: Image("ic")), text: "Label") {}
OUDSSuggestionChip(image: OUDSImage(asset: Image("ic"), renderingMode: .original), text: "Label") {} // raw image (not tinted)
OUDSSuggestionChip(image: OUDSImage(asset: Image("ic")), accessibilityLabel: "Label") {}
OUDSSuggestionChip(image: OUDSImage(asset: Image("ic"), renderingMode: .original), accessibilityLabel: "Label") {} // raw image (not tinted)
OUDSFilterChip(text: "Label") {}
OUDSFilterChip(image: OUDSImage(asset: Image("ic")), text: "Label") {}
OUDSFilterChip(image: OUDSImage(asset: Image("ic"), renderingMode: .original), text: "Label") {} // raw image (not tinted)
OUDSFilterChip(image: OUDSImage(asset: Image("ic")), accessibilityLabel: "Label") {}
OUDSFilterChip(image: OUDSImage(asset: Image("ic"), renderingMode: .original), accessibilityLabel: "Label") {} // raw image (not tinted)
OUDSChipPicker(title: "Title", selection: $selection, chips: [
    .init(tag: .value1, layout: .textAndIcon("Label", image: OUDSImage(asset: Image("ic")))),
    .init(tag: .value2, layout: .textAndIcon("Brand", image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original))), // raw image
    .init(tag: .value3, layout: .icon(OUDSImage(asset: Image("ic")), accessibilityLabel: "Label")),
    .init(tag: .value4, layout: .icon(OUDSImage(asset: Image("ic_brand"), renderingMode: .original), accessibilityLabel: "Brand")), // raw image
])
```

---

## Text Input

```swift
OUDSTextInput(label: "Label", text: $text)
OUDSTextInput(label: "Label", text: $text, placeholder: "…", prefix: "Pre", suffix: "Suf")
OUDSTextInput(label: "Label", text: $text, leadingImage: OUDSImage(asset: Image("ic")))
OUDSTextInput(label: "Label", text: $text,
              leadingImage: OUDSImage(asset: Image("ic"), renderingMode: .original)) // raw image (not tinted)
OUDSTextInput(label: "Label", text: $text,
              leadingImage: OUDSImage(asset: Image("ic"), flipped: layoutDirection == .rightToLeft)) // flip for RTL
OUDSTextInput(label: "Label", text: $text,
              trailingAction: .init(image: OUDSImage(asset: Image("ic")), actionHint: "Hint") {})
OUDSTextInput(label: "Label", text: $text,
              trailingAction: .init(image: OUDSImage(asset: Image("ic"), renderingMode: .original),
                                    actionHint: "Hint") {}) // raw image
// Helper text: raw (string literal), localized or rich OUDSTextualContent
OUDSTextInput(label: "Label", text: $text, helperText: .raw("Helper"))
OUDSTextInput(label: "Label", text: $text, helperText: .rich(AttributedString(…)))
// Error status: .textualError(message: OUDSTextualContent), raw (literal), localized or rich
OUDSTextInput(label: "Label", text: $text, status: .textualError(message: .localized("err", bundle: Bundle.module)))
```

> `OUDSTextInput` `helperText` as `String` / `AttributedString` is **deprecated** since v3.2.0, use `OUDSTextualContent`.
> `OUDSTextInput.Status.error(message:)` and `.richError(message:)` are **deprecated** too, use `.textualError(message:)`.
> **Literal pitfall**: a bare `helperText: "abc"` may select a deprecated initializer (warning). Write `helperText: .raw("abc")`.

---

## Text Area

`helperText` type: `.textual(OUDSTextualContent)` (raw string literal, `.raw`, `.localized` or `.rich`) | `.charactersMaxCount(UInt16)`

```swift
OUDSTextArea(label: "Label", text: $text)
OUDSTextArea(label: "Label", text: $text, placeholder: "Describe…")
OUDSTextArea(label: "Label", text: $text, helperText: .textual("Max 500 chars."))
OUDSTextArea(label: "Label", text: $text, helperText: .textual(.rich(AttributedString(…))))
OUDSTextArea(label: "Label", text: $text, helperText: .charactersMaxCount(500))
OUDSTextArea(label: "Label", text: $text,
             helperLink: .init(text: "Learn more") { openUrl(url) })
// Fixed height — no vertical growth, scroll from first overflow line
OUDSTextArea(label: "Label", text: $text, constrainedMaxHeight: true)
// Error status: .textualError(message: OUDSTextualContent), raw (literal), localized or rich
OUDSTextArea(label: "Label", text: $text, status: .textualError(message: .rich(AttributedString(…))))
```

> `OUDSTextArea.HelperText.plain(_:)` and `.rich(_:)` are **deprecated** since v3.2.0, use `.textual(_:)` with an `OUDSTextualContent`.
> `OUDSTextArea.Status.error(message:)` and `.richError(message:)` are **deprecated** too, use `.textualError(message:)`.

> Height is controlled by two component tokens on `theme.textArea`:
> - `sizeMinHeightInput` (72 pt by default) — minimum height, always applied
> - `sizeMaxHeightInput` (240 pt by default) — maximum height before scroll (used when `constrainedMaxHeight: false`, the default)
>
> When `constrainedMaxHeight: true`, `maxHeight` is capped to `sizeMinHeightInput`, keeping the component at a fixed compact size.
