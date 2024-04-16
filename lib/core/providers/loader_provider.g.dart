// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loader_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loaderStateHash() => r'0d1a62a9196762204a4384d9585ee78326ee9c54';

/// A loader provider that can hold multiple load state
///
/// Copied from [LoaderState].
@ProviderFor(LoaderState)
final loaderStateProvider =
    AutoDisposeNotifierProvider<LoaderState, List<void>>.internal(
  LoaderState.new,
  name: r'loaderStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loaderStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoaderState = AutoDisposeNotifier<List<void>>;
String _$buttonStateHash() => r'e78382a07d411dba9d0c3a42aa1afa0a10bebbb7';

/// See also [ButtonState].
@ProviderFor(ButtonState)
final buttonStateProvider =
    AutoDisposeNotifierProvider<ButtonState, List<UniqueKey>>.internal(
  ButtonState.new,
  name: r'buttonStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$buttonStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ButtonState = AutoDisposeNotifier<List<UniqueKey>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
