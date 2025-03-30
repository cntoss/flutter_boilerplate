// Flutter imports:
import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/core/constants/size_constant.dart';
// Project imports:
import 'package:flutter_boilerplate/core/views/atom/gap.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';
import 'package:flutter_boilerplate/core/views/widgets/celevated_button.dart';

class CError extends StatelessWidget {
  const CError({
    this.mainAxisSize = MainAxisSize.max,
    this.title = 'Error',
    this.buttonText = 'Retry',
    this.message,
    this.onPressed,
    super.key,
  });

  final String buttonText;
  final MainAxisSize mainAxisSize;
  final String? message;
  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: mainAxisSize,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Assets.images,
        // const VGap(10),
        Text(
          title,
          style: getRegularStyle(
            fontSize: 28,
            fontWeight: FontWeight.w300,
            color: const Color(0xff343434),
          ),
          textAlign: TextAlign.center,
        ),
        if (message != null) ...[
          const VGap(10),
          Text(
            message!,
            textAlign: TextAlign.center,
            style: getMediumStyle(color: const Color(0xff343434), fontSize: 16),
          ),
        ],
        if (onPressed != null) ...[
          const VGap(10),
          CElevatedButton.modal(
            text: buttonText,
            onPressed: onPressed,
            width: AppSizes().mediaWidth(context) / 2,
          ),
        ],
      ],
    );
  }
}
