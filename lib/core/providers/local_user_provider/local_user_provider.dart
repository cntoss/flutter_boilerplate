// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_boilerplate/features/auth/models/user_collection.dart';
import 'package:flutter_boilerplate/features/auth/services/isar_auth_service.dart';

final localUserProvider =
    AutoDisposeFutureProvider<UserCollection?>((ref) async {
  return IsarAuthService().getUserCollection();
});
