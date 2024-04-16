enum Role { admin }

extension RoleExtension on Role {
  String get name {
    switch (this) {
      case Role.admin:
        return 'admin';
    }
  }
}
