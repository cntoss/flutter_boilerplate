import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/constants/ui_constant.dart';
import 'package:flutter_boilerplate/core/services/helpers/ui_helper.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';
import 'package:flutter_boilerplate/core/views/widgets/cmodal_bottom_sheet.dart';
import 'package:flutter/material.dart';

Future<T?> mediumBottomSheet<T>({
  required BuildContext context,
  required List<Widget> children,
  required String titile,
  double? dividerThickness,
  Color? color,
  Color? titleColor,
  EdgeInsetsGeometry titlePadding = const EdgeInsets.fromLTRB(30, 15, 0, 10),
}) {
  return cShowModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: UIConstant.bottomSheetBorder,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    color: color,
    child: SizedBox(
      height: mediaHeight(context) * 0.715,
      child: Column(
        children: [
          Padding(
            padding: titlePadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  titile,
                  style: getBoldStyle(
                    fontSize: 18,
                    color: titleColor ?? UIColors.textPrimary,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CloseButton(
                      color: titleColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          ...children,
        ],
      ),
    ),
  );
}