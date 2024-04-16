// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseImpl _$$ErrorResponseImplFromJson(Map<String, dynamic> json) =>
    _$ErrorResponseImpl(
      success: json['success'] as bool?,
      errorMsg: json['errorMsg'] as String?,
      message: json['message'] as String?,
      errorCode: json['errorCode'],
    );

Map<String, dynamic> _$$ErrorResponseImplToJson(_$ErrorResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errorMsg': instance.errorMsg,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
