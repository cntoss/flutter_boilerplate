import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter/material.dart';

class CToggleButton extends StatelessWidget {
  const CToggleButton({
    required this.text,
    this.selected = false,
    this.onSelected,
    this.height = 42,
    this.backgroundColor,
    this.shape,
    this.side,
    this.surfaceTintColor,
    this.selectedColor,
    this.icon,
    this.labelStyle,
    this.margin = EdgeInsets.zero,
    this.iconPadding = const EdgeInsets.only(right: 10),
    super.key,
  });

  const factory CToggleButton.icon({
    required String text,
    Widget? icon,
    bool selected,
    ValueChanged<bool>? onSelected,
    double? height,
    OutlinedBorder? shape,
    BorderSide? side,
    Color? backgroundColor,
    Color? surfaceTintColor,
    Color? selectedColor,
    EdgeInsetsGeometry margin,
    TextStyle? labelStyle,
    Key? key,
  }) = _CToggleButtonWithIcon;

  final Color? backgroundColor;
  final double? height;
  final Widget? icon;
  final EdgeInsetsGeometry iconPadding;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry margin;
  final ValueChanged<bool>? onSelected;
  final bool selected;
  final Color? selectedColor;
  final OutlinedBorder? shape;
  final BorderSide? side;
  final Color? surfaceTintColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: FilterChip(
        label: SizedBox(
          height: height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Padding(
                  padding: iconPadding,
                  child: icon,
                ),
              Text(text),
            ],
          ),
        ),
        selected: selected,
        padding: EdgeInsets.zero,
        shape: shape,
        iconTheme: IconThemeData(
          color: selected ? Colors.white : UIColors.textPrimary,
        ),
        side: side,
        backgroundColor: backgroundColor,
        elevation: 1,
        selectedColor: selectedColor,
        surfaceTintColor: surfaceTintColor,
        labelStyle: labelStyle,
        onSelected: onSelected,
      ),
    );
  }
}

class CToggleButtonBar extends StatelessWidget {
  const CToggleButtonBar({
    required this.items,
    this.margin,
    super.key,
  });

  final List<CToggleButton> items;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: UIColors.creammy,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: items
            .map(
              (item) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CToggleButton(
                    text: item.text,
                    backgroundColor: UIColors.creammy,
                    height: item.height,
                    shape: item.shape,
                    onSelected: item.onSelected,
                    selected: item.selected,
                    side: item.selected
                        ? Theme.of(context).chipTheme.side
                        : BorderSide.none,
                    surfaceTintColor: Colors.transparent,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _CToggleButtonWithIcon extends CToggleButton {
  const _CToggleButtonWithIcon({
    required super.text,
    super.icon,
    super.height = 48,
    super.onSelected,
    super.selected,
    super.shape,
    Color? backgroundColor,
    Color? selectedColor,
    BorderSide? side,
    TextStyle? labelStyle,
    super.margin,
    super.surfaceTintColor,
    super.key,
  }) : super(
          selectedColor: selectedColor ??
              (selected ? UIColors.blueLightAlt : UIColors.white),
          backgroundColor: backgroundColor ?? UIColors.white,
          side: side ??
              (selected
                  ? BorderSide.none
                  : const BorderSide(color: UIColors.inputBorderDisabled)),
          labelStyle: labelStyle ??
              (selected
                  ? const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: UIColors.textLight,
                    )
                  : const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: UIColors.textPrimary,
                    )),
        );
}
