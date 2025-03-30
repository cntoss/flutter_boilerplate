// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:string_validator/string_validator.dart';

import 'package:flutter_boilerplate/core/constants/size_constant.dart';
// Project imports:
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/core/views/atom/gap.dart';
import 'package:flutter_boilerplate/core/views/widgets/celevated_button.dart';
import 'package:flutter_boilerplate/core/views/widgets/ctext_field.dart';
import 'package:flutter_boilerplate/generated/assets.gen.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final emailEC = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailEC.dispose();
    super.dispose();
  }

  void sendResetLink() {
    if (formKey.isValid) {
      //final AuthUsername username = AuthUsername(username: emailEC.text);

      //  Fetch token from url
      //  const ResetPasswordRoute(token: 'token').push<void>(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Forgot Password')),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: [
              const VGap(30),
              Align(child: Assets.images.logo.image(height: 100)),
              const VGap(100),
              Form(
                key: formKey,
                child: CTextField(
                  controller: emailEC,
                  labelText: 'Enter Email Address',
                  validator: (p0) {
                    if (!isEmail(p0!)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
              ),
              const VGap(15),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text('We will send you a link to reset your password'),
              ),
            ],
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 30,
            child: CElevatedButton(
              text: 'Send Reset Link',
              onPressed: sendResetLink,
              width: sz.mediaWidth(context),
            ),
          ),
        ],
      ),
    );
  }
}
