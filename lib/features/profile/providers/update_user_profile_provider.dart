// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_boilerplate/core/models/common_response_model.dart';
import 'package:flutter_boilerplate/core/services/helpers/dio_extension.dart';
import 'package:flutter_boilerplate/features/profile/models/profile.dart';
import 'package:flutter_boilerplate/features/profile/service/update_user_profile_service.dart';

part 'update_user_profile_provider.g.dart';

@riverpod
UpdateUserProfileService updateUserProfileService(
  UpdateUserProfileServiceRef ref,
) =>
    UpdateUserProfileService(ref.client);

@riverpod
Future<CommonResponseModel> updateUserProfile(
  UpdateUserProfileRef ref,
  Profile updateDetail,
) {
  return ref.watch(updateUserProfileServiceProvider).userProfile(updateDetail);
}
