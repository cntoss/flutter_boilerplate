// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeStateProvider<int> bottomBarIndexProvider =
    StateProvider.autoDispose<int>((StateProviderRef<int> ref) => 0);
