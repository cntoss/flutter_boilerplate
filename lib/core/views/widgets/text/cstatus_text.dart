// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';

///status refer to text only with background color
class CStatusText extends StatelessWidget {
  const CStatusText({
    required this.status,
    super.key,
    this.style,
    this.margin,
    this.padding,
    this.color = const Color(0xffe0ecff),
    this.textColor = const Color(0xff445fbe),
    this.borderRadius = 3,
    this.onTap,
  });

  final void Function()? onTap;
  final double borderRadius;
  final Color color;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final String status;
  final TextStyle? style;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin,
        constraints: const BoxConstraints(
          maxWidth: 136, // Set your desired maximum width here
        ),
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
        child: Text(
          status,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          softWrap: true,
          style: style ??
              getSemiBoldStyle(
                color: textColor,
              ),
        ),
      ),
    );
  }
}
