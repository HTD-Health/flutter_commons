import 'package:example/widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:htdc/htdc.dart';

void main() {
  runApp(App());
}

/// Create your AppAssets class;
class AppAssets {
  const AppAssets();

  static const logo = 'htdc.png';
}

/// Class instance
const appAssets = AppAssets();

/// Define you app colors
const appColors = const AppColors(
  accent: Color(0xFF41B6E6),
  accent2: Color(0xFF0B9CD8),
  content: Color(0xFF172B4D),
  content2: Colors.white,
  background: Color(0xFFF4F5F7),
  background2: Colors.white,
  shadow: Color.fromRGBO(0, 0, 0, 0.1),
  shadow2: Color.fromRGBO(0, 0, 0, 0.05),
  confirm: Color(0xFF53B00D),
  confirm2: Color(0xFFF1FBE8),
  errorColor: Color(0xFFF85B65),
  errorColor2: Color(0xFFFEEBEC),
  inactive: Color.fromRGBO(23, 43, 77, 0.4),
);

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Style(
      asset: appAssets,
      colors: appColors,
      child: MaterialApp(
        title: 'HTDC',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: (RouteSettings settings) => MaterialPageRoute(
          builder: (context) {
            switch (settings.name) {
              case '/':
                return HomeScreen();
            }
          },
        ),
      ),
    );
  }
}
