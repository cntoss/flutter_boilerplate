// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:flutter_boilerplate/core/models/base_response.dart';
import 'package:flutter_boilerplate/features/profile/constants/profile_repo_constants.dart';
import 'package:flutter_boilerplate/features/profile/repository/update_password_repository.dart';

class UpdatePasswordService implements UpdatePasswordRepository {
  const UpdatePasswordService(this.dio);

  final Dio dio;

  @override
  Future<String?> updatePassword(String oldPassword, String password) async {
    final Response<Map<String, dynamic>> response = await dio.put(
      ProfileRepoConstant.changePassword,
      data: {
        'old': oldPassword,
        'password': password,
        'passwordConfirmation': password,
      },
    );
    return BaseResponse<String?>.fromJson(
      response.data!,
      (json) => json! as String,
    ).data;
  }
}
