import 'package:flutter/material.dart';

class CircleBox extends StatelessWidget {
  const CircleBox({
    required this.color,
    this.size,
    this.filled = true,
    this.margin,
    this.padding,
    this.child,
    this.alignment,
    super.key,
  });

  final AlignmentGeometry? alignment;
  final Widget? child;
  final Color color;
  final bool filled;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: filled ? color : Colors.transparent,
        border: Border.all(color: color),
      ),
      child: child,
    );
  }
}
