// Project imports:
import 'package:flutter_boilerplate/core/models/common_response_model.dart';
import 'package:flutter_boilerplate/features/profile/models/profile.dart';

abstract class UpdateUserProfileRepository {
  Future<CommonResponseModel> userProfile(Profile userDetails);
}
