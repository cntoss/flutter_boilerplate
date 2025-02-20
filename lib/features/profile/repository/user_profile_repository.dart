// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:flutter_boilerplate/core/models/common_response_model.dart';
import 'package:flutter_boilerplate/features/profile/models/profile.dart';

abstract class UserProfileRepository {
  Future<CommonResponseModel> updateProfileImage(FormData data);

  Future<Profile> userProfile();
}
