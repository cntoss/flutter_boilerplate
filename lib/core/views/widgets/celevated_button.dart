// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/constants/ui_constant.dart';
import 'package:flutter_boilerplate/core/providers/loader_provider.dart';

enum ModalButtonType { small, medium, large }

class CElevatedButton extends ConsumerWidget {
  const CElevatedButton({
    required this.onPressed,
    this.height,
    this.width,
    this.margin = EdgeInsets.zero,
    this.child,
    this.style,
    this.text = '',
    this.textStyle,
    this.loaderColor,
    super.key,
  });

  const factory CElevatedButton.modal({
    Widget? child,
    double? height,
    EdgeInsets margin,
    VoidCallback? onPressed,
    ButtonStyle? style,
    String text,
    TextStyle? textStyle,
    double? width,
    ModalButtonType type,
    Key? key,
  }) = _CModalButton;

  final Widget? child;
  final double? height;
  final EdgeInsets margin;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final String text;
  final TextStyle? textStyle;
  final double? width;
  final Color? loaderColor;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loader = ref.watch(buttonStateProvider);
    final isLoading = loader.contains(key);
    return Container(
      margin: margin,
      height: height,
      width: width,
      child: ElevatedButton(
        style: style,
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  color: loaderColor ?? UIColors.white,
                  strokeWidth: 3,
                ),
              )
            : child ??
                Text(
                  text,
                  style: textStyle,
                ),
      ),
    );
  }
}

class _CModalButton extends CElevatedButton {
  const _CModalButton({
    super.onPressed,
    double? height,
    super.width,
    super.margin = EdgeInsets.zero,
    super.child,
    ButtonStyle? style,
    super.text = '',
    super.textStyle,
    ModalButtonType type = ModalButtonType.medium,
    super.key,
  }) : super(
          height: height ??
              (type == ModalButtonType.medium
                  ? 40
                  : type == ModalButtonType.small
                      ? 35
                      : 50), // For large button
          style: style ??
              (type == ModalButtonType.large
                  ? const ButtonStyle(
                      elevation: WidgetStatePropertyAll(0),
                    )
                  : type == ModalButtonType.medium
                      ? UIConstant.modalButtonStyle
                      : const ButtonStyle(
                          elevation: WidgetStatePropertyAll(0),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        )),
        );
}
