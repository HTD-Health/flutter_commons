# HTD Commons

A mono repo of helpful flutter widgets and utils.

## Getting started

If you want to add all widgets to your app, follow these steps:

1. Add this to your `pubspec.yaml` file.

    ```yaml
    dependencies:
      htdc:
        git: git://github.com/HealthTechDevelopers/flutter_commons.git
    ```
2. You are ready! 😉

## Widgets

### `FadeButton`

A widget that provides a fade effect when a tap gesture is performed on its child.

1. Add this to your `pubspec.yaml` file.

    ```yaml
    dependencies:
      htdc_fade_button:
        git:
          url: git://github.com/HealthTechDevelopers/flutter_commons.git
          path: widgets/fade_button
    ```
2. Example use:  
    ```dart
    FadeButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        height: 50,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF4E598C),
        ),
        child: Text(
          'Example Button',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
    ```
    ![FadeButton example](/widgets/fade_button/example.gif)
