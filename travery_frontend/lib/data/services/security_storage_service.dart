import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecurityStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  static const String _accessToken = 'access_token';
  static const String _refreshToken = 'refresh_token';
  static const String _cometchatUid = 'cometchat_uid';

  Future<void> saveAccessToken(String token) async {
    await _storage.write(key: _accessToken, value: token);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: _accessToken);
  }

  Future<void> deleteAccessToken() async {
    await _storage.delete(key: _accessToken);
  }

  Future<void> saveRefreshToken(String token) async {
    await _storage.write(key: _refreshToken, value: token);
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(key: _refreshToken);
  }

  Future<void> saveCometchatUid(String uid) async {
    await _storage.write(key: _cometchatUid, value: uid);
  }

  Future<String?> getCometchatUid() async {
    return await _storage.read(key: _cometchatUid);
  }

  Future<void> deleteCometchatUid() async {
    await _storage.delete(key: _cometchatUid);
  }

  Future<bool> isLoggedIn() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }

  Future<void> deleteRefreshToken() async {
    await _storage.delete(key: _refreshToken);
  }

  Future<void> deleteAllTokens() async {
    await _storage.delete(key: _accessToken);
    await _storage.delete(key: _refreshToken);
    await _storage.delete(key: _cometchatUid);
  }
}
