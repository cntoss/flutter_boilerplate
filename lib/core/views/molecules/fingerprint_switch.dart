/* import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/providers/local_user_provider/local_user_provider.dart';
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/core/services/helpers/biometric_service.dart';
import 'package:flutter_boilerplate/features/auth/services/isar_auth_service.dart';

class FingerprintSwitch extends ConsumerWidget {
  const FingerprintSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(localUserProvider).onSuccess(
          (data) => Switch.adaptive(
            value: data?.enabledBiometric ?? false,
            activeColor: UIColors.greenPrimary,
            activeTrackColor: UIColors.greenPrimary,
            thumbColor: const MaterialStatePropertyAll(UIColors.white),
            inactiveTrackColor: UIColors.inputBorderDisabled,
            onChanged: (bool value) async {
              await BiometricService()
                  .authenticate()
                  .then((isAuthenticated) async {
                if (isAuthenticated) {
                  await IsarAuthService()
                      .saveBiometric(enabledBiometric: value);
                  ref.invalidate(localUserProvider);
                }
              });
            },
          ),
        );
  }
}
 */
