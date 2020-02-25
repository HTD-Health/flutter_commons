import 'package:example/core/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_commons/flutter_commons.dart';

WidgetDefinition primaryTextFormFieldDefinitions = WidgetDefinition(
  widgetName: "PrimaryTextFormField",
  widgetsBuilder: (context) => [
    WidgetSection(
      label: "label: 'Label'",
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: PrimaryTextFormField(
          label: "Label",
        ),
      ),
    ),
    WidgetSection(
      label: "label: 'Label',\n"
          "hintText: 'Hint Text'",
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: PrimaryTextFormField(
          label: "Label",
          hintText: "Hint Text",
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.green,
              width: 2,
            ),
          ),
        ),
      ),
    ),
  ],
);
