import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/core/services/typedef.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
  createToJson: false,
)
class BaseResponse<T> {
  const BaseResponse({
    this.data,
    this.success = false,
  });

  factory BaseResponse.fromJson(
    JsonMap json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseFromJson<T>(json, fromJsonT);

  final T? data;
  final bool success;
}

extension BaseResponseExtension on Response<JsonMap> {
  List<T> dataList<T>(
    Response<JsonMap> response,
    T Function(JsonMap json) fromJsonT,
  ) {
    return List<T>.from(
      (response.data!['data'] as List)
          .map((e) => fromJsonT(e as JsonMap))
          .toList(),
    );
  }

  List<T> paginatedDataList<T>(
    Response<JsonMap> response,
    T Function(JsonMap json) fromJsonT,
  ) {
    return List<T>.from(
      ((response.data!['data'] as JsonMap)['data'] as List)
          .map((e) => fromJsonT(e as JsonMap))
          .toList(),
    );
  }

  T dataModel<T>(
    Response<JsonMap> response,
    T Function(JsonMap json) fromJsonT,
  ) {
    return fromJsonT(response.data!['data'] as JsonMap);
  }
}
