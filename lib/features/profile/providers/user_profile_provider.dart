// Package imports:
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_boilerplate/core/models/common_response_model.dart';
import 'package:flutter_boilerplate/core/services/helpers/dio/dio_extension.dart';
import 'package:flutter_boilerplate/features/profile/models/profile.dart';
import 'package:flutter_boilerplate/features/profile/service/user_profile_service.dart';

part 'user_profile_provider.g.dart';

@riverpod
UserProfileService userProfileService(UserProfileServiceRef ref) =>
    UserProfileService(ref.client);

@Riverpod(keepAlive: true)
UserProfileService aliveUserProfileService(AliveUserProfileServiceRef ref) =>
    UserProfileService(ref.client);

@Riverpod(keepAlive: true)
Future<Profile> userProfile(UserProfileRef ref) {
  return ref.watch(aliveUserProfileServiceProvider).userProfile();
}

@riverpod
Future<CommonResponseModel> updateProfilePicture(
  UpdateProfilePictureRef ref,
  String imagePath,
) async {
  final FormData data = FormData.fromMap({});
  data.files.add(
    MapEntry('profilePicImg', await MultipartFile.fromFile(imagePath)),
  );

  return ref.watch(userProfileServiceProvider).updateProfileImage(data);
}
// @riverpod
// Future<Profile> userProfile(UserProfileRef ref) =>
//     ref.watch(userProfileServiceProvider).userProfile();

// @Riverpod(keepAlive: true)
// Future<Profile> userProfile(UserProfileRef ref) =>
//     ref.watch(userProfileServiceProvider).userProfile();
