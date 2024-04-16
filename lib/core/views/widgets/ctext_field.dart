import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CTextField extends StatelessWidget {
  const CTextField({
    this.labelText,
    this.labelStyle,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.style,
    this.autofocus = false,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.enabled,
    this.autovalidateMode,
    this.margin = EdgeInsets.zero,
    this.decoration,
    this.cursorColor,
    this.validationMessage,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
    this.showCounterText = false,
    this.unFocusOnTapOutside = true,
    this.prefix,
    this.suffixWidget,
    super.key,
  });

  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool autofocus;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final Color? cursorColor;
  final InputDecoration? decoration;
  final bool? enabled;
  final FocusNode? focusNode;
  final String? initialValue;

  ///For  formating phone numner
  final List<TextInputFormatter>? inputFormatters;

  final TextInputType? keyboardType;
  final TextStyle? labelStyle;
  final String? labelText;
  final EdgeInsetsGeometry margin;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final GestureTapCallback? onTap;
  final bool readOnly;
  final bool showCounterText;
  final TextStyle? style;

  ///Text Alignment
  final TextAlign textAlign;

  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final String? validationMessage;
  final bool unFocusOnTapOutside;
  final Widget? prefix;
  final Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: TextFormField(
        controller: controller,
        initialValue: initialValue,
        textAlign: textAlign,
        focusNode: focusNode,
        keyboardType: keyboardType,
        decoration: decoration?.copyWith(labelText: labelText) ??
            InputDecoration(
              labelText: labelText,
              labelStyle: labelStyle,
              // prefix: prefixWidget,
              suffix: suffixWidget,
              prefixIcon: prefix,
              alignLabelWithHint: true,
              counter: !showCounterText ? const SizedBox.shrink() : null,
            ),
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        style: style,
        inputFormatters: inputFormatters,
        cursorColor: cursorColor,
        autofocus: autofocus,
        readOnly: readOnly,
        obscureText: obscureText,
        maxLines: maxLines,
        minLines: minLines,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onTapOutside: unFocusOnTapOutside
            ? (event) => FocusScope.of(context).unfocus()
            : null,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        validator: validator ??
            (validationMessage != null
                ? (text) {
                    if ((text ?? '').trim().isEmpty) {
                      return validationMessage;
                    }
                    return null;
                  }
                : null),
        enabled: enabled,
        autovalidateMode: autovalidateMode,
      ),
    );
  }
}
