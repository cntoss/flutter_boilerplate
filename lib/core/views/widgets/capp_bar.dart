import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar({
    this.actions,
    this.automaticallyImplyLeading = true,
    this.backgroundColor = UIColors.appBarPrimary,
    this.centerTitle,
    this.leading,
    this.title,
    this.titleText = '',
    this.statusBarBrightness = Brightness.dark,
    this.foregroundColor = UIColors.white,
    this.titleTextStyle,
    this.bottom,
    this.leadingWidth = 30, //default 56
    this.titleSpacing,
    super.key,
  });

  const factory CAppBar.secondary({
    List<Widget>? actions,
    bool automaticallyImplyLeading,
    Color? backgroundColor,
    bool? centerTitle,
    Color? foregroundColor,
    Widget? leading,
    Brightness? statusBarBrightness,
    Widget? title,
    String titleText,
    TextStyle? titleTextStyle,
    PreferredSizeWidget? bottom,
    Key? key,
  }) = _CAppBarSecondary;

  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final PreferredSizeWidget? bottom;
  final bool? centerTitle;
  final Color? foregroundColor;
  final Widget? leading;
  final double? leadingWidth;
  final Brightness? statusBarBrightness;
  final Widget? title;
  final double? titleSpacing;
  final String titleText;
  final TextStyle? titleTextStyle;

  @override
  Size get preferredSize => const Size(0, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title ?? Text(titleText),
      actions: actions,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        statusBarBrightness: statusBarBrightness,
        statusBarIconBrightness: statusBarBrightness,
      ),
      centerTitle: centerTitle,
      titleTextStyle: titleTextStyle,
      leadingWidth: leadingWidth,
      titleSpacing: titleSpacing,
      bottom: bottom,
    );
  }
}

class _CAppBarSecondary extends CAppBar {
  const _CAppBarSecondary({
    super.actions,
    super.automaticallyImplyLeading,
    super.backgroundColor = UIColors.appBarSecondary,
    super.centerTitle,
    super.foregroundColor = UIColors.white,
    super.leading,
    super.statusBarBrightness = Brightness.light,
    super.title,
    super.titleText,
    super.titleTextStyle = const TextStyle(
      color: UIColors.white,
      fontWeight: FontWeight.w600,
      fontSize: 17,
    ),
    super.bottom,
    super.key,
  });
}
