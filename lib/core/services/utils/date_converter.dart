import 'package:intl/intl.dart';

class DateConverter {
  String? dmyToServer(String? date) {
    if (date == null) return null;
    return DateFormat('MM/dd/yyyy')
        .format(DateFormat('dd-MM-yyyy').parse(date));
  }

  String? serverToDmy(String? date) {
    if ((date ?? '') == '') return null;
    return DateFormat('dd-MM-yyyy')
        .format(DateFormat('yyyy-MM-dd').parse(date!));
  }

  String? verificationToServer(String? date) {
    if ((date ?? '') == '') return null;
    return DateFormat('yyyy-MM-dd')
        .format(DateFormat('dd-MM-yyyy').parse(date!));
  }
}
