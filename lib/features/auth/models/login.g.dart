// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
    };

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      accesstoken: json['accesstoken'] == null
          ? null
          : Token.fromJson(json['accesstoken'] as Map<String, dynamic>),
      refreshtoken: json['refreshtoken'] == null
          ? null
          : Token.fromJson(json['refreshtoken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'accesstoken': instance.accesstoken,
      'refreshtoken': instance.refreshtoken,
    };

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      accessToken: json['accessToken'] == null
          ? null
          : AccessToken.fromJson(json['accessToken'] as Map<String, dynamic>),
      plainTextToken: json['plainTextToken'] as String?,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'plainTextToken': instance.plainTextToken,
    };

_$AccessTokenImpl _$$AccessTokenImplFromJson(Map<String, dynamic> json) =>
    _$AccessTokenImpl(
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$$AccessTokenImplToJson(_$AccessTokenImpl instance) =>
    <String, dynamic>{
      'expires_at': instance.expiresAt?.toIso8601String(),
    };
