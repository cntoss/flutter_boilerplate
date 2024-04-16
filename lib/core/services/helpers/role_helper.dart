import 'package:flutter_boilerplate/core/models/enum/role_enum.dart';
import 'package:flutter_boilerplate/features/auth/models/user_collection.dart';

int? identifyRole(UserCollection? user) {
  if (user?.role != Role.admin.name) {
    return user?.employeeID;
  }
  return null;
}
