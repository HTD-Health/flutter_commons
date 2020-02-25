import 'package:example/widget_definitions.dart';
import 'package:flutter/material.dart';

import '../widget_screen/widget_screen.dart';

class WidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets list")),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final widgetDefinition = widgetList[index];
            return RaisedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => WidgetScreen(
                  widgetName: widgetDefinition.widgetName,
                  widgetsBuilder: widgetDefinition.widgetsBuilder,
                ),
              )),
              child: Text(widgetDefinition.widgetName),
            );
          },
          itemCount: widgetList.length,
        ),
      ),
    );
  }
}
