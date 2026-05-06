---
title: TwButton
---

# TwButton
TailwindCLI provides you a really helpful widget `TwButton` and an extension `isButton` to easily create a `Button` widget for your app's Layout.

| **Tw Widget** | **Flutter Widget**                         |
| ------------- | ------------------------------------------ |
| TwButton      | Some Widgets To Make A Clickable Button UI |

:::tip
You have 2 options to create a `Button` UI in your app while using `TailwindCLI` for your app.

1. `TwButton` Widget
   * You can directly use this Widget to get a Button UI and start styling it by built in extensions for all posible styles. 
2. `.isButton` extension method
   * Or you can use this extension method on `Button` UI that will convert it to `TwButton` and provides you the extensions for all posible styling and return `Button` UI built using some Widgets.
:::

No matter what you use for creating Button you will get the flutter's `Button` UI built using some Widgets at the end.


## Usage

* `TwButton`: Widget
* `.isButton`: Extension 

`TwButton` and `.isButton` are just helpful Widget and extension to provide Button UI.

`TwButton` is a wrapper widget around the `Widget`'s which allows you to create Button UI with ease.

| **Tw Widget** | **Flutter Widget**                         |
| ------------- | ------------------------------------------ |
| TwButton()    | Some Widgets To Make A Clickable Button UI |


`.isButton` is a helpful extension which creates a Button UI using some required Widgets.

| **Tw Widget** | **Flutter Widget**                         |
| ------------- | ------------------------------------------ |
| .isButton     | Some Widgets To Make A Clickable Button UI |

### TwButton widget

```dart
Widget build(BuildContext contexr){
    return TwButton( // [!code ++]
        child: TwText("I am a TwButton").render(), // [!code ++]
    ).primaryColor(context) // Primary Color From Theme // [!code ++]
    .onTap(() => print("Button Clicked.")) // Add on Tap action directly // [!code ++]
    .render(); // [!code ++]
}
```
> Provides a Button UI for your app with `primary` color from theme.

### .isButton extension

```dart
Widget build(BuildContext contexr){
    return Container(
        child: TwText("I am a TwButton").render(),
    )
    .isButton // It's Magic: By using this  // [!code focus]
    .primaryColor(context) // You will be able to do this  // [!code focus]
    .onTap(() => print("Button Clicked.")) // and this  // [!code focus]
    .render(); // and this  // [!code focus]
}
```
> Provides a Button UI for your app with `primary` color from theme with `onTap` action.


## TwButton Constructor
```dart
TwButton({required this.child})
```

## TwButton properties

* `Widget` **_child_**: Child to render inside the Button UI mostly it will be `Text`

## Api References

`TwButton` includes some handy extensions and methods which can help you add styling or functionality to button.


### Internal Methods
TwButton has some built in methods to provide styles to the Button UI. These methods are specifically defined for the Button UI.

| Method                                         | What it does                                        |
| ---------------------------------------------- | --------------------------------------------------- |
| .withConstraints(BoxConstraints constraints)   | Adds BoxContraints to the Button UI                 |
| .color(Color color)                            | Provides Color to Button UI                         |
| .transform(Matrix4 val)                        | Adds transformation                                 |
| .clip(Clip clip)                               | Clip the Button UI                                  |
| .setBusy(bool isBusy)                          | Sets Button State to Busy (Shows loading indicator) |
| .setBusyWidget(Widget? busyWidget)             | Adds custom loading indicator                       |
| .withBorder(Border border)                     | Adds custom border                                  |
| .linearGradient(LinearGradient linearGradient) | Adds Linear Gradient                                |
| .radialGradient(RadialGradient radialGradient) | Adds Radial Gradient                                |
| .sweepGradient(SweepGradient sweepGradient)    | Adds Sweep Gradient                                 |


### Methods & Extensions from Mixins

| Mixins Extensions                         | Mixins Methods                         |
| ----------------------------------------- | -------------------------------------- |
| [Alignment](/mixins/alignment#extensions) | [Alignment](/mixins/alignment#methods) |
| [Borders](/mixins/border#extensions)      | N/A                                    |
| [Colors](/mixins/colors#extensions)       | [Colors](/mixins/colors#methods)       |
| [Gestures](/mixins/gestures#extensions)   | [Gestures](/mixins/gestures#methods)   |
| [Gradients](/mixins/gradients#extensions) | [Gradients](/mixins/gradients#methods) |
| [Margins](/mixins/margins#extensions)     | [Margins](/mixins/margins#methods)     |
| [Paddings](/mixins/paddings#extensions)   | [Paddings](/mixins/paddings#methods)   |
| [Roundness](/mixins/roundness#extensions) | [Roundness](/mixins/roundness#methods) |
| [Shadows](/mixins/shadow#extensions)      | [Shadows](/mixins/shadow#methods)      |
| [Size](/mixins/size#extensions)           | N/A                                    |
