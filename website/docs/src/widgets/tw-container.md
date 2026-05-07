---
title: TwContainer
---

# TwContainer

TailwindCLI provides you a really helpful widget `TwContainer` and `isContainer` extension to easily create a `Container` widget for your app's Layout.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| TwContainer   | Container          |

:::tip
You have 2 options to create a `Container` Widget in your app while using `TailwindCLI` for UI design.

1. `TwContainer` Widget
   * You can directly use this Widget to get a Container and start styling it by built in extensions for all posible styles. 
2. `.isContainer` extension method
   * Or you can use this extension method on `Container` Widget that will convert it to `TwContainer` and provides you the extensions for all posible styling and return Native `Container` widget at the end.
:::

No matter what you use for creating Container you will get the flutter's `Container` Widget at the end.

## Usage

* `TwContainer`: Widget
* `.isContainer`: Extension 

`TwContainer` and `.isContainer` are just wrappers around the Container Widget itself to help you style it with ease using extension methods.

`TwContainer` is a wrapper widget around the Container widget which allows you to create Container widget with ease.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| TwContainer() | Container          |


`.isContainer` is a helpful extension which creates a Container widget.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| .isContainer  | Container          |


### TwContainer widget

```dart
Widget build(BuildContext contexr){
    return TwContainer( // [!code ++]
        child: TwText("I am a TwContainer").render(), // [!code ++]
    ).backgroundColor(context).center.render(); // [!code ++]
}
```
> Provided code will give you a Container with `backgroundColor` from the theme and it will be aligned center.

### .isContainer extension

```dart
Widget build(BuildContext contexr){
    return TwText("I am a TwContainer").render()
    .isContainer // [!code ++]
    .backgroundColor(context).center.render(); // [!code ++]
}
```
> Provided code will give you a Container with `backgroundColor` from the theme and it will be aligned center.


## TwContainer Constructor
```dart
TwContainer({this.child})
```

## TwContainer properties

* `Widget` **_child_**: Child to render inside the Container widget.

## Api References

`TwContainer` provides you helpful extensions and methods to style your widget with ease.


### Internal Methods
TwContainer has some built in & useful methods that can be used to change and style Container Look and Feel.

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
| .withShadow(List<BoxShadow\> shadows)          | Adds custom box shadow                              |
| .shadowOutline({Color? outlineColor})          | Adds custom color as box shadow                     |
| .bgImage(DecorationImage image)                | Adds Background image to Container                  |

### Internal Extensions
TwContainer has some built in & useful extensions that can be used to change and style Container Look and Feel.

| Extension               | What it does                                       |
| ----------------------- | -------------------------------------------------- |
| .clipAntialias          | Sets `clipBehavior` to Clip.antialias              |
| .clipAliasWithSaveLayer | Sets `clipBehavior` to Clip.antiAliasWithSaveLayer |
| .clipHardEdge           | Sets `clipBehavior` to Clip.hardEdge               |
| .roundedFull            | Make it circle shape                               |


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