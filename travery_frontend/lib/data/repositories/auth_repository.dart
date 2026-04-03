abstract class AuthRepository {
  bool get isLoggedIn;
  Future<bool> login(String email, String password);
}