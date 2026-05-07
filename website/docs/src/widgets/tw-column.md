---
title: TwColumn
---

# TwColumn

TwColumn provides you a really useful wrapper around the `Column` Widget to create Column for your app's UI and manage it with ease by using easy to use methods & extensions provided by the `TwColumn` Widget.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| TwColumn      | Column             |

:::tip
You have 2 options to create a `Column` Widget in your app while using `TailwindCLI` for UI design.

1. `TwColumn` Widget
   * You can directly use this Widget to get a `Column` and start styling it by built in methods & extensions for all posible styles. 
2. `.isColumn` extension method
   * Or you can use this extension method on `Column` Widget that will convert it to `TwColumn` and provides you the extensions for all posible styling and return Native `Column` widget at the end.
:::

No matter what you use for creating Column you will get the flutter's `Column` Widget at the end.


## Usage

* `TwColumn`: Widget
* `.isColumn`: Extension 

`TwColumn` and `.isColumn` are just wrappers around the Column Widget itself to help you style it with ease using extension methods.

`TwColumn` is a wrapper widget around the Column widget which allows you to create Column widget with ease.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| TwColumn()    | Column             |


`.isColumn` is a helpful extension which creates a Column widget.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| .isColumn     | Column             |


### TwColumn widget

```dart
Widget build(BuildContext contexr){
    return TwColumn(<Widget>[ // [!code ++]
        TwText("Text Item 1").render(), // [!code ++]
        TwText("Text Item 2").render(), // [!code ++]
    ]).alignCenter.render(); // [!code ++]
}
```
>  Provided code will give you a Row with `crossAxisAlignment` as `CrossAxisAlignment.center`.

### .isColumn extension

```dart
Widget build(BuildContext contexr){
    return Column(
          children: [
            TwText("Text Item 1").render(),
            TwText("Text Item 2").render(),
          ],
        ).isColumn // It's Magic: By using this  // [!code focus]
        .alignCenter.render(); // You will be able to do this  // [!code focus]
}
```
> Provided code will give you a Row with `crossAxisAlignment` as `CrossAxisAlignment.center`.


## TwColumn Constructor
```dart
TwColumn(List<Widget> _children)
```

## TwColumn properties

* `List<Widget>` [**__children_**](#twcolumn-widget): Children to be rendered inside this Column Widget.


## Api References

`TwColumn` centralized all the properties of Column widget into easy to use methods.

### mainAxisAlignment (Aligns vertically)
| Method/Extension | Replaces          | Applies                        |
| ---------------- | ----------------- | ------------------------------ |
| .justifyCenter   | mainAxisAlignment | MainAxisAlignment.center       |
| .justifyStart    | mainAxisAlignment | MainAxisAlignment.start        |
| .justifyEnd      | mainAxisAlignment | MainAxisAlignment.end          |
| .justifyBetween  | mainAxisAlignment | MainAxisAlignment.spaceBetween |
| .justifyAround   | mainAxisAlignment | MainAxisAlignment.spaceAround  |
| .justifyEvenly   | mainAxisAlignment | MainAxisAlignment.spaceEvenly  |

### crossAxisAlignment (Aligns horizontally)
| Method/Extension | Replaces           | Applies                         |
| ---------------- | ------------------ | ------------------------------- |
| .alignCenter     | crossAxisAlignment | CrossAxisAlignment.center       |
| .alignStart      | crossAxisAlignment | CrossAxisAlignment.start        |
| .alignEnd        | crossAxisAlignment | CrossAxisAlignment.end          |
| .alignBetween    | crossAxisAlignment | CrossAxisAlignment.spaceBetween |
| .alignAround     | crossAxisAlignment | CrossAxisAlignment.spaceAround  |
| .alignEvenly     | crossAxisAlignment | CrossAxisAlignment.spaceEvenly  |


### mainAxisSize
| Method/Extension | Replaces     | Applies          |
| ---------------- | ------------ | ---------------- |
| .max             | mainAxisSize | MainAxisSize.max |
| .min             | mainAxisSize | MainAxisSize.min |
