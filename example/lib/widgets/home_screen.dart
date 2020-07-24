import 'package:flutter/material.dart';
import 'package:htdc/htdc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Fader(
          child: Column(
            children: <Widget>[
              PlaceholderStripe(
                color: Style.of(context).colors.content,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
