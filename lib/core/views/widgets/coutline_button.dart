// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/providers/loader_provider.dart';

class COutlineButton extends StatelessWidget {
  const COutlineButton({
    required this.onPressed,
    this.height,
    this.width,
    this.margin = EdgeInsets.zero,
    this.child,
    this.style,
    this.text = '',
    this.textStyle,
    super.key,
  });

  final Widget? child;
  final double? height;
  final EdgeInsets margin;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final String text;
  final TextStyle? textStyle;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: style,
        child: child ??
            Text(
              text,
              style: textStyle,
            ),
      ),
    );
  }
}

class COutlineButtonWithloading extends ConsumerWidget {
  const COutlineButtonWithloading({
    required this.onPressed,
    this.height,
    this.width,
    this.margin = EdgeInsets.zero,
    this.child,
    this.style,
    this.text = '',
    this.textStyle,
    super.key,
  });

  final Widget? child;
  final double? height;
  final EdgeInsets margin;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final String text;
  final TextStyle? textStyle;
  final double? width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loader = ref.watch(buttonStateProvider);
    final isLoading = loader.contains(key);
    return Container(
      margin: margin,
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: style,
        child: isLoading
            ? const SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  color: UIColors.white,
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
