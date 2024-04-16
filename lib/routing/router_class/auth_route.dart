import 'package:flutter_boilerplate/features/auth/views/screens/forgot_password_screen.dart';
import 'package:flutter_boilerplate/features/auth/views/screens/reset_password_screen.dart';
import 'package:flutter_boilerplate/routing/router.dart';
import 'package:flutter/material.dart';

/// P
class ForgotPasswordRoute extends GoRouteData {
  const ForgotPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ForgotPasswordScreen();
  }
}

class ResetPasswordRoute extends GoRouteData {
  const ResetPasswordRoute({required this.token});

  ///this token is coming from deeplink
  final String token;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ResetPasswordScreen(
      token: token,
    );
  }
}
