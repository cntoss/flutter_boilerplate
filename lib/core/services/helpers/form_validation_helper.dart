import 'package:flutter_boilerplate/core/services/utils/string_utils.dart';
import 'package:string_validator/string_validator.dart';

class FormValidationHelper {
  String? isNumber(String? text) {
    if (text != null && isNumeric(text)) {
      return null;
    }
    return 'Input should be number.';
  }

  String? required(String? text) {
    if (text == null || text.isEmpty) {
      return 'This field is required.';
    }
    return null;
  }

  String? validatePassword(String? text) {
    if (text == null || text.isEmpty) {
      return 'This field is required.';
    }
    const pattern =
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
    final regExp = RegExp(pattern);
    if (!regExp.hasMatch(text)) {
      return 'At least one lower case\n'
          'At least one capital letter\n'
          'At least one number\n'
          'At least one special character\n'
          'Be at least 8 characters';
    }
    return null;
  }

  String? validatePhoneNumberForCountry({
    required String? text,
    required int length,
  }) {
    final String digitsOnly = StringUtils().numbersOnly(text ?? '');
    if (digitsOnly.length != length) {
      return 'Phone number must be $length digits';
    }
    return null;
  }
}
