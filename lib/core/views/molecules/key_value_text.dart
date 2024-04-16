import 'package:flutter/material.dart';

class KeyValueWidget extends StatelessWidget {
  const KeyValueWidget({
    required this.tittle,
    required this.value,
    this.style,
    super.key,
  });

  final TextStyle? style;
  final String tittle;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: style,
        ),
        Text(
          value,
          style: style,
        ),
      ],
    );
  }
}
