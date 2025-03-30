// Flutter imports:
import 'package:flutter/material.dart';

class CircleBoxAtom extends Container {
  CircleBoxAtom({
    super.key,
    required Color color,
    double? size,
    bool filled = true,
    super.margin,
    super.padding,
    super.child,
    super.alignment,
  }) : super(
         height: size,
         width: size,
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           color: filled ? color : Colors.transparent,
           border: Border.all(color: color),
         ),
       );
}
