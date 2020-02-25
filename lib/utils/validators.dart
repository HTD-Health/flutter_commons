import 'package:flutter/widgets.dart';

typedef Validator = String Function(String value);

abstract class Validators {
  static Validator lengthValidator(
    BuildContext context, {
    @required int minLenght,
    @required String errorMessage,
  }) =>
      (String value) {
        assert(errorMessage != null);
        return !hasMinLength(value, minLenght: minLenght) ? errorMessage : null;
      };

  static Validator requiredValidator(
    BuildContext context, {
    @required String errorMessage,
  }) =>
      (String value) {
        assert(errorMessage != null);
        return isNotEmpty(value) ? null : errorMessage;
      };

  static Validator retypeValidator(
    BuildContext context, {
    @required TextEditingController controller,
    @required String errorMessage,
  }) =>
      (String text) {
        assert(errorMessage != null && controller != null);
        return controller.value.text != text ? errorMessage : null;
      };

  static bool hasMinLength(String value, {@required int minLenght}) =>
      value.length >= minLenght;

  static bool isNotEmpty(String value) => value != null && value.isNotEmpty;
}
