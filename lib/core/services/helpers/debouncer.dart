// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

/// Helper to perform an action after the specified [duration].
/// It is useful in the cases like
/// performing a network call when an user stops typing,
/// log out the session when app is inactive for certain duration etc.
///
/// ```
/// Class SearchScreen extends StatelessWidget {
/// final _debouncer = Debouncer(const Duration(milliseconds: 500));
///
/// @override
/// Widget build(BuildContext context) {
///   return TextField(
///     onChanged: (string) {
///     _debouncer.run(() {
///        performSearch(string);
///     });
///   )
/// }
/// ```
class Debouncer {
  Debouncer(this.duration);

  final Duration duration;

  Timer? _timer;

  void run(VoidCallback onComplete) {
    if (_timer != null) _timer?.cancel();
    _timer = Timer(duration, onComplete);
  }
}
