// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginHash() => r'6285fe46dd7b3f365f01db09c921d670df00259c';

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

/// See also [login].
@ProviderFor(login)
const loginProvider = LoginFamily();

/// See also [login].
class LoginFamily extends Family<AsyncValue<LoginResponse>> {
  /// See also [login].
  const LoginFamily();

  /// See also [login].
  LoginProvider call(
    LoginRequest loginDetails,
  ) {
    return LoginProvider(
      loginDetails,
    );
  }

  @override
  LoginProvider getProviderOverride(
    covariant LoginProvider provider,
  ) {
    return call(
      provider.loginDetails,
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
  String? get name => r'loginProvider';
}

/// See also [login].
class LoginProvider extends AutoDisposeFutureProvider<LoginResponse> {
  /// See also [login].
  LoginProvider(
    LoginRequest loginDetails,
  ) : this._internal(
          (ref) => login(
            ref as LoginRef,
            loginDetails,
          ),
          from: loginProvider,
          name: r'loginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginHash,
          dependencies: LoginFamily._dependencies,
          allTransitiveDependencies: LoginFamily._allTransitiveDependencies,
          loginDetails: loginDetails,
        );

  LoginProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.loginDetails,
  }) : super.internal();

  final LoginRequest loginDetails;

  @override
  Override overrideWith(
    FutureOr<LoginResponse> Function(LoginRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginProvider._internal(
        (ref) => create(ref as LoginRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        loginDetails: loginDetails,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<LoginResponse> createElement() {
    return _LoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginProvider && other.loginDetails == loginDetails;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, loginDetails.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoginRef on AutoDisposeFutureProviderRef<LoginResponse> {
  /// The parameter `loginDetails` of this provider.
  LoginRequest get loginDetails;
}

class _LoginProviderElement
    extends AutoDisposeFutureProviderElement<LoginResponse> with LoginRef {
  _LoginProviderElement(super.provider);

  @override
  LoginRequest get loginDetails => (origin as LoginProvider).loginDetails;
}

String _$loginPasswordObscureHash() =>
    r'c0ea8ce6a70430619e54a61b7400b4129e3b2011';

/// See also [LoginPasswordObscure].
@ProviderFor(LoginPasswordObscure)
final loginPasswordObscureProvider =
    AutoDisposeNotifierProvider<LoginPasswordObscure, bool>.internal(
  LoginPasswordObscure.new,
  name: r'loginPasswordObscureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginPasswordObscureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoginPasswordObscure = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
