// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';

class CDropdown<T> extends StatelessWidget {
  const CDropdown({
    required this.itemList,
    this.selectedItem,
    this.onChanged,
    this.labelText,
    this.margin,
    this.isDataTypeEnum = false,
    this.allowCapitalization = true,
    this.style,
    this.iconColor,
    this.backgroundColor,
    super.key,
  });

  final void Function(T? value)? onChanged;
  final Color? backgroundColor;
  final Color? iconColor;
  final bool isDataTypeEnum;
  final bool allowCapitalization;
  final List<T> itemList;
  final String? labelText;
  final EdgeInsetsGeometry? margin;
  final T? selectedItem;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(color: const Color(0xFFE1E1E1)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          hint: labelText != null
              ? Text(
                  labelText!,
                  style: style,
                )
              : null,
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
        ),
      ),
    );
  }
}
