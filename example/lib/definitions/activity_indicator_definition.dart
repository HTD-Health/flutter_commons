import 'package:example/core/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_commons/flutter_commons.dart';

WidgetDefinition activityIndicatorDefiniton = WidgetDefinition(
  widgetName: "Activity indicator",
  widgetsBuilder: (context) => [
    WidgetSection(
      label: "largeCircleColor: Colors.red, smallCircleColor: Colors.green",
      child: ActivityIndicator(
        largeCircleColor: Colors.red,
        smallCircleColor: Colors.green,
      ),
    ),
    WidgetSection(
      label: "percentage: 30, isActive: false",
      child: ActivityIndicator(
        largeCircleColor: Colors.red,
        smallCircleColor: Colors.green,
        isActive: false,
        percentage: 30,
      ),
    ),
    WidgetSection(
      label: "percentage: 30, isActive: true",
      child: ActivityIndicator(
        largeCircleColor: Colors.red,
        smallCircleColor: Colors.green,
        isActive: true,
        percentage: 30,
      ),
    ),
  ],
);
