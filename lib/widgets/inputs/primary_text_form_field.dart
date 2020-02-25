part of flutter_commons;

class PrimaryTextFormField extends StatelessWidget {
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String hintText;
  final String label;
  final bool enabled;
  final List<FormFieldValidator<String>> validators;
  final bool primaryColorBorder;
  final bool autocorrect;
  final bool autovalidate;
  final ValueChanged<String> onChanged;
  final FocusNode focusNode;
  final ValueChanged<String> onFieldSubmitted;
  final String helperText;
  final Key key;
  final int maxLength;
  final int rows;
  final bool capitalize;
  final bool obscureText;
  final EdgeInsets margin;
  static BuildContext context;
  final TextInputAction textInputAction;
  final TextStyle labelTextStyle;
  final TextStyle textStyle;
  final InputBorder border;
  final InputBorder focusedBorder;
  final InputBorder enabledBorder;
  final String initialValue;

  PrimaryTextFormField({
    this.label,
    this.keyboardType,
    this.textInputAction,
    this.margin = const EdgeInsets.symmetric(vertical: 5),
    this.controller,
    this.hintText,
    this.focusNode,
    this.onChanged,
    this.enabled = true,
    this.validators = const [],
    this.onFieldSubmitted,
    this.autocorrect = false,
    this.autovalidate = false,
    this.primaryColorBorder = false,
    this.helperText,
    this.key,
    this.maxLength,
    this.rows = 1,
    this.capitalize = false,
    this.obscureText = false,
    this.labelTextStyle,
    this.textStyle,
    this.focusedBorder,
    this.initialValue,
    this.enabledBorder,
    this.border,
  });

  String _validateField(String value) {
    for (final validator in validators) {
      final error = validator(value);
      if (error != null) return error;
    }
    return null;
  }

  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (label != null)
            Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: Text(
                label.toUpperCase(),
                style: labelTextStyle,
              ),
            ),
          TextFormField(
            obscureText: obscureText,
            textInputAction: textInputAction,
            maxLength: maxLength,
            maxLines: rows,
            focusNode: focusNode,
            onFieldSubmitted: onFieldSubmitted,
            autovalidate: autovalidate,
            autocorrect: autocorrect,
            onChanged: onChanged,
            validator: _validateField,
            controller: controller,
            enabled: enabled,
            initialValue: initialValue,
            keyboardType: keyboardType,
            style: textStyle,
            textCapitalization: capitalize
                ? TextCapitalization.sentences
                : TextCapitalization.none,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              hintText: hintText,
              helperText: helperText,
              focusedBorder: focusedBorder,
              enabledBorder: enabledBorder,
              border: border,
            ),
          ),
        ],
      ),
    );
  }
}
