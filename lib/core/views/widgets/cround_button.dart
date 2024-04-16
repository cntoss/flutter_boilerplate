import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter/material.dart';

class CRoundButton extends StatelessWidget {
  const CRoundButton({
    required this.icon,
    this.onPressed,
    this.size,
    this.backgroundColor = UIColors.greenPrimary,
    this.foregroundColor = UIColors.white,
    this.elevation,
    super.key,
  });

  final Color? backgroundColor;
  final double? elevation;
  final Color? foregroundColor;
  final Widget icon;
  final VoidCallback? onPressed;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.zero),
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
          foregroundColor: MaterialStatePropertyAll(foregroundColor),
          elevation: MaterialStatePropertyAll(elevation),
        ),
        child: icon,
      ),
    );
  }
}
