// Flutter imports:
import 'package:flutter/material.dart';

class CFloatingActionButton extends StatelessWidget {
  const CFloatingActionButton({
    this.backgroundColor,
    this.child,
    this.onPressed,
    this.tooltip,
    this.size,
    this.elevation,
    super.key,
  });

  final Color? backgroundColor;
  final Widget? child;
  final double? elevation;
  final VoidCallback? onPressed;
  final double? size;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        shape: const CircleBorder(),
        elevation: elevation,
        tooltip: tooltip,
        child: child,
      ),
    );
  }
}
