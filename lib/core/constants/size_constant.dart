import 'dart:math';

import 'package:flutter/material.dart';

const kSymmetricHrPadding = 24.0;
const int perPageLimit = 20;

AppSizes sz = AppSizes();

class AppSizes {
  static const double r_8 = 8.0;
  static const double r_16 = 16.0;
  static const double w_0 = 0.0;

  /// Media Query Helpers
  Size mediaSize(BuildContext context) => MediaQuery.of(context).size;
  double mediaHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  double mediaWidth(BuildContext context) => MediaQuery.of(context).size.width;
  MediaQueryData mediaQuery(BuildContext context) => MediaQuery.of(context);

  double screenSize(BuildContext context) => sqrt(
    (mediaWidth(context) * mediaWidth(context)) +
        (mediaHeight(context) * mediaHeight(context)),
  );
  // 6 inches * 160 logical pixels per inch (standard scale)
  bool isSmallScreen(BuildContext context) =>
      screenSize(context) < (6.0 * 160.0);
}
