// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:string_validator/string_validator.dart';

import 'package:flutter_boilerplate/core/constants/size_constant.dart';
// Project imports:
import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/providers/local_user_provider/local_user_provider.dart';
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/core/services/validator/common_validator.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';
import 'package:flutter_boilerplate/core/views/widgets/celevated_button.dart';
import 'package:flutter_boilerplate/core/views/widgets/ctext_field.dart';
import 'package:flutter_boilerplate/features/auth/helper/login_helper.dart';
import 'package:flutter_boilerplate/features/auth/models/login.dart';
import 'package:flutter_boilerplate/features/auth/providers/login_provider.dart';
import 'package:flutter_boilerplate/features/auth/services/isar_auth_service.dart';
import 'package:flutter_boilerplate/generated/assets.gen.dart';
import 'package:flutter_boilerplate/routing/router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  final TextStyle textStyle = const TextStyle(color: UIColors.black);

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final localUser = ref.read(localUserProvider);
      if (localUser.value?.isRemember ?? false) {
        emailController.text = localUser.value?.email ?? '';
        passwordController.text = localUser.value?.password ?? '';
      }
    });
    /*  emailController.text = 'example@gmail.com.np';
    passwordController.text = 'password'; */
  }

  Future<void> localLogin() async {
    /* 
    final bool authenticated = await BiometricService().authenticate();
    if (authenticated) {
      await const HomeRoute().push<void>(context);
    } */
  }

  void login() {
    if (_formKey.isValid) {
      final LoginRequest loginDetail = LoginRequest(
        // Sanitizing the email
        email: emailController.text.trim(),
        // Trimming the white spaces
        password: passwordController.text.trim(),
      );

      ref.read(loginProvider(loginDetail).future).onSuccess((
        loginResponse,
      ) async {
        await LoginHelper().updateAppStateAfterLogin(ref, loginResponse);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool passwordVisible = ref.watch(loginPasswordObscureProvider);
    final localUserWatcher = ref.watch(localUserProvider);

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Assets.images.logo.image(height: sz.mediaHeight(context) / 6),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CTextField(
                        labelText: 'Email ID',
                        style: textStyle,
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        textInputAction: TextInputAction.next,
                        onEditingComplete: passwordFocusNode.requestFocus,
                        cursorColor: UIColors.white,
                        validator: CommonValidator().validateEmail,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelStyle: textStyle,
                          errorStyle: const TextStyle(color: Color(0xffFF6870)),
                        ),
                      ),
                      CTextField(
                        controller: passwordController,
                        labelText: 'Password',
                        style: textStyle,
                        focusNode: passwordFocusNode,
                        textInputAction: TextInputAction.done,
                        cursorColor: UIColors.white,
                        obscureText: passwordVisible,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (text) {
                          if (!isLength(text!, 6, 100)) {
                            return 'Password is required';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelStyle: textStyle,
                          errorStyle: const TextStyle(color: Color(0xffFF6870)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              ref
                                  .read(loginPasswordObscureProvider.notifier)
                                  .toggle();
                            },
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                        margin: const EdgeInsets.only(top: 20),
                      ),
                      Row(
                        children: [
                          localUserWatcher.onSuccess((userInfo) {
                            return Checkbox.adaptive(
                              value: userInfo?.isRemember ?? false,
                              onChanged: (value) {
                                if (value != null) {
                                  IsarAuthService().toggleRemember(
                                    isRemember: value,
                                  );
                                  ref.invalidate(localUserProvider);
                                }
                              },
                            );
                          }),
                          Text('Remember Me', style: getRegularStyle()),
                          const Spacer(),
                          Semantics(
                            button: true,
                            child: InkWell(
                              onTap:
                                  () => const ForgotPasswordRoute().push<void>(
                                    context,
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 19,
                                ),
                                child: Text(
                                  'Forgot Password?',
                                  style: getMediumStyle(
                                    color: UIColors.textTertiary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      CElevatedButton(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: sz.mediaWidth(context),
                        text: 'Log In',
                        onPressed: login,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
