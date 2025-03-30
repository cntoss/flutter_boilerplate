// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/providers/app_state_provider.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext get currentContext => navigatorKey.currentContext!;

/// Theme Helper
ThemeData theme(BuildContext context) => Theme.of(context);

/// Random Color Generator
Color get randomColor => Color((Random().nextDouble() * 0xFFFFFF).toInt());

// App State
AppState appState(BuildContext context) => AppState.of(context)!;

/// Convenient method to access current color palette
UIColors palette(BuildContext context) => AppState.of(context)!.palette;
