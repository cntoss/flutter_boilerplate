import 'package:flutter_boilerplate/core/providers/date_provider.dart';
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/core/views/widgets/ctext_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CDateFormField extends ConsumerWidget {
  const CDateFormField({
    super.key,
    this.validationMessage,
    this.startDateData,
    this.allowFuture = true,
    this.allowPast = true,
    this.onChanged,
    this.style,
    this.decoration,
    this.labelText,
    this.margin = EdgeInsets.zero,
    this.provider,

    ///Enable allow date selection
    this.enable = true,
  });

  final bool allowFuture;
  final bool allowPast;
  final InputDecoration? decoration;
  final bool enable;
  final String? labelText;
  final EdgeInsetsGeometry margin;
  final ValueChanged<DateTime>? onChanged;
  final DateTime? startDateData;
  final TextStyle? style;
  final String? validationMessage;
  final AutoDisposeStateProvider<DateTime?>? provider;
/*   InputDecoration _decoration(
      AsyncSnapshot<DateTime?> snapshot, BuildContext context) {
    return InputDecoration(
      enabled: false,
      prefixIcon: const Icon(Icons.date_range),
      border: _outlineBorder(context),
      //label text create form top name on border
      hintText:
          snapshot.hasData ? "${snapshot.data!.ymdString()} " : "Select Date",
      errorStyle: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: Colors.redAccent),
      hintStyle: Theme.of(context).textTheme.bodyMedium,
    );
  }

  OutlineInputBorder _outlineBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(formBorderRadius),
      borderSide: BorderSide(color: Theme.of(context).colorScheme.onPrimary),
    );
  } */

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(provider ?? selectedDateProvider);
    return InkWell(
      onTap: () async {
        if (onChanged != null || enable) {
          final DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: startDateData ?? selectedDate,
            firstDate: allowPast ? DateTime(1900) : DateTime.now(),
            lastDate: allowFuture
                ? DateTime.now().add(const Duration(days: 366))
                : DateTime.now(),
          );
          if (pickedDate != null) {
            ref
                .read(provider?.notifier ?? selectedDateProvider.notifier)
                .state = pickedDate;
            // printLog(selectedDate?.ymdString());
            if (onChanged != null) {
              onChanged?.call(pickedDate);
            }
          }
        }
      },
      child: CTextField(
        controller: TextEditingController(text: selectedDate?.dmyFormString()),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        enabled: false,
        style: style,
        decoration: decoration,
        labelText: labelText,
        /*    validationMessage: validationMessage == null
          ? null
            : selectedDate == null
                ? validationMessage
                : null, */
        // validator: validationMessage == null
        //     ? null
        //     : (val) {
        //         if (selectedDate == null) {
        //           return validationMessage;
        //         } else {
        //           return null;
        //         }
        //       },
        prefix: const Icon(Icons.calendar_month_outlined),
        margin: margin,
      ),
    );
  }
}
