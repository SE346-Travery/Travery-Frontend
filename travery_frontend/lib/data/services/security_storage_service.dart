import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecurityStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  static const String _accessToken = 'access_token';
  static const String _refreshToken = 'refresh_token';

  Future<void> saveToken(String token) async {
    await _storage.write(key: _accessToken, value: token);
  }
  Future<String?> getToken() async {
    return await _storage.read(key: _accessToken);
  }
  Future<void> deleteToken() async {
    await _storage.delete(key: _accessToken);
  }

  Future<void> saveRefreshToken(String token) async{
    await  _storage.write(key: _refreshToken, value: token);
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(key: _refreshToken);
  }

  Future<void> deleteRefreshToken() async {
    await _storage.delete(key: _refreshToken);
  }

  Future<void> deleteAllTokens() async {
    await _storage.delete(key: _accessToken);
    await _storage.delete(key: _refreshToken);
  }
}