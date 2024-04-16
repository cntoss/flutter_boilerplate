// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Token? get accesstoken => throw _privateConstructorUsedError;
  Token? get refreshtoken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call(
      {bool? status, String? message, Token? accesstoken, Token? refreshtoken});

  $TokenCopyWith<$Res>? get accesstoken;
  $TokenCopyWith<$Res>? get refreshtoken;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? accesstoken = freezed,
    Object? refreshtoken = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accesstoken: freezed == accesstoken
          ? _value.accesstoken
          : accesstoken // ignore: cast_nullable_to_non_nullable
              as Token?,
      refreshtoken: freezed == refreshtoken
          ? _value.refreshtoken
          : refreshtoken // ignore: cast_nullable_to_non_nullable
              as Token?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get accesstoken {
    if (_value.accesstoken == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.accesstoken!, (value) {
      return _then(_value.copyWith(accesstoken: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get refreshtoken {
    if (_value.refreshtoken == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.refreshtoken!, (value) {
      return _then(_value.copyWith(refreshtoken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
          _$LoginResponseImpl value, $Res Function(_$LoginResponseImpl) then) =
      __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status, String? message, Token? accesstoken, Token? refreshtoken});

  @override
  $TokenCopyWith<$Res>? get accesstoken;
  @override
  $TokenCopyWith<$Res>? get refreshtoken;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
      _$LoginResponseImpl _value, $Res Function(_$LoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? accesstoken = freezed,
    Object? refreshtoken = freezed,
  }) {
    return _then(_$LoginResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      accesstoken: freezed == accesstoken
          ? _value.accesstoken
          : accesstoken // ignore: cast_nullable_to_non_nullable
              as Token?,
      refreshtoken: freezed == refreshtoken
          ? _value.refreshtoken
          : refreshtoken // ignore: cast_nullable_to_non_nullable
              as Token?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl
    with DiagnosticableTreeMixin
    implements _LoginResponse {
  const _$LoginResponseImpl(
      {this.status, this.message, this.accesstoken, this.refreshtoken});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final Token? accesstoken;
  @override
  final Token? refreshtoken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginResponse(status: $status, message: $message, accesstoken: $accesstoken, refreshtoken: $refreshtoken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('accesstoken', accesstoken))
      ..add(DiagnosticsProperty('refreshtoken', refreshtoken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accesstoken, accesstoken) ||
                other.accesstoken == accesstoken) &&
            (identical(other.refreshtoken, refreshtoken) ||
                other.refreshtoken == refreshtoken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, accesstoken, refreshtoken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {final bool? status,
      final String? message,
      final Token? accesstoken,
      final Token? refreshtoken}) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  Token? get accesstoken;
  @override
  Token? get refreshtoken;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  AccessToken? get accessToken => throw _privateConstructorUsedError;
  String? get plainTextToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call({AccessToken? accessToken, String? plainTextToken});

  $AccessTokenCopyWith<$Res>? get accessToken;
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? plainTextToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as AccessToken?,
      plainTextToken: freezed == plainTextToken
          ? _value.plainTextToken
          : plainTextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessTokenCopyWith<$Res>? get accessToken {
    if (_value.accessToken == null) {
      return null;
    }

    return $AccessTokenCopyWith<$Res>(_value.accessToken!, (value) {
      return _then(_value.copyWith(accessToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenImplCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$TokenImplCopyWith(
          _$TokenImpl value, $Res Function(_$TokenImpl) then) =
      __$$TokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccessToken? accessToken, String? plainTextToken});

  @override
  $AccessTokenCopyWith<$Res>? get accessToken;
}

/// @nodoc
class __$$TokenImplCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res, _$TokenImpl>
    implements _$$TokenImplCopyWith<$Res> {
  __$$TokenImplCopyWithImpl(
      _$TokenImpl _value, $Res Function(_$TokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? plainTextToken = freezed,
  }) {
    return _then(_$TokenImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as AccessToken?,
      plainTextToken: freezed == plainTextToken
          ? _value.plainTextToken
          : plainTextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenImpl with DiagnosticableTreeMixin implements _Token {
  const _$TokenImpl({this.accessToken, this.plainTextToken});

  factory _$TokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenImplFromJson(json);

  @override
  final AccessToken? accessToken;
  @override
  final String? plainTextToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Token(accessToken: $accessToken, plainTextToken: $plainTextToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Token'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('plainTextToken', plainTextToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.plainTextToken, plainTextToken) ||
                other.plainTextToken == plainTextToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, plainTextToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      __$$TokenImplCopyWithImpl<_$TokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenImplToJson(
      this,
    );
  }
}

abstract class _Token implements Token {
  const factory _Token(
      {final AccessToken? accessToken,
      final String? plainTextToken}) = _$TokenImpl;

  factory _Token.fromJson(Map<String, dynamic> json) = _$TokenImpl.fromJson;

  @override
  AccessToken? get accessToken;
  @override
  String? get plainTextToken;
  @override
  @JsonKey(ignore: true)
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) {
  return _AccessToken.fromJson(json);
}

/// @nodoc
mixin _$AccessToken {
  @JsonKey(name: "expires_at")
  DateTime? get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenCopyWith<AccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenCopyWith<$Res> {
  factory $AccessTokenCopyWith(
          AccessToken value, $Res Function(AccessToken) then) =
      _$AccessTokenCopyWithImpl<$Res, AccessToken>;
  @useResult
  $Res call({@JsonKey(name: "expires_at") DateTime? expiresAt});
}

/// @nodoc
class _$AccessTokenCopyWithImpl<$Res, $Val extends AccessToken>
    implements $AccessTokenCopyWith<$Res> {
  _$AccessTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessTokenImplCopyWith<$Res>
    implements $AccessTokenCopyWith<$Res> {
  factory _$$AccessTokenImplCopyWith(
          _$AccessTokenImpl value, $Res Function(_$AccessTokenImpl) then) =
      __$$AccessTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "expires_at") DateTime? expiresAt});
}

/// @nodoc
class __$$AccessTokenImplCopyWithImpl<$Res>
    extends _$AccessTokenCopyWithImpl<$Res, _$AccessTokenImpl>
    implements _$$AccessTokenImplCopyWith<$Res> {
  __$$AccessTokenImplCopyWithImpl(
      _$AccessTokenImpl _value, $Res Function(_$AccessTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiresAt = freezed,
  }) {
    return _then(_$AccessTokenImpl(
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessTokenImpl with DiagnosticableTreeMixin implements _AccessToken {
  const _$AccessTokenImpl({@JsonKey(name: "expires_at") this.expiresAt});

  factory _$AccessTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessTokenImplFromJson(json);

  @override
  @JsonKey(name: "expires_at")
  final DateTime? expiresAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccessToken(expiresAt: $expiresAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccessToken'))
      ..add(DiagnosticsProperty('expiresAt', expiresAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessTokenImpl &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessTokenImplCopyWith<_$AccessTokenImpl> get copyWith =>
      __$$AccessTokenImplCopyWithImpl<_$AccessTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessTokenImplToJson(
      this,
    );
  }
}

abstract class _AccessToken implements AccessToken {
  const factory _AccessToken(
          {@JsonKey(name: "expires_at") final DateTime? expiresAt}) =
      _$AccessTokenImpl;

  factory _AccessToken.fromJson(Map<String, dynamic> json) =
      _$AccessTokenImpl.fromJson;

  @override
  @JsonKey(name: "expires_at")
  DateTime? get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$AccessTokenImplCopyWith<_$AccessTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
