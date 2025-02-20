// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_boilerplate/core/providers/bottom_bar_provider.dart';
import 'package:flutter_boilerplate/core/providers/local_user_provider/local_user_provider.dart';
import 'package:flutter_boilerplate/core/services/helpers/ui_helper.dart';
import 'package:flutter_boilerplate/features/auth/services/isar_auth_service.dart';
import 'package:flutter_boilerplate/features/auth/views/screens/login_screen.dart';
import 'package:flutter_boilerplate/routing/router.dart';
import 'package:flutter_boilerplate/routing/router_service.dart';

part 'app_session_provider.g.dart';
// import 'package:flutter_boilerplate/features/profile/providers/user_profile_provider.dart';

@riverpod
class AppSession extends _$AppSession {
  @override
  void build() {}

  Future<void> homeRefresh() async {}

  //Call basic data
  Future<void> initializeData() async {}

  Future<void> logout() async {
    //After logout screen should be on dashboard
    currentContext.pop();
    ref.read(bottomBarIndexProvider.notifier).state = 0;
    popUntilPath(currentContext, const LoginScreen());

    await IsarAuthService().deleteUserInfo();

    ref.invalidate(localUserProvider);
    // ..invalidate(userVerificationProvider)
  }
}
