import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';
import 'package:flutter/material.dart';

class CDropdownSelector<T> extends StatelessWidget {
  const CDropdownSelector({
    required this.itemList,
    this.selectedItem,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.margin,
    this.isDataTypeEnum = false,
    this.style,
    this.backgroundColor,
    this.hintStyle,
    this.onTap,
    this.onSuffixTap,
    this.prefixIcon,
    this.suffixIcon,
    this.showSuffix = false,
    this.suffixIconColor,
    this.prefixWidth = 48,
    super.key,
  });

  final void Function(T?)? onChanged;
  final Color? backgroundColor;
  final TextStyle? hintStyle;

  ///This appears on border if value entered
  final String? hintText;

  final bool isDataTypeEnum;
  final List<T> itemList;
  final String? labelText;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onSuffixTap;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final double prefixWidth;
  final T? selectedItem;
  final bool showSuffix;
  final TextStyle? style;
  final Widget? suffixIcon;
  final Color? suffixIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<T>(
          padding: EdgeInsets.zero,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            alignLabelWithHint: true,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
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
          style: style ?? getRegularStyle(color: UIColors.textPrimary),
          icon: const SizedBox.shrink(),
          isExpanded: true,
          value: selectedItem,
          onChanged: onChanged,
          dropdownColor: backgroundColor,
          items: itemList.map((T item) {
            return DropdownMenuItem(
              value: item,
              child: Text(
                isDataTypeEnum
                    ? item.toString().split('.').last.capitalizeFirstLetter()
                    : item.toString().capitalizeFirstLetter(),
                softWrap: true,
                style: style,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
