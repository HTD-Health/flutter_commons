import 'package:flutter/material.dart';
import 'package:htdc/htdc.dart';

class FaderExampleScreen extends StatefulWidget {
  @override
  _FaderExampleScreenState createState() => _FaderExampleScreenState();
}

class _FaderExampleScreenState extends State<FaderExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fader'),
      ),
      body: SafeArea(
        child: Fader(
          child: ListView.separated(
            padding: const EdgeInsets.all(15),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (__, _) => const PlaceholderStripe(
              height: 60,
            ),
            separatorBuilder: (__, _) => const SizedBox(height: 10),
          ),
        ),
      ),
    );
  }
}
