import 'package:flutter/material.dart';

class CPopupMenuButton<T> extends StatelessWidget {
  const CPopupMenuButton({
    required this.items,
    super.key,
  });

  final List<CPopupMenuItem<T>> items;

  @override
  Widget build(BuildContext context) => PopupMenuButton<T>(
        icon: const Icon(Icons.more_vert),
        itemBuilder: (BuildContext context) => items,
      );
}

class CPopupMenuItem<T> extends PopupMenuEntry<T> {
  const CPopupMenuItem({
    required this.label,
    required this.onTap,
    super.key,
    this.divider = true,
  });

  final bool divider;
  final String label;
  final VoidCallback? onTap;

  @override
  State<CPopupMenuItem<T>> createState() => _CPopupMenuItemState();

  @override
  double get height => 0;

  @override
  bool represents(void value) => false;
}

class _CPopupMenuItemState<T> extends State<CPopupMenuItem<T>> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          PopupMenuItem<T>(
            // onTap: widget.onTap,
            child: GestureDetector(
              onTap: widget.onTap,
              child: Center(child: Text(widget.label)),
            ),
          ),
          if (widget.divider) const PopupMenuDivider(),
        ],
      );
}

class CPopupMenuItemWithValue<T> extends PopupMenuEntry<T> {
  const CPopupMenuItemWithValue({
    required this.label,
    required this.value,
    super.key,
    this.divider = true,
  });

  final bool divider;
  final String label;
  final T value;

  @override
  State<CPopupMenuItemWithValue<T>> createState() =>
      _CPopupMenuItemWithValueState();

  @override
  double get height => 0;

  @override
  bool represents(void value) => false;
}

class _CPopupMenuItemWithValueState<T>
    extends State<CPopupMenuItemWithValue<T>> {
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PopupMenuItem<T>(
            value: widget.value,
            child: Center(child: Text(widget.label)),
          ),
          if (widget.divider) const PopupMenuDivider(),
        ],
      );
}
