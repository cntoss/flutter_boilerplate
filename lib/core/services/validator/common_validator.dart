class CommonValidator {
  String? validateEmail(String? text) {
    if ((text ?? '') != '') {
      final emailRegExp =
          RegExp(r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$');
      if (emailRegExp.hasMatch(text!)) {
        return null;
      } else {
        return 'Please enter a valid email address';
      }
    }
    return 'This field is required';
  }

  String? validatePassword(String text) {
    if (text.length < 8) {
      return 'Password must be  at least 8 characters long ';
    } else if (!RegExp('^(?=.*[a-z])').hasMatch(text)) {
      return 'Password must contain at least one lowercase'
          ' letter';
    } else if (!RegExp('^(?=.*[A-Z])').hasMatch(text)) {
      return 'Password must contain at least one uppercase letter';
    } else if (!RegExp(r'^(?=.*\d)').hasMatch(text)) {
      return 'Password must contain at least one number';
    } else if (!RegExp(r'^(?=.*[@$!%*?&.#^_+()\-=[\]{}|\\/~`"<>;:,._])')
        .hasMatch(text)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }
}
