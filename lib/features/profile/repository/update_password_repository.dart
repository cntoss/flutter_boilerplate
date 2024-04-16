abstract class UpdatePasswordRepository {
  Future<String?> updatePassword(String oldPassword, String password);
}
