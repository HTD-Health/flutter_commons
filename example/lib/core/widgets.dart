import 'package:flutter/material.dart';

typedef List<Widget> BuilderFunction(BuildContext context);

class WidgetDefinition {
  final BuilderFunction widgetsBuilder;
  final String widgetName;

  WidgetDefinition({this.widgetName, this.widgetsBuilder})
      : assert(widgetsBuilder != null && widgetName != null);
}

class WidgetSection extends StatelessWidget {
  final Widget child;
  final String label;

  WidgetSection({
    @required this.child,
    @required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
            child: Text(label),
          ),
          child,
        ],
      ),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
      ),
    );
  }
}
