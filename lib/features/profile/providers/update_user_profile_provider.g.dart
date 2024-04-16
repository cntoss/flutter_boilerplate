// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateUserProfileServiceHash() =>
    r'5fbd08ac36467bdeb4fe06af4670b67e347c061b';

/// See also [updateUserProfileService].
@ProviderFor(updateUserProfileService)
final updateUserProfileServiceProvider =
    AutoDisposeProvider<UpdateUserProfileService>.internal(
  updateUserProfileService,
  name: r'updateUserProfileServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$updateUserProfileServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UpdateUserProfileServiceRef
    = AutoDisposeProviderRef<UpdateUserProfileService>;
String _$updateUserProfileHash() => r'02464f295fd816bc1b93d43484cf50ed0a8a3a10';

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

/// See also [updateUserProfile].
@ProviderFor(updateUserProfile)
const updateUserProfileProvider = UpdateUserProfileFamily();

/// See also [updateUserProfile].
class UpdateUserProfileFamily extends Family<AsyncValue<CommonResponseModel>> {
  /// See also [updateUserProfile].
  const UpdateUserProfileFamily();

  /// See also [updateUserProfile].
  UpdateUserProfileProvider call(
    Profile updateDetail,
  ) {
    return UpdateUserProfileProvider(
      updateDetail,
    );
  }

  @override
  UpdateUserProfileProvider getProviderOverride(
    covariant UpdateUserProfileProvider provider,
  ) {
    return call(
      provider.updateDetail,
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
  String? get name => r'updateUserProfileProvider';
}

/// See also [updateUserProfile].
class UpdateUserProfileProvider
    extends AutoDisposeFutureProvider<CommonResponseModel> {
  /// See also [updateUserProfile].
  UpdateUserProfileProvider(
    Profile updateDetail,
  ) : this._internal(
          (ref) => updateUserProfile(
            ref as UpdateUserProfileRef,
            updateDetail,
          ),
          from: updateUserProfileProvider,
          name: r'updateUserProfileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateUserProfileHash,
          dependencies: UpdateUserProfileFamily._dependencies,
          allTransitiveDependencies:
              UpdateUserProfileFamily._allTransitiveDependencies,
          updateDetail: updateDetail,
        );

  UpdateUserProfileProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.updateDetail,
  }) : super.internal();

  final Profile updateDetail;

  @override
  Override overrideWith(
    FutureOr<CommonResponseModel> Function(UpdateUserProfileRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateUserProfileProvider._internal(
        (ref) => create(ref as UpdateUserProfileRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        updateDetail: updateDetail,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CommonResponseModel> createElement() {
    return _UpdateUserProfileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateUserProfileProvider &&
        other.updateDetail == updateDetail;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, updateDetail.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateUserProfileRef
    on AutoDisposeFutureProviderRef<CommonResponseModel> {
  /// The parameter `updateDetail` of this provider.
  Profile get updateDetail;
}

class _UpdateUserProfileProviderElement
    extends AutoDisposeFutureProviderElement<CommonResponseModel>
    with UpdateUserProfileRef {
  _UpdateUserProfileProviderElement(super.provider);

  @override
  Profile get updateDetail =>
      (origin as UpdateUserProfileProvider).updateDetail;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
