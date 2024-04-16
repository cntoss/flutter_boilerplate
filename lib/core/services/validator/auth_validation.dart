class AuthValidation {
  String? validatePassword(String? pass) {
    if (pass == null) {
      return 'This filed is required';
    } else {
      final bool hasUppercase = pass.contains(RegExp('[A-Z]'));
      final bool hasLowercase = pass.contains(RegExp('[a-z]'));
      final bool hasDigits = pass.contains(RegExp('[0-9]'));
      final bool hasSpecialCharacters =
          pass.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

      if (pass.length >= 8) {
        final bool isValid =
            hasUppercase && hasLowercase && hasDigits && hasSpecialCharacters;
        if (!isValid) {
          return 'Your password should contain at-least 1 Uppercase,'
              ' 1 Lowercase, 1 Numeric and 1 special character';
        } else {
          return null;
        }
      } else {
        return 'Your password must be 8 or more characters long';
      }
    }
  }
}
