// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updatePasswordServiceHash() =>
    r'600b7fe2db530021292be8e76df32dda48705fb1';

/// See also [updatePasswordService].
@ProviderFor(updatePasswordService)
final updatePasswordServiceProvider =
    AutoDisposeProvider<UpdatePasswordService>.internal(
  updatePasswordService,
  name: r'updatePasswordServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$updatePasswordServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UpdatePasswordServiceRef
    = AutoDisposeProviderRef<UpdatePasswordService>;
String _$updatePasswordHash() => r'77dc0b3e351b8527d92b712d33fceb50cbf20bac';

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

/// See also [updatePassword].
@ProviderFor(updatePassword)
const updatePasswordProvider = UpdatePasswordFamily();

/// See also [updatePassword].
class UpdatePasswordFamily extends Family<AsyncValue<String?>> {
  /// See also [updatePassword].
  const UpdatePasswordFamily();

  /// See also [updatePassword].
  UpdatePasswordProvider call(
    String oldPassword,
    String password,
  ) {
    return UpdatePasswordProvider(
      oldPassword,
      password,
    );
  }

  @override
  UpdatePasswordProvider getProviderOverride(
    covariant UpdatePasswordProvider provider,
  ) {
    return call(
      provider.oldPassword,
      provider.password,
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
  String? get name => r'updatePasswordProvider';
}

/// See also [updatePassword].
class UpdatePasswordProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [updatePassword].
  UpdatePasswordProvider(
    String oldPassword,
    String password,
  ) : this._internal(
          (ref) => updatePassword(
            ref as UpdatePasswordRef,
            oldPassword,
            password,
          ),
          from: updatePasswordProvider,
          name: r'updatePasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updatePasswordHash,
          dependencies: UpdatePasswordFamily._dependencies,
          allTransitiveDependencies:
              UpdatePasswordFamily._allTransitiveDependencies,
          oldPassword: oldPassword,
          password: password,
        );

  UpdatePasswordProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.oldPassword,
    required this.password,
  }) : super.internal();

  final String oldPassword;
  final String password;

  @override
  Override overrideWith(
    FutureOr<String?> Function(UpdatePasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdatePasswordProvider._internal(
        (ref) => create(ref as UpdatePasswordRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        oldPassword: oldPassword,
        password: password,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _UpdatePasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdatePasswordProvider &&
        other.oldPassword == oldPassword &&
        other.password == password;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, oldPassword.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdatePasswordRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `oldPassword` of this provider.
  String get oldPassword;

  /// The parameter `password` of this provider.
  String get password;
}

class _UpdatePasswordProviderElement
    extends AutoDisposeFutureProviderElement<String?> with UpdatePasswordRef {
  _UpdatePasswordProviderElement(super.provider);

  @override
  String get oldPassword => (origin as UpdatePasswordProvider).oldPassword;
  @override
  String get password => (origin as UpdatePasswordProvider).password;
}

String _$oldPasswordVisibilityHash() =>
    r'd3398977adf2d9e852da325dc66d8ed123d53842';

/// See also [OldPasswordVisibility].
@ProviderFor(OldPasswordVisibility)
final oldPasswordVisibilityProvider =
    AutoDisposeNotifierProvider<OldPasswordVisibility, bool>.internal(
  OldPasswordVisibility.new,
  name: r'oldPasswordVisibilityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$oldPasswordVisibilityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OldPasswordVisibility = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
