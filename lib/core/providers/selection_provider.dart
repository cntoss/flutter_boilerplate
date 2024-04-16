import 'package:flutter_riverpod/flutter_riverpod.dart';

//Might need when image picker or any file picker
final selectedPathProvider = AutoDisposeStateProvider<String?>((ref) {
  return null;
});

final selectedBoolProvider = AutoDisposeStateProvider<bool?>((ref) {
  return null;
});
