import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/core/models/base_response.dart';
import 'package:flutter_boilerplate/core/models/common_response_model.dart';
import 'package:flutter_boilerplate/core/services/helpers/dio_extension.dart';
import 'package:flutter_boilerplate/features/profile/constants/profile_repo_constants.dart';
import 'package:flutter_boilerplate/features/profile/models/profile.dart';
import 'package:flutter_boilerplate/features/profile/repository/user_profile_repository.dart';

class UserProfileService implements UserProfileRepository {
  const UserProfileService(this.dio);

  final Dio dio;

  @override
  Future<CommonResponseModel> updateProfileImage(FormData data) async {
    final Response<Map<String, dynamic>> response =
        await dio.post(ProfileRepoConstant.userProfile, data: data);
    return CommonResponseModel.fromJson(response.data!);
  }

  @override
  Future<Profile> userProfile() async {
    final Response<Map<String, dynamic>> response = await dio.hideLoader.get(
      ProfileRepoConstant.userProfile,
    );

    return response.dataModel<Profile>(
      response,
      Profile.fromJson,
    );
  }
}
