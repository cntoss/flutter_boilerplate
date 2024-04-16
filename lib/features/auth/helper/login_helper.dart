import 'package:flutter_boilerplate/core/providers/local_user_provider/local_user_provider.dart';
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/features/auth/models/login.dart';
import 'package:flutter_boilerplate/features/auth/services/isar_auth_service.dart';
import 'package:flutter_boilerplate/features/profile/providers/user_profile_provider.dart';
import 'package:flutter_boilerplate/routing/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginHelper {
  Future<void> updateAppStateAfterLogin(
    WidgetRef ref,
    LoginResponse loginResponse,
  ) async {
    await ref.refresh(userProfileProvider.future).onSuccess((data) async {
      await IsarAuthService().saveProfile(data);
    });

    //clear previous stats
    // ref.invalidate(providerName);

    //check role
    //final user = await ref.read(localUserProvider.future);
    /* if (user?. == null) {
     
      return;
    } */
    ref.invalidate(localUserProvider);
    await const HomeRoute().push<void>(ref.context);
  }
}
