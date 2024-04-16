import 'package:flutter_boilerplate/core/views/widgets/capp_bar.dart';
import 'package:flutter_boilerplate/core/views/widgets/celevated_button.dart';
import 'package:flutter_boilerplate/core/views/widgets/cmodal_bottom_sheet.dart';
import 'package:flutter/material.dart';

Future<T?> largeBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  required String titile,
  required String actionText,
  required void Function()? onAction,
  double? dividerThickness,
  EdgeInsetsGeometry titlePadding = const EdgeInsets.fromLTRB(30, 15, 0, 10),
}) {
  return cShowModalBottomSheet(
    context: context,
    isScrollControlled: true,
    child: Stack(
      children: [
        ListView(
          children: [
            Padding(
              padding: titlePadding,
              child: CAppBar(
                titleText: titile,
                automaticallyImplyLeading: false,
                actions: const [CloseButton()],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            child,
          ],
        ),
        Positioned(
          bottom: 24,
          left: 24,
          right: 24,
          child: CElevatedButton(
            margin: const EdgeInsets.only(top: 20),
            text: actionText,
            onPressed: onAction,
          ),
        ),
      ],
    ),
  );
}
