# Reusable Styles

Building flutter apps can sometimes leave us with a lot of garbage which can cause problems in the user experience. Here we generates styles in a way that can be used from any widget and we don't have to define then again and again.

## Examples:

Here are some examples of how we create styles for different purposes.

### Colors

Unlock a World of Color Harmony with Our Centralized Color Library Encapsulated in `TwColors` Class - The Ultimate Solution for Consistent Widget Color Schemes!

```dart
class TwColors{ // [!code focus]
    /// Theme Colors // [!code focus]
    static Color primaryColor(BuildContext context) => Theme.of(context).primaryColor; // [!code focus]
    static Color primaryColorDark(BuildContext context) => Theme.of(context).primaryColorDark;
    static Color primaryColorLight(BuildContext context) => Theme.of(context).primaryColorLight; // [!code focus]
    static Color secondary(BuildContext context) => Theme.of(context).colorScheme.secondary;
    static Color secondaryColor(BuildContext context) => Theme.of(context).colorScheme.secondary; // [!code focus]
    static Color backgroundColor(BuildContext context) => Theme.of(context).backgroundColor;
    static Color scaffoldBackgroundColor(BuildContext context) => Theme.of(context).scaffoldBackgroundColor;
    static Color cardColor(BuildContext context) => Theme.of(context).cardColor;

    /// More lots of colors which are configured in the `tailwind.config.json` file. // [!code focus]
} // [!code focus]
```

#### Background Color

See the above color palette, We have only this palette and we use it to have background color for the Widgets which can have background color.

```dart
/// Same palette can be used to access color like this // [!code focus]
Container(
    height: 300,
    width: 300,
    color: TwColors.primaryColor(context), // [!code focus]
),

/// And extensions also return color from the same palette // [!code focus]
TwContainer()
.square(300)
.primaryColor(context) // [!code focus]
.render(),

/// --------------- OR --------------- /// // [!code focus]

Container()
.isContainer
.width(300)
.height(300)
.coolGray800 // [!code focus]
.render(),
```

#### Text Color

Same color palette is also used for text colors.

```dart
/// Same palette can be used to access color like this // [!code focus]
Text(
    "Tailwind CLI is awesome",
    style: TextStyle(
        color: TwColors.primaryColor(context) // [!code focus]
    ),
),

/// And extensions also return color from the same palette // [!code focus]
TwText("Flutter is awesome")
.bold
.primaryColor(context) // [!code focus]
.render(),

/// --------------- OR --------------- /// // [!code focus]

"Tailwind is awesome"
.isText
.textXl
.coolGray800 // [!code focus]
.render(),
```

#### Border Color

Guess what we are using same color palette for border colors.

```dart
/// Same palette can be used to access color like this // [!code focus]
Container(
    decoration: BoxDecoration(
        border: Border.all(color: TwColors.primaryColor(context), width: 1),  // [!code focus]
    ),
),

/// And extensions also return color from the same palette // [!code focus]
TwContainer()
.bold
.borderPrimaryColor(context) // See border prefix // [!code focus]
.render(),

/// --------------- OR --------------- /// // [!code focus]

TwContainer()
.borderCoolGray800 // See border prefix // [!code focus]
.render(),
```

_In the above exmple we are using `border<ColorName>` to get and apply color to the border for `Container`. In this we used `border` prefix just to separate the background color `extension` from the border color as they can be conflicted if the extension is with same name._

### Sizes / Spacers

Unleash the Power of Consistent Sizing with the `TwSizes` Class - Your One-Stop Shop for All Widget Sizing Needs!

```dart
class TwSizes { // [!code focus]
    static const double spacer = 16.0;  // [!code focus]
    static const double spacer0 = spacer * 0; // [!code focus]
    static const double spacer1 = spacer * 0.25;
    static const double spacer2 = spacer * 0.5;
    static const double spacer4 = spacer * 1.0; // [!code focus]
    // ------ Other spacers ------ // // [!code focus]
    static const double spacer20 = spacer * 5;
    // ------ Other spacers ------ // // [!code focus]
    static const double spacer24 = spacer * 6; // [!code focus]
} // [!code focus]
```

_In the above example you can see there are a lot of sizes and spacings are available to be used anywhere in the app._

#### Paddings

```dart
/// Use `TwSizes` as Padding value
Container(
    padding: EdgeInsets.all(TwSizes.spacer1), // See the magic here // [!code focus]
),

/// Other way
TwContainer()
.p1  // See the magic here // [!code focus]
.render(),

/// And another way
TwContainer()
.px(TwSizes.spacer2) // See the magic here // [!code focus]
.py(TwSizes.spacer4) // See the magic here // [!code focus]
.render(),
```

#### Margins

```dart
/// Use `TwSizes` as Margin value
Container(
    margin: EdgeInsets.all(TwSizes.spacer1), // See the magic here // [!code focus]
),

/// Other way
TwContainer()
.m1  // See the magic here // [!code focus]
.render(),

/// And another way
TwContainer()
.mx(TwSizes.spacer2) // See the magic here // [!code focus]
.my(TwSizes.spacer4) // See the magic here // [!code focus]
.render(),
```
