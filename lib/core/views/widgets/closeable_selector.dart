// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/constants/ui_constant.dart';

/// selector
class CSelectorCloseable extends StatelessWidget {
  /// selector
  const CSelectorCloseable({
    this.hintText,
    this.labelText,
    this.labelStyle,
    this.errorText,
    this.errorStyle,
    this.onTap,
    this.onClear,
    this.margin = EdgeInsets.zero,
    this.suffixIconColor,
    this.prefixIcon,
    this.prefixWidth = 48,
    this.validator,
    this.autovalidateMode,
    this.onChanged,
    this.allowClear = false,
    this.style,
    this.allowSecondaryBorderColor = true,
    super.key,
  });

  final String? Function(String?)? validator;
  final bool allowClear;
  final AutovalidateMode? autovalidateMode;
  final String? hintText;
  final TextStyle? labelStyle;
  final String? errorText;
  final TextStyle? errorStyle;

  ///This appears on border if value entered
  final String? labelText;

  final EdgeInsets margin;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final double prefixWidth;
  final TextStyle? style;
  final Color? suffixIconColor;
  final bool allowSecondaryBorderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: TextFormField(
        onTap: onTap,
        style: style,
        controller: TextEditingController(text: hintText),
        decoration: InputDecoration(
          enabledBorder: allowSecondaryBorderColor
              ? UIConstant().outlineBoderSecondary(context)
              : null,
          labelText: labelText,
          labelStyle: labelStyle,
          errorText: errorText,
          errorStyle: errorStyle,
          prefixIcon: prefixIcon != null
              ? Container(
                  margin: const EdgeInsets.only(right: 15),
                  width: prefixWidth,
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(color: UIColors.inputBorderPrimary),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    right: prefixWidth == 48 ? 12 : 5,
                    left: 14,
                  ),
                  child: prefixIcon,
                )
              : null,
          suffixIcon: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (allowClear)
                  GestureDetector(
                    onTap: onClear,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(
                        Icons.clear,
                        color: suffixIconColor,
                        size: 18,
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Icon(
                    Icons.expand_more_rounded,
                    color: suffixIconColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        autovalidateMode: autovalidateMode,
        readOnly: true,
        validator: validator,
      ),
    );
  }
}
