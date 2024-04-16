import 'package:json_annotation/json_annotation.dart';

part 'common_response_model.g.dart';

@JsonSerializable(createToJson: false)
class CommonResponseModel {
  const CommonResponseModel({
    this.data,
    this.success,
    this.message,
  });

  factory CommonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CommonResponseModelFromJson(json);

  final Map<String, dynamic>? data;
  final String? message;
  final bool? success;
}
