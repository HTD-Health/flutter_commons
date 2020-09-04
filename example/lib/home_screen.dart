import 'package:flutter/material.dart';

import 'routes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<T> open<T>(NamedRoute route) =>
      Navigator.of(context).pushNamed<T>(route.val);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTDC"),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Fader"),
              onTap: () => open(Routes.fader),
            ),
            ListTile(
              title: Text("FadeButton"),
              onTap: () => open(Routes.fadeButton),
            ),
          ],
        ),
      ),
    );
  }
}
