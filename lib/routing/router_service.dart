import 'package:flutter/material.dart';

// import 'package:go_router/go_router.dart';

// import 'package:flutter_boilerplate/routing/router_config.dart';

///Navigate back to specific route
void popUntilPath(BuildContext context, Widget screen) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute<void>(builder: (context) => screen),
    (Route<dynamic> route) => false,
  );

  // while (
  //     router.routerDelegate.currentConfiguration.matches.last.matchedLocation !=
  //         routePath) {
  //   if (!context.canPop()) {
  //     return;
  //   }
  //   context.pop();
  // }
}
