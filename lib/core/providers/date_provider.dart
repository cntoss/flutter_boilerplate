// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedDateProvider =
    StateProvider.autoDispose<DateTime?>((ref) => null);
final selectedFromDateProvider =
    StateProvider.autoDispose<DateTime?>((ref) => null);

final selectedToDateProvider =
    StateProvider.autoDispose<DateTime?>((ref) => null);
