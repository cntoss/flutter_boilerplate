// Flutter imports:
import 'package:flutter/material.dart';

class Gap extends SizedBox {
  const Gap(double height, double width, {super.key})
    : super(height: height, width: width);
}

/// A vertical gap widget that provides spacing between widgets.
///
/// Example usage:
/// ```dart
/// VGap(10) // Creates a vertical gap of 10 logical pixels.
/// ```
///
/// This widget is useful for adding vertical spacing in layouts.
class VGap extends Gap {
  const VGap(double height, {super.key}) : super(height, 0);
}

/// A horizontal gap widget that provides spacing between widgets.
///
/// Example usage:
/// ```dart
/// HGap(10) // Creates a horizontal gap of 10 logical pixels.
/// ```
///
/// This widget is useful for adding horizontal spacing in layouts.
class HGap extends Gap {
  const HGap(double width, {super.key}) : super(0, width);
}
