import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter/material.dart';

/// selector
class CSelector extends StatelessWidget {
  /// selector
  const CSelector({
    required this.hintText,
    this.hintStyle,
    this.labelText,
    this.onTap,
    this.onSuffixTap,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.margin = EdgeInsets.zero,
    this.showSuffix = false,
    this.suffixIconColor,
    this.prefixWidth = 48,
    this.validator,
    this.autovalidateMode,
    this.onChanged,
    this.textInputType,
    super.key,
  });

  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final TextStyle? hintStyle;
  final String hintText;

  ///This appears on border if value entered
  final String? labelText;

  final EdgeInsets margin;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onSuffixTap;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final double prefixWidth;
  final bool showSuffix;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    final suffixIcon = this.suffixIcon;

    return Padding(
      padding: margin,
      child: TextFormField(
        controller: controller,
        onTap: controller == null ? onTap : null,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          //enabled: false,
          hintStyle: hintStyle ??
              const TextStyle(
                color: UIColors.textSecondary,
                fontSize: 14,
              ),
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
          suffixIcon: showSuffix
              ? null
              : suffixIcon != null
                  ? IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(
                              Icons.expand_more_rounded,
                              color: suffixIconColor,
                            ),
                          ),
                          Container(
                            width: 48,
                            padding: const EdgeInsets.all(13),
                            decoration: const BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  color: UIColors.inputBorderPrimary,
                                ),
                              ),
                            ),
                            child: GestureDetector(
                              onTap: onSuffixTap,
                              child: suffixIcon,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Icon(
                      Icons.expand_more_rounded,
                      color: suffixIconColor,
                    ),
        ),
        autovalidateMode: autovalidateMode,
        onChanged: onChanged,
        readOnly: controller == null,
        validator: validator,
        keyboardType: textInputType,
        //  ??
        //     (validationMessage != null
        //         ? (text) {
        //             if (text == '') {
        //               return validationMessage;
        //             }
        //             return null;
        //           }
        //         : null)
        // canRequestFocus: !(controller == null)
      ),
    );
  }
}
