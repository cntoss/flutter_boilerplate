import 'package:flutter/material.dart';

class CTextButton extends StatelessWidget {
  const CTextButton({
    required this.onPressed,
    this.text = '',
    this.child,
    this.style,
    this.textStyle,
    super.key,
  });

  final Widget? child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: style,
      child: child ?? Text(text, style: textStyle),
    );
  }
}
