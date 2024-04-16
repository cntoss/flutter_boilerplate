import 'package:flutter_boilerplate/core/models/enum/permission_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    int? id,
    String? name,
    String? email,
    int? status,
    dynamic otp,
  }) = _Profile;

  const Profile._();

  // Step 6: Override the freezed generated fromJson converter
  static Profile fromJson(Map<String, dynamic> json) {
    if (json['permission'] is List) {
      final List<Permission> permissions = [];
      for (final dynamic x in json['permission'] as List) {
        if (x is String) {
          permissions.add(permissionFromString(x));
        }
      }
      //  = (json['permission'] as List)
      //     .map((e) => e is String ? permissionFromString(e) : null)
      //     .toList();
      //  }
      return Profile(
        id: json['id'] as int?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        status: json['status'] as int?,
        otp: json['otp'],
      );
    } else {
      // Handle invalid JSON format
      throw ArgumentError('Invalid JSON format for Profile');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'status': status,
    };
  }
}
