import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/auth/views/screens/change_password_screen.dart';
import 'package:flutter_boilerplate/features/auth/views/screens/login_screen.dart';
import 'package:flutter_boilerplate/features/onboarding/views/screens/splash_screen.dart';

export 'package:flutter_boilerplate/routing/router_class/auth_route.dart';
export 'package:flutter_boilerplate/routing/router_class/onboarding_route.dart';

// part 'router.g.dart';

// Go Router Workaround to navigator
// --------------------------------------------------------------------------

class GoRouterState {
  const GoRouterState();
}

abstract class GoRouteData {
  const GoRouteData();

  Widget build(BuildContext context, GoRouterState state);
}

extension GoRouterX on GoRouteData {
  Future<T?> push<T extends Object?>(
    BuildContext context, {
    RouteSettings? settings,
  }) {
    const GoRouterState state = GoRouterState();
    return Navigator.push(
      context,
      MaterialPageRoute<T>(
        builder: (context) => build(context, state),
        settings: settings,
      ),
    );
  }

  Future<T?> go<T extends Object?>(BuildContext context) {
    const GoRouterState state = GoRouterState();
    return Navigator.push(
      context,
      MaterialPageRoute<T>(
        builder: (context) => build(context, state),
      ),
    );
  }

  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    BuildContext context, {
    TO? result,
  }) {
    const GoRouterState state = GoRouterState();

    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => build(context, state)),
      result: result,
    );
  }
}

extension BuildContextX on BuildContext {
  void pop<T extends Object?>([T? result]) {
    Navigator.of(this).pop<T>(result);
  }
}

// @TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SplashScreen();
}

// @TypedGoRoute<LoginRoute>(
//   path: '/login',
//   routes: [
//     TypedGoRoute<ForgotPasswordRoute>(path: 'forgot-password'),
//   ],
// )
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

// /// Routes
// @TypedGoRoute<HomeRoute>(
//   path: '/',
//   routes: [
//     //Dashboard Routes
//     TypedGoRoute<>(path: 'notification'),

//     // Routes for Auth features
//     TypedGoRoute<SecurityPageRoute>(
//       path: '',//       routes: [
//         TypedGoRoute<>(path: 'enter-pin'),
//         // TypedGoRoute<SecurityPageRoute>(path: 'security'),
//         TypedGoRoute<ResetPasswordRoute>(path: 'reset-password'),
//         TypedGoRoute<ResetSuccessRoute>(path: 'reset-success'),
//         TypedGoRoute<LoadindRoute>(path: 'loading'),
//       ],
//     ),
//     //Dashboard Routes
//     // TypedGoRoute<DashBoardRoute>(
//     //   path: 'dashboard',
//     //   routes:
//     //   //  <TypedGoRoute<GoRouteData>>
//     //   [
//     //      TypedGoRoute<NotificationRoute>(path: 'notification'),
//     //   ],
//     // ),

//     // Profile Page routes.
//     TypedGoRoute<ProfileRoute>(
//       path: 'profile',
//       routes: <TypedGoRoute<GoRouteData>>[
//       ],
//     ),

//     TypedGoRoute<SettingRoute>(
//       path: 'setting',
//     ),
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => Container();
}

class ChangePasswordRoute extends GoRouteData {
  const ChangePasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ChangePasswordScreen();
}
