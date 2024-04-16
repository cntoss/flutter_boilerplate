import 'dart:math';

import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/providers/app_state_provider.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext get currentContext => navigatorKey.currentContext!;

/// Media Query Helpers
Size mediaSize(BuildContext context) => MediaQuery.of(context).size;
double mediaHeight(BuildContext context) => MediaQuery.of(context).size.height;
double mediaWidth(BuildContext context) => MediaQuery.of(context).size.width;
MediaQueryData mediaQuery(BuildContext context) => MediaQuery.of(context);

double screenSize(BuildContext context) => sqrt(
      (mediaWidth(context) * mediaWidth(context)) +
          (mediaHeight(context) * mediaHeight(context)),
    );
// 6 inches * 160 logical pixels per inch (standard scale)
bool isSmallScreen(BuildContext context) => screenSize(context) < (6.0 * 160.0);

/// Theme Helper
ThemeData theme(BuildContext context) => Theme.of(context);

/// Random Color Generator
Color get randomColor => Color((Random().nextDouble() * 0xFFFFFF).toInt());

// App State
AppState appState(BuildContext context) => AppState.of(context)!;

/// Convinient method to access current color palette
UIColors palette(BuildContext context) => AppState.of(context)!.palette;
