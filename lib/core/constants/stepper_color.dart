import 'package:flutter/material.dart';

enum StepperColor {
  active._(Color(0xFF434D91)),
  complete._(Color(0xFF31C64F)),
  inactive._(Color(0xFFD9D9D9));

  const StepperColor._(this.value);

  final Color value;
}
