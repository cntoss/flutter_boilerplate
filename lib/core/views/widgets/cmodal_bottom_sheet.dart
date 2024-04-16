import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter/material.dart';

Future<T?> cShowModalBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  Color? color = UIColors.backgroundPrimary,
  bool isScrollControlled = false,
  bool isDismissible = true,
  bool? showDragHandle,
  bool useSafeArea = true,
  ShapeBorder? shape,
  BorderRadiusGeometry? borderRadius,
  Clip? clipBehavior,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: isScrollControlled,
    backgroundColor: color,
    isDismissible: isDismissible,
    useSafeArea: useSafeArea,
    showDragHandle: showDragHandle,
    shape: shape,
    clipBehavior: clipBehavior,
    builder: (BuildContext context) => Material(
      borderRadius: borderRadius,
      color: color,
      child: child,
    ),
  );
}
