// Project imports:
import 'package:flutter_boilerplate/features/auth/models/user_collection.dart';
import 'package:flutter_boilerplate/features/auth/services/isar_auth_service.dart';

class RoleModel {
  Future<String?> get role async {
    final UserCollection? userCollection =
        await IsarAuthService().getUserCollection();

    if (userCollection?.role != null) {
      return userCollection?.role!;
    }
    return null;
  }
}
