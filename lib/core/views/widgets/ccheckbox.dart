import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter/material.dart';

class CCheckbox extends StatelessWidget {
  const CCheckbox({
    required this.value,
    required this.onChanged,
    this.tristate = false,
    this.activeColor,
    this.fillColor,
    this.checkColor,
    this.focusColor,
    this.focusNode,
    this.autofocus = false,
    this.shape,
    this.side,
    this.isError = false,
    super.key,
  });

  const factory CCheckbox.label({
    required String label,
    required bool? value,
    required ValueChanged<bool?>? onChanged,
    TextStyle? labelStyle,
    bool tristate,
    Color? activeColor,
    MaterialStateProperty<Color?>? fillColor,
    Color? checkColor,
    Color? focusColor,
    FocusNode? focusNode,
    bool autofocus,
    OutlinedBorder? shape,
    BorderSide? side,
    bool isError,
    Key? key,
  }) = _CCheckboxWithLabel;

  final Color? activeColor;
  final bool autofocus;
  final Color? checkColor;
  final MaterialStateProperty<Color?>? fillColor;
  final Color? focusColor;
  final FocusNode? focusNode;
  final bool isError;
  final ValueChanged<bool?>? onChanged;
  final OutlinedBorder? shape;
  final BorderSide? side;
  final bool tristate;
  final bool? value;

  @override
  Widget build(BuildContext context) {
    return Checkbox.adaptive(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor,
      autofocus: autofocus,
      checkColor: checkColor,
      fillColor: fillColor,
      focusColor: focusColor,
      focusNode: focusNode,
      isError: isError,
      shape: shape,
      side: side,
      tristate: tristate,
    );
  }
}

class _CCheckboxWithLabel extends CCheckbox {
  const _CCheckboxWithLabel({
    required this.label,
    this.labelStyle = const TextStyle(fontWeight: FontWeight.w500),
    super.activeColor = UIColors.blueLight,
    super.autofocus,
    super.checkColor,
    super.fillColor,
    super.focusColor,
    super.focusNode,
    super.isError,
    super.onChanged,
    super.shape,
    super.side,
    super.tristate,
    super.value,
    super.key,
  });

  final String label;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CCheckbox(
          value: value,
          onChanged: onChanged,
          activeColor: activeColor,
          autofocus: autofocus,
          checkColor: checkColor,
          fillColor: fillColor,
          focusColor: focusColor,
          focusNode: focusNode,
          isError: isError,
          shape: shape,
          side: side,
          tristate: tristate,
          key: key,
        ),
        Text(
          label,
          style: labelStyle,
        ),
      ],
    );
  }
}
