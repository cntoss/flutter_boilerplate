// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';

class CRadio extends StatelessWidget {
  const CRadio({
    this.margin = EdgeInsets.zero,
    this.size = 25,
    this.color = UIColors.blueLight,
    this.isSelected = false,
    this.onPressed,
    super.key,
  });

  const factory CRadio.label({
    required String label,
    TextStyle? labelStyle,
    Color color,
    bool? isSelected,
    EdgeInsetsGeometry margin,
    VoidCallback? onPressed,
    double size,
    Key? key,
  }) = _CRadioWithLabel;

  final Color color;
  final bool? isSelected;
  final EdgeInsetsGeometry margin;
  final VoidCallback? onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: IconButton(
        onPressed: onPressed,
        isSelected: isSelected,
        icon: _RadioContainer(
          color: color,
          size: size,
          isSelected: false,
        ),
        selectedIcon: _RadioContainer(
          color: color,
          size: size,
          isSelected: true,
        ),
        style: const ButtonStyle(
          shape: WidgetStatePropertyAll(CircleBorder()),
        ),
      ),
    );
  }
}

class _RadioContainer extends StatelessWidget {
  const _RadioContainer({
    required this.color,
    required this.size,
    required this.isSelected,
  });

  final Color color;
  final bool isSelected;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
          width: isSelected ? size / 3.5 : 1,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}

class _CRadioWithLabel extends CRadio {
  const _CRadioWithLabel({
    required this.label,
    this.labelStyle = const TextStyle(fontWeight: FontWeight.w500),
    super.color,
    super.isSelected,
    super.margin,
    super.onPressed,
    super.size,
    super.key,
  });

  final String label;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CRadio(
          color: color,
          isSelected: isSelected,
          margin: margin,
          onPressed: onPressed,
          size: size,
          key: key,
        ),
        Text(
          label,
          style: labelStyle,
        ),
      ],
    );
  }
}
