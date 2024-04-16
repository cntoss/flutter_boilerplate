import 'package:flutter/material.dart';

class CExpansionTile extends StatelessWidget {
  const CExpansionTile({
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.tileColor,
    this.margin = EdgeInsets.zero,
    this.backgroundColor,
    this.children = const <Widget>[],
    this.childrenPadding,
    this.collapsedBackgroundColor,
    this.collapsedIconColor,
    this.collapsedShape,
    this.collapsedTextColor,
    this.controller,
    this.expandedAlignment,
    this.expandedCrossAxisAlignment,
    this.iconColor,
    this.initiallyExpanded = false,
    this.maintainState = false,
    this.onExpansionChanged,
    this.shape,
    this.textColor,
    this.tilePadding,
    super.key,
    this.ignoreExpansion = false,
  });

  final Color? backgroundColor;
  final List<Widget> children;
  final EdgeInsetsGeometry? childrenPadding;
  final Color? collapsedBackgroundColor;
  final Color? collapsedIconColor;
  final ShapeBorder? collapsedShape;
  final Color? collapsedTextColor;
  final ExpansionTileController? controller;
  final Alignment? expandedAlignment;
  final CrossAxisAlignment? expandedCrossAxisAlignment;
  final Color? iconColor;
  final bool ignoreExpansion;
  final bool initiallyExpanded;
  final Widget? leading;
  final bool maintainState;
  final EdgeInsetsGeometry margin;
  final ValueChanged<bool>? onExpansionChanged;
  final ShapeBorder? shape;
  final Widget? subtitle;
  final Color? textColor;
  final Color? tileColor;
  final EdgeInsetsGeometry? tilePadding;
  final Widget title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Card(
        elevation: 0.5,
        color: tileColor,
        margin: const EdgeInsets.symmetric(vertical: 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        child: IgnorePointer(
          ignoring: ignoreExpansion,
          child: ExpansionTile(
            title: title,
            subtitle: subtitle,
            leading: leading,
            trailing: trailing,
            tilePadding: tilePadding ?? const EdgeInsets.fromLTRB(10, 0, 4, 0),
            backgroundColor: backgroundColor,
            childrenPadding: childrenPadding,
            collapsedBackgroundColor: collapsedBackgroundColor,
            collapsedIconColor: collapsedIconColor,
            collapsedShape: collapsedShape,
            collapsedTextColor: collapsedTextColor,
            controller: controller,
            expandedAlignment: expandedAlignment,
            expandedCrossAxisAlignment: expandedCrossAxisAlignment,
            iconColor: iconColor,
            initiallyExpanded: initiallyExpanded,
            maintainState: maintainState,
            onExpansionChanged: onExpansionChanged,
            shape: shape,
            textColor: textColor,
            children: children,
          ),
        ),
      ),
    );
  }
}
