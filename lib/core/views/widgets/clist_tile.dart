// Flutter imports:
import 'package:flutter/material.dart';

class CListTile extends StatelessWidget {
  const CListTile({
    this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onTap,
    this.tileColor,
    this.margin = EdgeInsets.zero,
    this.contentPadding,
    super.key,
  });

  final EdgeInsets? contentPadding;
  final Widget? leading;
  final EdgeInsetsGeometry margin;
  final GestureTapCallback? onTap;
  final Widget? subtitle;
  final Color? tileColor;
  final Widget? title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Card(
        elevation: 0.5,
        margin: const EdgeInsets.symmetric(vertical: 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        child: ListTile(
          title: title,
          subtitle: subtitle,
          onTap: onTap,
          leading: leading,
          tileColor: tileColor,
          contentPadding: contentPadding,
          trailing: trailing,
        ),
      ),
    );
  }
}
