import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';
import 'package:flutter/material.dart';

class CDropdownForm<T> extends StatelessWidget {
  const CDropdownForm({
    required this.itemList,
    this.selectedItem,
    this.onChanged,
    this.labelText,
    this.margin,
    this.isDataTypeEnum = false,
    //IF false then no case conversion
    this.allowCapitalization = true,
    this.style,
    this.errorStyle,
    this.iconColor,
    this.backgroundColor,
    this.validator,
    this.validationMessage,
    this.autovalidateMode,
    this.allowContentPadding = true,
    this.borderRadius = 8,
    this.borderColor = const Color(0xFFE1E1E1),
    this.showEnableBorder = false,
    super.key,
  });

  final void Function(T? value)? onChanged;
  final String? Function(T?)? validator;
  final bool allowContentPadding;
  final AutovalidateMode? autovalidateMode;
  final Color? backgroundColor;
  final TextStyle? errorStyle;
  final Color? iconColor;
  final bool isDataTypeEnum;
  final List<T> itemList;
  final String? labelText;
  final EdgeInsetsGeometry? margin;
  final T? selectedItem;
  final TextStyle? style;
  final bool allowCapitalization;

  final String? validationMessage;
  final double borderRadius;
  final Color borderColor;
  final bool showEnableBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<T>(
          decoration: InputDecoration(
            contentPadding:
                allowContentPadding ? const EdgeInsets.all(12) : null,
            labelText: labelText,
            labelStyle: style,
            errorStyle: errorStyle,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: borderColor),
            ),
            enabledBorder: showEnableBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(color: borderColor),
                  )
                : null,
          ),
          style: style ?? getRegularStyle(color: UIColors.textPrimary),
          iconEnabledColor: iconColor ?? UIColors.inputBorderDisabled,
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          isExpanded: true,
          value: selectedItem,
          onChanged: onChanged,
          dropdownColor: backgroundColor,
          items: itemList.map((T item) {
            return DropdownMenuItem(
              value: item,
              child: Text(
                !allowCapitalization
                    ? item.toString()
                    : isDataTypeEnum
                        ? item.toString().split('.').last.toWordCase()
                        : item.toString().capitalizeFirstLetter(),
                style: style,
              ),
            );
          }).toList(),
          validator: validator ??
              (validationMessage != null
                  ? (text) {
                      if ((text ?? '') == '') {
                        return validationMessage;
                      }
                      return null;
                    }
                  : null),
          autovalidateMode: autovalidateMode,
        ),
      ),
    );
  }
}
