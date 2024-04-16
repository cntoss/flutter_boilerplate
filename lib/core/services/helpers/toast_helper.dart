import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<bool?> showToast(
  String message, {
  Toast toastLength = Toast.LENGTH_SHORT,
  ToastGravity gravity = ToastGravity.BOTTOM,
  Color backgroundColor = UIColors.black,
  Color textColor = UIColors.white,
  double fontSize = 16,
}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: toastLength,
    gravity: gravity,
    backgroundColor: backgroundColor,
    textColor: textColor,
    fontSize: fontSize,
  );
}
