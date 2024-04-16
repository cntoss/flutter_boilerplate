class StringUtils {
  String numbersOnly(String number) => number.replaceAll(RegExp('[^0-9]'), '');

  String numbersWithDecimals(String? number) =>
      (number ?? '').replaceAll(RegExp('[^0-9.]'), '');
}
