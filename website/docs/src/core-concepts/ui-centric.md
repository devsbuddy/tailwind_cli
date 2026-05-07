# UI Centric

What makes Tailwind CLI package a better solution for your application's needs is that it mainly focuses on the UI for your applications and give you flexibility to create your awesome design with less code and achieve what you visioned.

## What powers this package has?

You can use this package to create any kind of application that you want to build and every app needs to have a different look and feel and same time look great to the end users. I created this package to give you the power of extenstion methods and getters as it is inspired by the the `TailwindCSS` which uses low level classes to use together and build awesome designs.

Some example features

### Widgets

As everything in flutter is Widget and you have to add a lot of styles and customize every property of the Widget to achieve the look you want. And everyone knows that how much time it takes to do this. So I created some Widgets that are the wrapper around the Native Flutter Widgets and comes with the power of extenstions which are the centralized styles for all kind of widgets that can be accessed from any widget and refers to the same style.

::: tip
You can check the `Widget` section to know more about the available widgtes in `TailwindCLI`.

Go to [Widgets Section](../widgets/tw-button)
:::

#### TwContainer

```dart
/// Flutter's Widget: [Container]
/// From Tailwind: [TwContainer]
/// It gives you same [Container] Widget as flutter
/// But it comes with different approach to style it.

TwContainer(
    child: Text(
        "I am a TwContainer",
        style: TextStyle(fontSize: 16),
    ),
)
.px4 // Gives horizontal padding: 16
.py5 // Gives vertical padding: 20
.rounded // Makes the container rounded
.shadow // Applies box shadows to the container
.render(),
```

#### TwText

```dart
/// Flutter's Widget: [Text]
/// From Tailwind: [TwText]
/// It gives you same [Text] Widget as flutter
/// But it comes with different approach to style it.

TwText(
    "I am a TwText",
)
.textBase // Provides base font size: 16
.coolGray700 // Renders [TwText] widget with cool gray color [Checkout Colors Here](../colors/background-color.md)
.render(),
```

### Methods

Tailwind offers a range of handy methods that facilitate effortless creation and execution of actions.


#### Gesture Recognizers

```dart
/// Flutter's Widget: [InkWell]
/// From Tailwind: [onTap]
/// It gives you same [InkWell] Widget as flutter
/// But it applies [onTap] method with different approach.

TwContainer(
    child: TwText(
        "I Am Clickable",
    )
    .textBase
    .render(),
)
.px4
.py5
.rounded
.shadow
.render()
.onTap(() => print("Click")), // This is where magic happens
```

_In above example we created a container and made it clickable so we can do something when clicked on it._

#### Center Widget

```dart
TwText(
    "I Am Centered Text",
)
.textBase
.render()
.center(), // This is where magic happens
```

_In above example we created a container and made it clickable so we can do something when clicked on it._

### Extensions

In the package you get a list of extensions which can be used to apply different types of styles to any widget.

#### isText:

```dart
"I Am Clickable".isText // This is where magic happens
.textBase
.render(),
```

_In the above example we have a string and using `isText` extension we converted it to a `Text` Widget._

#### isContainer:

```dart
"I Am Clickable"
.isText
.textBase
.render()
.isContainer  // This is where magic happens
.render(),
```

_In the above example we have a string which is being converted to Text Widget and after that in the Text Widget we used `isContainer` Extension to wrap `Text` with `Container` Widget._

There are a lot more awesome feature in the package that can be implemented to any app.
