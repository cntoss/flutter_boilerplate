import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/core/models/common_response_model.dart';
import 'package:flutter_boilerplate/features/auth/constants/auth_repo_constant.dart';
import 'package:flutter_boilerplate/features/auth/models/login.dart';
import 'package:flutter_boilerplate/features/auth/models/reset_password/reset_password_request.dart';
import 'package:flutter_boilerplate/features/auth/models/reset_password_link.dart';
import 'package:flutter_boilerplate/features/auth/repositories/login_repository.dart';
import 'package:flutter_boilerplate/features/auth/services/isar_auth_service.dart';

class AuthService implements AuthRepository {
  const AuthService(this.dio);
  final Dio dio;
  @override
  Future<LoginResponse> login(LoginRequest loginDetails) async {
    final Response<Map<String, dynamic>> response = await dio.post(
      AuthRepoConstant.login,
      data: loginDetails.toJson(),
    );
    final LoginResponse loginResponse = LoginResponse.fromJson(response.data!);

    await IsarAuthService().saveUserLogin(
      loginResponse,
      password: loginDetails.password,
      email: loginDetails.email,
    );

    return loginResponse;
  }

  @override
  Future<ResetPasswordLinkResponse> requestPasswordLink(
    dynamic payload,
  ) async {
    final Response<Map<String, dynamic>> response = await dio.post(
      AuthRepoConstant.resetPasswordLink,
      data: payload,
    );
    return ResetPasswordLinkResponse.fromJson(response.data!);
  }

  @override
  Future<CommonResponseModel> resetPassword(
    ResetPasswordRequest resetData,
  ) async {
    final Response<Map<String, dynamic>> response = await dio.post(
      AuthRepoConstant.resetPassword,
      data: resetData.toJson(),
    );
    return CommonResponseModel.fromJson(response.data!);
  }
}
