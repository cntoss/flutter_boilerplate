// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:string_validator/string_validator.dart';

import 'package:flutter_boilerplate/core/constants/size_constant.dart';
// Project imports:
import 'package:flutter_boilerplate/core/services/extensions.dart';
import 'package:flutter_boilerplate/core/services/helpers/log_helper.dart';
import 'package:flutter_boilerplate/core/services/helpers/toast_helper.dart';
import 'package:flutter_boilerplate/core/services/validator/common_validator.dart';
import 'package:flutter_boilerplate/core/views/atom/gap.dart';
import 'package:flutter_boilerplate/core/views/widgets/capp_bar.dart';
import 'package:flutter_boilerplate/core/views/widgets/celevated_button.dart';
import 'package:flutter_boilerplate/core/views/widgets/ctext_field.dart';
import 'package:flutter_boilerplate/features/auth/providers/login_provider.dart';
import 'package:flutter_boilerplate/features/profile/providers/update_password_provider.dart';

class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  ConsumerState<ChangePasswordScreen> createState() =>
      _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  final _confirmNewPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _newPasswordController = TextEditingController();
  final _oldPasswordController = TextEditingController();
  final _changeFocusNode = FocusNode();
  final _confirmFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();
    _changeFocusNode.dispose();
    _confirmFocusNode.dispose();
  }

  void _updatePassword() {
    if (_formKey.isValid) {
      ref
          .read(updatePasswordServiceProvider)
          .updatePassword(
            _oldPasswordController.text,
            _newPasswordController.text,
          )
          .onSuccess((data) {
            showToast(data ?? 'Success');
            Navigator.pop(context);
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    final passwordVisible = ref.watch(loginPasswordObscureProvider);
    final oldPasswordVisible = ref.watch(oldPasswordVisibilityProvider);
    final confirmPasswordVisible = ref.watch(confirmPasswordVisibilityProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CAppBar(title: Text('Change Password')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            20,
            0,
            20,
            MediaQuery.of(context).viewInsets.bottom,
          ),
          child: ListView(
            children: [
              SizedBox(height: sz.mediaHeight(context) / 5),
              CTextField(
                controller: _oldPasswordController,
                labelText: 'Old Password',
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      ref.read(oldPasswordVisibilityProvider.notifier).toggle();
                    },
                    icon: Icon(
                      oldPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      // color: UIColors.white,
                    ),
                  ),
                ),
                validator: (text) {
                  if ((text ?? '') == '') {
                    return 'Enter Old Password';
                  }
                  if (!isLength(text!, 6, 16)) {
                    return 'Password should be 6 to 16 characters.';
                  }

                  return null;
                },
                obscureText: !oldPasswordVisible,
                textInputAction: TextInputAction.next,
                onEditingComplete: _changeFocusNode.requestFocus,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              CTextField(
                margin: const EdgeInsets.only(top: 24),
                controller: _newPasswordController,
                focusNode: _changeFocusNode,
                labelText: 'Change Password',
                decoration: InputDecoration(
                  // counter: const SizedBox.shrink(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      ref.read(loginPasswordObscureProvider.notifier).toggle();
                    },
                    icon: Icon(
                      passwordVisible ? Icons.visibility_off : Icons.visibility,

                      // color: UIColors.white,
                    ),
                  ),
                ),
                obscureText: passwordVisible,
                //   maxLength: 16,
                validator: (text) {
                  if ((text ?? '') == '') {
                    return 'Enter New Password';
                  } else if (text == _oldPasswordController.text) {
                    return 'New password should not be same as old';
                  } else {
                    return CommonValidator().validatePassword(text!);
                  }
                },

                textInputAction: TextInputAction.next,
                onEditingComplete: _confirmFocusNode.requestFocus,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              CTextField(
                margin: const EdgeInsets.only(top: 24),
                labelText: 'Confirm Password',
                focusNode: _confirmFocusNode,
                controller: _confirmNewPasswordController,
                obscureText: !confirmPasswordVisible,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // maxLength: 16,
                validator: (text) {
                  if ((text ?? '') == '') {
                    return 'Enter Confirm Password';
                  } else if (text != _newPasswordController.text) {
                    printLog(text);
                    printLog(_newPasswordController.text);
                    return 'Password and Confirmation Password must be same.';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  // counterText: '',
                  suffixIcon: IconButton(
                    onPressed: () {
                      ref
                          .read(confirmPasswordVisibilityProvider.notifier)
                          .state = !confirmPasswordVisible;
                    },
                    icon: Icon(
                      confirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),

                textInputAction: TextInputAction.done,
              ),
              const VGap(20),
              CElevatedButton.modal(
                width: sz.mediaWidth(context),
                text: 'Update',
                onPressed: _updatePassword,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
