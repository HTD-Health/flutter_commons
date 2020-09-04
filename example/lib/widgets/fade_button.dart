import 'package:flutter/material.dart';
import 'package:htdc/htdc.dart';

class FadeButtonExampleScreen extends StatefulWidget {
  @override
  _FadeButtonExampleScreenState createState() =>
      _FadeButtonExampleScreenState();
}

class _FadeButtonExampleScreenState extends State<FadeButtonExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeButton"),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: <Widget>[
            FadeButton(
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                height: 50,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Style.of(context).colors.accent,
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
          ],
        ),
      ),
    );
  }
}
