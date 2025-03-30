// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/constants/ui_constant.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';
import 'package:flutter_boilerplate/core/views/widgets/celevated_button.dart';
import 'package:flutter_boilerplate/core/views/widgets/coutline_button.dart';
import 'package:flutter_boilerplate/core/views/atom/gap.dart';
import 'package:flutter_boilerplate/routing/router.dart';

/// information with accept/reject options
Future<T?> showInfoDialog<T>(
  BuildContext context, {
  String? message,
  Widget? child,
  Widget? title,
  Widget? content,
  String infoText = 'Info',
  bool showInfoText = true,
  List<Widget>? actions,
  MainAxisAlignment actionsAlignment = MainAxisAlignment.center,
  String cancelText = 'Cancel',
  void Function()? onConfirm,
  void Function()? onCancel,
  double? cancelWidth,
  String confirmText = 'Confirm',
  bool showCancelButton = true,
  bool showConfirmButton = true,
  bool isError = false,
  EdgeInsetsGeometry? actionsPadding,
  EdgeInsetsGeometry? titlePadding = const EdgeInsets.only(top: 10),
  Color? confirmButtonColor,
  bool allowTitlePadding = true,
  bool barrierDismissible = true,
  double? confirmWidth,
  double? width,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (context) {
      return AlertDialog(
        actionsAlignment: actionsAlignment,
        backgroundColor: UIColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        titlePadding: allowTitlePadding ? titlePadding : null,
        // contentPadding: const EdgeInsets.symmetric(vertical: 4),
        title:
            title ??
            Icon(
              Icons.info,
              color: isError ? Colors.red : UIColors.blueLight,
              size: 42,
            ),
        contentPadding: const EdgeInsets.fromLTRB(24, 8, 24, 10),
        actionsPadding: actionsPadding,
        content: SizedBox(
          width: width,
          child:
              content ??
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (showInfoText) Text(infoText, style: getBoldStyle()),
                  if (message != null) ...[
                    const VGap(8),
                    Text(
                      message,
                      style: getMediumStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                  if (child != null) child,
                ],
              ),
        ),
        actions:
            actions ??
            [
              if (showCancelButton)
                SizedBox(
                  height: 35,
                  child: Row(
                    mainAxisAlignment:
                        (showCancelButton && showConfirmButton)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.center,
                    children: [
                      if (cancelWidth != null)
                        SizedBox(
                          width: cancelWidth,
                          child: _CancelButton(
                            cancelText: cancelText,
                            onCancel: onCancel ?? () => context.pop(),
                          ),
                        )
                      else
                        Flexible(
                          child: _CancelButton(
                            cancelText: cancelText,
                            onCancel: onCancel ?? () => context.pop(),
                          ),
                        ),
                      if (showConfirmButton)
                        Flexible(
                          child: CElevatedButton(
                            width: confirmWidth,
                            style: ButtonStyle(
                              backgroundColor:
                                  confirmButtonColor == null
                                      ? null
                                      : WidgetStatePropertyAll(
                                        confirmButtonColor,
                                      ),
                              shape: const WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    UIConstant.dialogCircular,
                                  ),
                                ),
                              ),
                            ),
                            text: confirmText,
                            textStyle: getBoldStyle(color: Colors.white),
                            onPressed: onConfirm ?? () => context.pop(),
                          ),
                        ),
                    ],
                  ),
                ),
            ],
      );
    },
  );
}

class _CancelButton extends StatelessWidget {
  const _CancelButton({required this.cancelText, required this.onCancel});
  final String cancelText;
  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return COutlineButton(
      margin: const EdgeInsets.only(right: 4),
      style: UIConstant.outlineStyle.copyWith(
        padding: const WidgetStatePropertyAll(
          EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 8),
        ),
      ),
      onPressed: onCancel,
      text: cancelText,
      textStyle: getBoldStyle(),
    );
  }
}

Future<void> showConfirmDialog({
  required BuildContext context,
  required WidgetRef ref,
  required void Function() onConfirm,
  required String infoText,
  required String message,
  void Function()? onCancel,
  Widget? title,
  String? cancelText,
  String? confirmText,
  double? width,
  bool barrierDismissible = true,
}) {
  return showInfoDialog<void>(
    barrierDismissible: barrierDismissible,
    onCancel: onCancel,
    context,
    cancelText: cancelText ?? 'No',
    confirmText: confirmText ?? 'Yes',
    onConfirm: onConfirm,
    confirmButtonColor: UIColors.blueDark,
    infoText: infoText,
    message: message,
    cancelWidth: 100,
    title: title,
    confirmWidth: 100,
    width: width,
  );
}
