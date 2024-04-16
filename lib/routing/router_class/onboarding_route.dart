import 'package:flutter_boilerplate/routing/router.dart';
import 'package:flutter/material.dart';

class OnboardingRoute extends GoRouteData {
  const OnboardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const Text('Welcome');
}
