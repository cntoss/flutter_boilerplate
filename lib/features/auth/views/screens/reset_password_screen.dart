import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/core/services/helpers/ui_helper.dart';
import 'package:flutter_boilerplate/core/services/validator/auth_validation.dart';
import 'package:flutter_boilerplate/core/views/resource/style_manager.dart';
import 'package:flutter_boilerplate/core/views/widgets/celevated_button.dart';
import 'package:flutter_boilerplate/core/views/widgets/ctext_field.dart';
import 'package:flutter_boilerplate/core/views/widgets/gap.dart';
import 'package:flutter_boilerplate/features/auth/models/reset_password/reset_password_request.dart';
import 'package:flutter_boilerplate/features/auth/providers/reset_password/reset_password_provider.dart';
import 'package:flutter_boilerplate/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'package:flutter_boilerplate/routing/router_class/auth_route.dart';

class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({required this.token, super.key});

  final String token;

  @override
  ConsumerState<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(4, 40, 0, 10),
              child: CloseButton(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reset\nPassword ?',
                        style: getBoldStyle(
                          color: UIColors.textPrimary,
                          fontSize: 24,
                        ),
                      ),
                      const VGap(30),
                      CTextField(
                        labelText: 'User name or Email',
                        controller: usernameController,
                        validationMessage: 'Username is required',
                      ),
                      const VGap(16),
                      CTextField(
                        labelText: 'New Password',
                        controller: passwordController,
                        validator: AuthValidation().validatePassword,
                      ),
                      const VGap(16),
                      CTextField(
                        labelText: 'Confirm Password',
                        controller: confirmPasswordController,
                        validator: (p0) {
                          if ((p0 ?? '').isEmpty) {
                            return 'Confirm Password is Required';
                          } else if (p0 != passwordController.text) {
                            return 'Password did not match';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const Spacer(),
                      /*   Opacity(
                        opacity: 0.1, */
                      CElevatedButton(
                        margin: const EdgeInsets.only(
                          bottom: 12,
                          left: 4,
                          right: 4,
                        ),
                        text: 'Forgot Password',
                        onPressed: () {
                          if (formKey.isValid) {
                            ref
                                .watch(
                              resetPasswordProvider(
                                ResetPasswordRequest(
                                  password: passwordController.text,
                                  passwordConfirmation:
                                      confirmPasswordController.text,
                                  username: usernameController.textOrNull(),
                                  token: widget.token,
                                ),
                              ).future,
                            )
                                .onSuccess(
                              (data) {
                                const ForgotPasswordRoute().push<void>(context);
                              },
                            );
                          }
                        },
                        width: mediaWidth(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
