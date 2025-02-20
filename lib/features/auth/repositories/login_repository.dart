// Project imports:
import 'package:flutter_boilerplate/core/models/common_response_model.dart';
import 'package:flutter_boilerplate/features/auth/models/login.dart';
import 'package:flutter_boilerplate/features/auth/models/reset_password/reset_password_request.dart';
import 'package:flutter_boilerplate/features/auth/models/reset_password_link.dart';

abstract class AuthRepository {
  Future<LoginResponse> login(LoginRequest loginDetails);

  Future<ResetPasswordLinkResponse> requestPasswordLink(String username);

  Future<CommonResponseModel> resetPassword(ResetPasswordRequest resetData);
}
