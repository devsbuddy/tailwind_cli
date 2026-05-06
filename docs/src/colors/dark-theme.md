---
title: Dark theme is here
description: After a long time and customization finally dark mode for colors is here.
---

# Dark Theme

I know, One of the best things about `TailwindCSS` is that it has great support for the dark theme which can be accessed for any color class whether Background Color, Text Color, Border Color, Gradient Colors, etc. So I thought why we can not have the same thing inside this package as it is built with the inspiration of `TailwindCSS` itself?

### Enable Dark Theme

The dark theme is enabled by default and you should disabled it if you want.

:::code-group

```json[tailwind.config.json]
{
  "darkMode": true // [!code --]
  "darkMode": false // [!code ++]
}
```

:::

Add the above line or update its value to `true` which enables the `Dark Theme` inside the tailwind project.

### Build new styles

Yes only setting it inside the config is not enough it just tells the generator to generate dark variants but to actually generate you need to build tailwind styles again.

```shell
flutter pub run tailwind_cli:build
```

### What does it provide?

As I already mentioned that in Tailwind CSS there are several places where this dark variant applies but in this package we are considering the colors property only.

#### Background Colors

It builds dark color variants for the background colors on each element in which we can use the background color.

#### Example Usage:

```dart
/// To create a [Container]
TwContainer(
  child: "I am a container with dark theme color".isText.bodyText1(context).indigo500.onDarkIndigo100.render(),
)
.square(100)
.rounded
.shadow
.p3
.white // Will apply by default
.onDarkCoolGray800 // Will take control while the app is in dark theme mode
.render(),
```

```dart
TextButton(
    onPressed: () {},
    child: "I am a tw button".isText.indigo100.semiBold.textSm.render(),
).isButton.indigo400.onDarkIndigo900.px5.rounded.render(),
```

#### Text Color

We are using the centralized color palette for the background and text so it will be only 1 palette that is being used on every element which uses color

#### Example Usage:

```dart
"Tailwind is awesome"
.isText
.coolGray800
.onDarkWhite
.render(),
```

```dart
TwText("Flutter is awesome")
.coolGray800
.onDarkWhite
.render(),
```

::: warning
You may have an issue in which your `dark` mode color not applying when changing your app's theme. It is because your app doesn't refreshes UI for dark mode to take effect for that you must wrap your `MaterialApp` with `TwAppBuilder` so it can help you rebuild UI when needed
:::

## Using "TwAppBuilder"

In your `main.dart` where you initialised the `MaterialApp` you must add this.

```dart
import "package:tailwind/tailwind.dart"; // [!code ++]

//... Other stuffs

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TwAppBuilder( // [!code ++]
      builder: (BuildContext context, ThemeMode themeMode) { // [!code ++]
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          key: TwService.appKey,
          themeMode: themeMode, // [!code ++]
          theme: ThemeData(
            primaryColor: TwColors.gray,
            appBarTheme: AppBarTheme(
              backgroundColor: TwColors.blueGray.shade800,
              elevation: 0,
              centerTitle: true,
            ),
          ),
          home: ExamplePage(),
        );
      }, // [!code ++]
    ); // [!code ++]
  }
}
```

It will help you to get the best out of `TwStylings` specially `darkMode` feature for any color.
as it is a wraper around your `MaterialApp` to rebuild UI whenever needed.
