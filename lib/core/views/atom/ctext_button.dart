// Flutter imports:
import 'package:flutter/material.dart';

class CTextButton extends TextButton {
  CTextButton({
    super.key,
    required super.onPressed,
    String text = '',
    Widget? child,
    super.style,
    TextStyle? textStyle,
  }) : super(child: child ?? Text(text, style: textStyle));
}
