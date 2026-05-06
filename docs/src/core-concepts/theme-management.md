# Theme Management

With Tailwind, you can easily manage your light and dark themes, providing you the flexibility to switch between themes effortlessly, enhancing your ability to create captivating user experiences.

## What you get?

With Tailwind, we offer a highly essential `Widget` known as `TwAppBuilder`, which handles crucial operations within your application when you incorporate Tailwind into your project. Theme Management is one of them.

## How to Manage Theme?

TwAppBuilder provides a `ThemeMode` within its builder method, which you can utilize in your `MaterialApp` to retrieve and apply the currently selected or system theme in your Flutter app. This `themeMode` variable allows you to seamlessly integrate and synchronize the visual style of your app with the user's preferred or system-wide theme.

### Using Theme In your app

If you opt to use `TwAppBuilder` it provides you a variable with `ThemeMode`. You can use it inside your `MaterialApp` Widget to apply theme.

:::code-group

```dart [main.dart]
TwAppBuilder(
  builder: (BuildContext context, ThemeMode themeMode) {
    return MaterialApp(
      key: TwService.appKey,
      themeMode: themeMode, // [!code ++] // This will apply theme in your app
    );
  }
);
```

:::

#### Benefit of using `themeMode` from `TwAppBuilder`

If you use the `themeMode` from `TwAppBuilder` in your app, it will greatly assist you and simplify theme management. As mentioned before, `TwAppBuilder` is a helpful widget that adds responsiveness to theme changes. So, whenever you switch themes anywhere in your app, it will automatically apply to the entire app and immediately display the updated visual changes.

### Changing / Updating theme

Transforming the theme of an application and ensuring its persistent state can be quite challenging, but fear not! With the mighty TailwindCLI, we have you covered, making it a breeze to modify or update your app's theme while preserving its state.

Directly accessing or altering the themes using `TwAppBuilder` might not be feasible. That's why we've introduced a handful of methods within our powerful `TwService` class, catering to essential operations.

To set your application's theme, simply employ the `setThemeMode(ThemeMode)` method found in the `TwService` class. You can conveniently invoke this method from anywhere in your app, such as the settings page, by providing the desired `ThemeMode` to be set as the current theme.

**Note: `ThemeMode.system` is default value when you intoduce TwApp in your project.**

Example:


```dart
// Set ThemeMode to use system preference
TextButton(
    onPressed: () => TwService.setThemeMode(ThemeMode.system),
    child: Text("System"),
),

// Set ThemeMode to use Dark theme
TextButton(
    onPressed: () => TwService.setThemeMode(ThemeMode.dark),
    child: Text("Dark"),
),

// Set ThemeMode to use Light theme
TextButton(
    onPressed: () => TwService.setThemeMode(ThemeMode.light),
    child: Text("Light"),
),
```

Used in a settings page example:

```dart
import "package:tailwind/tailwind.dart";
//...

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Change theme"),
              const SizedBox(height: 4),
              Row(
                children: [
                  TextButton( // [!code focus]
                    onPressed: () => TwService.setThemeMode(ThemeMode.system), // [!code focus]
                    child: Text("System"), // [!code focus]
                  ), // [!code focus]
                  TextButton( // [!code focus]
                    onPressed: () => TwService.setThemeMode(ThemeMode.dark), // [!code focus]
                    child: Text("Dark"), // [!code focus]
                  ), // [!code focus]
                  TextButton( // [!code focus]
                    onPressed: () => TwService.setThemeMode(ThemeMode.light), // [!code focus]
                    child: Text("Light"), // [!code focus]
                  ), // [!code focus]
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
```
