// Package imports:
import 'package:isar/isar.dart';

part 'user_collection.g.dart';

@collection
class UserCollection {
  const UserCollection({
    this.id = 1,
    this.employeeID,
    this.token,
    this.email,
    this.password,
    this.name,
    this.enabledBiometric,
    this.isRemember,
    this.role,
  });

  final String? email;

  final String? password;

  final bool? enabledBiometric;

  final bool? isRemember;

  /// ID of the collection
  /// We set it to 1 because we will have only one token stored
  final Id id;

  //name from login initial use is on biometric
  final String? name;

  final String? token;

  final String? role;

  final int? employeeID;
  UserCollection copyWith({
    String? email,
    String? password,
    bool? enabledBiometric,
    bool? isRemember,
    Id? id,
    String? name,
    String? token,
    String? role,
    int? employeeID,
  }) {
    return UserCollection(
      email: email ?? this.email,
      password: password ?? this.password,
      enabledBiometric: enabledBiometric ?? this.enabledBiometric,
      isRemember: isRemember ?? this.isRemember,
      id: id ?? this.id,
      name: name ?? this.name,
      token: token ?? this.token,
      role: role ?? this.role,
      employeeID: employeeID ?? this.employeeID,
    );
  }
}
