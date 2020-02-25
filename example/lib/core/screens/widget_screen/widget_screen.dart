import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets.dart';

class WidgetScreen extends StatelessWidget {
  final BuilderFunction widgetsBuilder;
  final String widgetName;

  WidgetScreen({this.widgetName, this.widgetsBuilder})
      : assert(widgetsBuilder != null && widgetName != null);

  @override
  Widget build(BuildContext context) {
    final widgets = widgetsBuilder(context);
    return Scaffold(
      appBar: AppBar(title: Text(widgetName)),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 15),
          itemBuilder: (BuildContext context, int index) => widgets[index],
          itemCount: widgets.length,
        ),
      ),
    );
  }
}
