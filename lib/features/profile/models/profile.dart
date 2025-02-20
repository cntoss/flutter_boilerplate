// Package imports:
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
    return Profile(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      status: json['status'] as int?,
      otp: json['otp'],
    );
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
