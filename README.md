# HTD Commons

A mono repo of helpful flutter widgets and utils.


## Widgets

### `FadeButton`

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