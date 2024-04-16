import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_link.g.dart';
part 'reset_password_link.freezed.dart';

@freezed
class ResetPasswordLinkResponse with _$ResetPasswordLinkResponse {
  const factory ResetPasswordLinkResponse({
    bool? success,
    String? data,
  }) = _ResetPasswordLinkResponse;

  factory ResetPasswordLinkResponse.fromJson(Map<String, Object?> json) =>
      _$ResetPasswordLinkResponseFromJson(json);
}
