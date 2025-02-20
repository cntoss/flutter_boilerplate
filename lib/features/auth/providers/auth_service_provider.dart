// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_boilerplate/core/services/helpers/dio_extension.dart';
import 'package:flutter_boilerplate/features/auth/services/auth_service.dart';

part 'auth_service_provider.g.dart';

@riverpod
AuthService authService(AuthServiceRef ref) => AuthService(ref.client);
