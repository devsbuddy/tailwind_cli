---
title: TwImage
---

# TwImage

TaildindCLI provides you a `TwImage` Widget that can be used to show any Image in your application. It will auto detect the source and render the actual `Image` widget.

| **Tw Widget** | **Flutter Widget** |
| ------------- | ------------------ |
| TwImage       | Image              |

This Widget is a smart widget that is used create `Image` widget without any other specific constructor. Generally we need to use `Image.asset()` for local images and `Image.network()` for network image but when you use this `TwImage` Widget it smartly detect if it is a local asset image or a network image and render the required Constructor for `Image` Widget.

## Usage

* `TwImage`: Widget

This is a Wrapper widget for the Image widget provided by the flutter and it provides you some extension methods specific to Image styling to style your image with ease.

| **Tw Widget**                           | **Flutter Widget**                            |
| --------------------------------------- | --------------------------------------------- |
| TwImage('images/logo.png')              | Image.asset('images/logo.png')                |
| TwImage('https://example.com/logo.png') | Image.network('https://example.com/logo.png') |
| TwImage('file://')                      | Image.file('file://image/path/logo.png') |

### TwImage Widget

```dart
Widget build(BuildContext contexr){
    return TwImage('images/logo.png')  // [!code ++]
    .square(40) // Provides 40[px/pt] image with square shape  // [!code ++]
    .render();   // [!code ++]
}
```

OR

```dart
Widget build(BuildContext contexr){
    return TwImage('https://cdn.example.com/avatars/john-doe.png') // [!code ++]
    .square(40) // Provides 40[px/pt] image with square shape // [!code ++]
    .rounded // [!code ++]
    .render(); // [!code ++]
}
```


## Api References

`TwImage` includes some handy extensions and methods which can help you add styling to an Image Widget.

| Mixins Extensions              | Mixins Methods                  |
| ------------------------------ | ------------------------------- |
| [Colors](/mixins/colors)       | [Colors](/methods/colors)       |
| [Roundness](/mixins/roundness) | [Roundness](/methods/roundness) |
| [Sizes](/mixins/size)          | NA                              |