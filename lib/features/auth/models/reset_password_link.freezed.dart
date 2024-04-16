// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPasswordLinkResponse _$ResetPasswordLinkResponseFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordLinkResponse.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordLinkResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordLinkResponseCopyWith<ResetPasswordLinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordLinkResponseCopyWith<$Res> {
  factory $ResetPasswordLinkResponseCopyWith(ResetPasswordLinkResponse value,
          $Res Function(ResetPasswordLinkResponse) then) =
      _$ResetPasswordLinkResponseCopyWithImpl<$Res, ResetPasswordLinkResponse>;
  @useResult
  $Res call({bool? success, String? data});
}

/// @nodoc
class _$ResetPasswordLinkResponseCopyWithImpl<$Res,
        $Val extends ResetPasswordLinkResponse>
    implements $ResetPasswordLinkResponseCopyWith<$Res> {
  _$ResetPasswordLinkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordLinkResponseImplCopyWith<$Res>
    implements $ResetPasswordLinkResponseCopyWith<$Res> {
  factory _$$ResetPasswordLinkResponseImplCopyWith(
          _$ResetPasswordLinkResponseImpl value,
          $Res Function(_$ResetPasswordLinkResponseImpl) then) =
      __$$ResetPasswordLinkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? data});
}

/// @nodoc
class __$$ResetPasswordLinkResponseImplCopyWithImpl<$Res>
    extends _$ResetPasswordLinkResponseCopyWithImpl<$Res,
        _$ResetPasswordLinkResponseImpl>
    implements _$$ResetPasswordLinkResponseImplCopyWith<$Res> {
  __$$ResetPasswordLinkResponseImplCopyWithImpl(
      _$ResetPasswordLinkResponseImpl _value,
      $Res Function(_$ResetPasswordLinkResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResetPasswordLinkResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordLinkResponseImpl
    with DiagnosticableTreeMixin
    implements _ResetPasswordLinkResponse {
  const _$ResetPasswordLinkResponseImpl({this.success, this.data});

  factory _$ResetPasswordLinkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordLinkResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordLinkResponse(success: $success, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResetPasswordLinkResponse'))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordLinkResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordLinkResponseImplCopyWith<_$ResetPasswordLinkResponseImpl>
      get copyWith => __$$ResetPasswordLinkResponseImplCopyWithImpl<
          _$ResetPasswordLinkResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordLinkResponseImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordLinkResponse implements ResetPasswordLinkResponse {
  const factory _ResetPasswordLinkResponse(
      {final bool? success,
      final String? data}) = _$ResetPasswordLinkResponseImpl;

  factory _ResetPasswordLinkResponse.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordLinkResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordLinkResponseImplCopyWith<_$ResetPasswordLinkResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
