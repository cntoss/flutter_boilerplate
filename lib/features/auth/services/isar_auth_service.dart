import 'dart:convert';

import 'package:flutter_boilerplate/core/services/helpers/isar_helper.dart';
import 'package:flutter_boilerplate/features/auth/models/login.dart';
import 'package:flutter_boilerplate/features/auth/models/user_collection.dart';
import 'package:flutter_boilerplate/features/profile/models/profile.dart';

class IsarAuthService {
  Future<void> deleteUserInfo() async {
    await isar.writeTxn(() async {
      final UserCollection? user = await getUserCollection();
      if (user?.isRemember ?? false) {
        final update = UserCollection(
          email: user?.email,
          enabledBiometric: user?.enabledBiometric,
          password: user?.password,
          isRemember: user?.isRemember,
        );
        await isar.userCollections.put(update);
      } else {
        await isar.userCollections.delete(1);
      }
    });
  }

  Future<UserCollection?> getUserCollection() async {
    return isar.userCollections.get(1);
  }

  Future<void> saveProfile(
    Profile profile,
  ) async {
    await isar.writeTxn(() async {
      final UserCollection? user = await getUserCollection();
      final update = UserCollection(
        email: user?.email,
        name: profile.name,
        token: user?.token,
        enabledBiometric: user?.enabledBiometric,
        password: user?.password,
        isRemember: user?.isRemember,
      );
      await isar.userCollections.put(update);
    });
  }

  Future<void> saveUserLogin(
    LoginResponse loginResponse, {
    String? password,
    String? email,
  }) async {
    await isar.writeTxn(() async {
      final UserCollection? user = await getUserCollection();
      final UserCollection update = UserCollection(
        token: jsonEncode(loginResponse.toJson()),
        password: user?.password ?? password,
        role: user?.role,
        employeeID: user?.employeeID,
        //email:null
        email: user?.email ?? email,
        isRemember: user?.isRemember,
        enabledBiometric: user?.enabledBiometric,
      );
      await isar.userCollections.put(update);
    });
  }

  Future<void> toggleRemember({
    required bool isRemember,
  }) async {
    await isar.writeTxn(() async {
      final UserCollection? user = await getUserCollection();
      final update = UserCollection(
        token: user?.token,
        email: user?.email,
        role: user?.role,
        employeeID: user?.employeeID,
        name: user?.name,
        enabledBiometric: user?.enabledBiometric,
        password: user?.password,
        isRemember: isRemember,
      );
      await isar.userCollections.put(update);
    });
  }
}
