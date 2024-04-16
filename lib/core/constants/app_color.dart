import 'dart:ui';

class AppColor extends Color {
  AppColor(super.value);

  factory AppColor.fromHex(String hex) {
    hex = hex.toUpperCase().replaceAll('#', '');
    if (hex.length == 6) {
      hex = 'FF$hex'; // Add alpha channel if it's not present
    }
    if (hex.length != 8) {
      throw ArgumentError('Invalid hex color: $hex');
    }
    return AppColor(int.parse(hex, radix: 16));
  }
}
