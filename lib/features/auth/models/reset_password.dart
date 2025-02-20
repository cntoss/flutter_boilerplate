// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password.g.dart';
part 'reset_password.freezed.dart';

@freezed
class ResetPasswordRequest with _$ResetPasswordRequest {
  const factory ResetPasswordRequest({
    String? token,
    String? username,
    String? password,
    String? passwordConfirmation,
  }) = _ResetPasswordRequest;

  factory ResetPasswordRequest.fromJson(Map<String, Object?> json) =>
      _$ResetPasswordRequestFromJson(json);
}
