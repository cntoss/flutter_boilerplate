import 'package:flutter_boilerplate/features/auth/models/login.dart';
import 'package:flutter_boilerplate/features/auth/providers/auth_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
class LoginPasswordObscure extends _$LoginPasswordObscure {
  void toggle() => state = !state;

  @override
  bool build() => true;
}

@riverpod
Future<LoginResponse> login(LoginRef ref, LoginRequest loginDetails) {
  return ref.watch(authServiceProvider).login(loginDetails);
}
