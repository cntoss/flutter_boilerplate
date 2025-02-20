// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate/core/constants/app_theme.dart';
import 'package:flutter_boilerplate/core/constants/repository_constant.dart';
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/models/app_environment.dart';
import 'package:flutter_boilerplate/core/providers/app_state_provider.dart';
import 'package:flutter_boilerplate/core/providers/theme_provider.dart';
import 'package:flutter_boilerplate/core/services/helpers/isar_helper.dart';
import 'package:flutter_boilerplate/core/services/helpers/log_helper.dart';
import 'package:flutter_boilerplate/core/services/helpers/ui_helper.dart';
import 'package:flutter_boilerplate/core/views/widgets/cerror.dart';
import 'package:flutter_boilerplate/core/views/widgets/loader/cloader.dart';
import 'package:flutter_boilerplate/features/onboarding/views/screens/splash_screen.dart';

Future<void> runBoilerplateApp(AppEnvironment environment) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await IsarHelper().open();
      /*    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ); */

      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      ErrorWidget.builder = (details) {
        if (kDebugMode) {
          return ErrorWidget(details.exception);
        }

        // FirebaseCrashlytics.instance.recordError(
        //   details.exception,
        //   details.stack,
        //   fatal: true,
        // );

        final bool canPop = Navigator.of(currentContext).canPop();
        return Scaffold(
          body: Center(
            child: CError(
              title: 'Fatal Error',
              message: 'Something went wrong!',
              buttonText: 'Go Back',
              onPressed: !canPop ? null : () => Navigator.pop(currentContext),
            ),
          ),
        );
      };

      runApp(
        ProviderScope(
          child: AppState(
            environment: environment,
            palette: UIColors(),
            child: const BoilerplateApp(),
          ),
        ),
      );
    },
    (error, stack) {
      if (kDebugMode) {
        printLog(error);
        printLog(stack);
        return;
      }
      // Log the production errors
      // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    },
  );
}

class BoilerplateApp extends ConsumerStatefulWidget {
  const BoilerplateApp({super.key});

  @override
  ConsumerState<BoilerplateApp> createState() => _ErpAppState();
}

class _ErpAppState extends ConsumerState<BoilerplateApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      apiBaseUrl = appState(context).environment.baseUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeMode theme = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Boilerplate',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: theme,
      navigatorKey: navigatorKey,
      home: const SplashScreen(),
      // routerConfig: router,
      builder: (context, child) => CLoader(child: child),
    );
  }
}
