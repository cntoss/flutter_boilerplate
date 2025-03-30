// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider<ThemeMode> themeProvider = StateProvider<ThemeMode>(
  (ref) => ThemeMode.light,
);
