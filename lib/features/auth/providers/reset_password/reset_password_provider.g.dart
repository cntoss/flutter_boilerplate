// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$resetPasswordHash() => r'2cae3f68ec2ef52ff27f3cff2c289280472c4135';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [resetPassword].
@ProviderFor(resetPassword)
const resetPasswordProvider = ResetPasswordFamily();

/// See also [resetPassword].
class ResetPasswordFamily extends Family<AsyncValue<CommonResponseModel>> {
  /// See also [resetPassword].
  const ResetPasswordFamily();

  /// See also [resetPassword].
  ResetPasswordProvider call(
    ResetPasswordRequest passwordRequest,
  ) {
    return ResetPasswordProvider(
      passwordRequest,
    );
  }

  @override
  ResetPasswordProvider getProviderOverride(
    covariant ResetPasswordProvider provider,
  ) {
    return call(
      provider.passwordRequest,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'resetPasswordProvider';
}

/// See also [resetPassword].
class ResetPasswordProvider
    extends AutoDisposeFutureProvider<CommonResponseModel> {
  /// See also [resetPassword].
  ResetPasswordProvider(
    ResetPasswordRequest passwordRequest,
  ) : this._internal(
          (ref) => resetPassword(
            ref as ResetPasswordRef,
            passwordRequest,
          ),
          from: resetPasswordProvider,
          name: r'resetPasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$resetPasswordHash,
          dependencies: ResetPasswordFamily._dependencies,
          allTransitiveDependencies:
              ResetPasswordFamily._allTransitiveDependencies,
          passwordRequest: passwordRequest,
        );

  ResetPasswordProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.passwordRequest,
  }) : super.internal();

  final ResetPasswordRequest passwordRequest;

  @override
  Override overrideWith(
    FutureOr<CommonResponseModel> Function(ResetPasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ResetPasswordProvider._internal(
        (ref) => create(ref as ResetPasswordRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        passwordRequest: passwordRequest,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CommonResponseModel> createElement() {
    return _ResetPasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ResetPasswordProvider &&
        other.passwordRequest == passwordRequest;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, passwordRequest.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ResetPasswordRef on AutoDisposeFutureProviderRef<CommonResponseModel> {
  /// The parameter `passwordRequest` of this provider.
  ResetPasswordRequest get passwordRequest;
}

class _ResetPasswordProviderElement
    extends AutoDisposeFutureProviderElement<CommonResponseModel>
    with ResetPasswordRef {
  _ResetPasswordProviderElement(super.provider);

  @override
  ResetPasswordRequest get passwordRequest =>
      (origin as ResetPasswordProvider).passwordRequest;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
