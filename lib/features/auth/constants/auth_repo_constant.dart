import 'package:flutter_boilerplate/core/constants/repository_constant.dart';

class AuthRepoConstant {
  static final String login = '$apiBaseUrl/login';
  static final String resetPassword =
      '$apiBaseUrl/forgot-password/reset-password/';
  static final String resetPasswordLink =
      '$apiBaseUrl/forgot-password/send-reset-link';
}
