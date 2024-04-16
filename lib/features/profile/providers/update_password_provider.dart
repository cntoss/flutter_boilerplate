import 'package:flutter_boilerplate/core/services/helpers/dio_extension.dart';
import 'package:flutter_boilerplate/features/profile/service/update_password_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_password_provider.g.dart';

final confirmPasswordVisibilityProvider =
    AutoDisposeStateProvider<bool>((ref) => false);

@riverpod
class OldPasswordVisibility extends _$OldPasswordVisibility {
  void toggle() => state = !state;

  @override
  bool build() {
    return false;
  }
}

@riverpod
UpdatePasswordService updatePasswordService(
  UpdatePasswordServiceRef ref,
) =>
    UpdatePasswordService(ref.client);

@riverpod
Future<String?> updatePassword(
  UpdatePasswordRef ref,
  String oldPassword,
  String password,
) {
  return ref
      .watch(updatePasswordServiceProvider)
      .updatePassword(oldPassword, password);
}
