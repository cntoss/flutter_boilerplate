// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@JsonSerializable(createFactory: false)
class LoginRequest {
  const LoginRequest({required this.email, required this.password});

  final String password;
  final String email;

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}

// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    bool? status,
    String? message,
    Token? accesstoken,
    Token? refreshtoken,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class Token with _$Token {
  const factory Token({
    AccessToken? accessToken,
    String? plainTextToken,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

@freezed
class AccessToken with _$AccessToken {
  const factory AccessToken({
    @JsonKey(name: "expires_at") DateTime? expiresAt,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);
}
