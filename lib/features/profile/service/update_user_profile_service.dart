// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:flutter_boilerplate/core/models/common_response_model.dart';
import 'package:flutter_boilerplate/features/profile/constants/profile_repo_constants.dart';
import 'package:flutter_boilerplate/features/profile/models/profile.dart';
import 'package:flutter_boilerplate/features/profile/repository/update_user_profile_repository.dart';

class UpdateUserProfileService implements UpdateUserProfileRepository {
  const UpdateUserProfileService(this.dio);

  final Dio dio;

  @override
  Future<CommonResponseModel> userProfile(Profile userDetail) async {
    final Response<Map<String, dynamic>> response = await dio
        .put(ProfileRepoConstant.userProfile, data: userDetail.toJson());
    return CommonResponseModel.fromJson(response.data!);
  }
}
