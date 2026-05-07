---
title: TwRow
---

# TwRow

`TwRow` provides you a really useful wrapper around the `Row` Widget to create Row for your app's UI and manage it with ease by using easy to use methods provided by the `TwRow` Widget.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| TwRow         | Row                |

:::tip
You have 2 options to create a `Row` Widget in your app while using `TailwindCLI` for UI design.

1. `TwRow` Widget
   * You can directly use this Widget to get a `Row` and start styling it by built in methods & extensions for all posible styles. 
2. `.isRow` extension method
   * Or you can use this extension method on `Row` Widget that will convert it to `TwRow` and provides you the extensions for all posible styling and return Native `Row` widget at the end.
:::

No matter what you use for creating Row you will get the flutter's `Row` Widget at the end.


## Usage

* `TwRow`: Widget
* `.isRow`: Extension 

`TwRow` and `.isRow` are just wrappers around the Row Widget itself to help you style it with ease using extension methods.

`TwRow` is a wrapper widget around the Row widget which allows you to create Row widget with ease.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| TwRow()       | Row                |


`.isRow` is a helpful extension which creates a Row widget.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| .isRow        | Row                |


### TwRow widget

```dart
Widget build(BuildContext contexr){
    return TwRow(<Widget>[ // [!code ++]
        TwText("Left Text").render(), // [!code ++]
        TwText("Right Text").render(), // [!code ++]
    ]).justifyBetween.render(); // [!code ++]
}
```
>  Provided code will give you a Row with `mainAxisAlignment` as `MainAxisAlignment.spaceBetween`.

### .isRow extension

```dart
Widget build(BuildContext contexr){
    return Row(
          children: [
            TwText("Left Text").render(),
            TwText("Right Text").render(),
          ],
        ).isRow // It's Magic: By using this  // [!code focus]
        .justifyBetween.render(); // You will be able to do this  // [!code focus]
}
```
> Provided code will give you a Row with `mainAxisAlignment` as `MainAxisAlignment.spaceBetween`.


## TwRow Constructor
```dart
TwRow(List<Widget> _children)
```

## TwRow properties

* `List<Widget>` [**__children_**](#twrow-widget): Children to be rendered inside this Row Widget.

## Api References

`TwRow` centralized all the properties of Row widget into easy to use methods.

### mainAxisAlignment (Aligns horizontally)
| Method/Extension | Replaces          | Applies                        |
| ---------------- | ----------------- | ------------------------------ |
| .justifyCenter   | mainAxisAlignment | MainAxisAlignment.center       |
| .justifyStart    | mainAxisAlignment | MainAxisAlignment.start        |
| .justifyEnd      | mainAxisAlignment | MainAxisAlignment.end          |
| .justifyBetween  | mainAxisAlignment | MainAxisAlignment.spaceBetween |
| .justifyAround   | mainAxisAlignment | MainAxisAlignment.spaceAround  |
| .justifyEvenly   | mainAxisAlignment | MainAxisAlignment.spaceEvenly  |

### crossAxisAlignment (Aligns vertically)
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
