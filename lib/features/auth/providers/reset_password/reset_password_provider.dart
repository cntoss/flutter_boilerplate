// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_boilerplate/core/models/common_response_model.dart';
import 'package:flutter_boilerplate/features/auth/models/reset_password/reset_password_request.dart';
import 'package:flutter_boilerplate/features/auth/providers/auth_service_provider.dart';

part 'reset_password_provider.g.dart';

@riverpod
Future<CommonResponseModel> resetPassword(
  ResetPasswordRef ref,
  ResetPasswordRequest passwordRequest,
) {
  return ref.watch(authServiceProvider).resetPassword(passwordRequest);
}
