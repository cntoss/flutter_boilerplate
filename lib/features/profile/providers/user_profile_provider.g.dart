// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userProfileServiceHash() =>
    r'a88ccf44bdb19a461fa07b209eebaf23d715df38';

/// See also [userProfileService].
@ProviderFor(userProfileService)
final userProfileServiceProvider =
    AutoDisposeProvider<UserProfileService>.internal(
  userProfileService,
  name: r'userProfileServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userProfileServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserProfileServiceRef = AutoDisposeProviderRef<UserProfileService>;
String _$aliveUserProfileServiceHash() =>
    r'b292cda2e82fdc67965594f71d7cd01eeb1a69c9';

/// See also [aliveUserProfileService].
@ProviderFor(aliveUserProfileService)
final aliveUserProfileServiceProvider = Provider<UserProfileService>.internal(
  aliveUserProfileService,
  name: r'aliveUserProfileServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$aliveUserProfileServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AliveUserProfileServiceRef = ProviderRef<UserProfileService>;
String _$userProfileHash() => r'0444339ac42b8652c6d3a724fc883c3c9fe4bfb6';

/// See also [userProfile].
@ProviderFor(userProfile)
final userProfileProvider = FutureProvider<Profile>.internal(
  userProfile,
  name: r'userProfileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserProfileRef = FutureProviderRef<Profile>;
String _$updateProfilePictureHash() =>
    r'ec97707b57ab7fd193ce9121c42932fdd8839c9f';

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

/// See also [updateProfilePicture].
@ProviderFor(updateProfilePicture)
const updateProfilePictureProvider = UpdateProfilePictureFamily();

/// See also [updateProfilePicture].
class UpdateProfilePictureFamily
    extends Family<AsyncValue<CommonResponseModel>> {
  /// See also [updateProfilePicture].
  const UpdateProfilePictureFamily();

  /// See also [updateProfilePicture].
  UpdateProfilePictureProvider call(
    String imagePath,
  ) {
    return UpdateProfilePictureProvider(
      imagePath,
    );
  }

  @override
  UpdateProfilePictureProvider getProviderOverride(
    covariant UpdateProfilePictureProvider provider,
  ) {
    return call(
      provider.imagePath,
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
  String? get name => r'updateProfilePictureProvider';
}

/// See also [updateProfilePicture].
class UpdateProfilePictureProvider
    extends AutoDisposeFutureProvider<CommonResponseModel> {
  /// See also [updateProfilePicture].
  UpdateProfilePictureProvider(
    String imagePath,
  ) : this._internal(
          (ref) => updateProfilePicture(
            ref as UpdateProfilePictureRef,
            imagePath,
          ),
          from: updateProfilePictureProvider,
          name: r'updateProfilePictureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateProfilePictureHash,
          dependencies: UpdateProfilePictureFamily._dependencies,
          allTransitiveDependencies:
              UpdateProfilePictureFamily._allTransitiveDependencies,
          imagePath: imagePath,
        );

  UpdateProfilePictureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imagePath,
  }) : super.internal();

  final String imagePath;

  @override
  Override overrideWith(
    FutureOr<CommonResponseModel> Function(UpdateProfilePictureRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateProfilePictureProvider._internal(
        (ref) => create(ref as UpdateProfilePictureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imagePath: imagePath,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CommonResponseModel> createElement() {
    return _UpdateProfilePictureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateProfilePictureProvider &&
        other.imagePath == imagePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imagePath.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateProfilePictureRef
    on AutoDisposeFutureProviderRef<CommonResponseModel> {
  /// The parameter `imagePath` of this provider.
  String get imagePath;
}

class _UpdateProfilePictureProviderElement
    extends AutoDisposeFutureProviderElement<CommonResponseModel>
    with UpdateProfilePictureRef {
  _UpdateProfilePictureProviderElement(super.provider);

  @override
  String get imagePath => (origin as UpdateProfilePictureProvider).imagePath;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
