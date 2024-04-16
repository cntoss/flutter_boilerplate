import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/auth/models/user_collection.dart';
import 'package:flutter_boilerplate/features/auth/services/isar_auth_service.dart';
import 'package:flutter_boilerplate/routing/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(seconds: 1))
        .then((value) => checkLogin());
  }

  //await const AddPaymentRoute().pushReplacement<void, void>(context);
  Future<void> checkLogin() async {
    /*   if (kDebugMode) {
      return const HomeRoute().pushReplacement<void, void>(context);
    } else */
    {
      final UserCollection? user = await IsarAuthService().getUserCollection();
      if (!mounted) return;
      if (user?.token != null) {
        return const HomeRoute().pushReplacement<void, void>(context);
      }
      return const LoginRoute().pushReplacement<void, void>(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Splash')),
    );
  }
}
