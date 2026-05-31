import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/api/profile_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/data/services/token_refresh_service.dart';
import 'package:travery_frontend/utils/jwt_utils.dart';
import 'package:travery_frontend/utils/core_result.dart';

class UserInfoProvider extends ChangeNotifier {
  UserInfoProvider({
    required SecurityStorageService storage,
    ProfileService? profileService,
  }) : _storage = storage,
       _profileService = profileService ?? ProfileService();

  final SecurityStorageService _storage;
  final ProfileService _profileService;
  final TokenRefreshService _tokenRefreshService;

  String? _name;
  String? _phone;
  String? _email;

  UserInfoProvider({
    required SecurityStorageService storage,
    required TokenRefreshService tokenRefreshService,
  }) : _storage = storage,
       _tokenRefreshService = tokenRefreshService;

  String? get name => _name;
  String? get phone => _phone;
  String? get email => _email;

  bool get hasInfo => _name != null || _phone != null || _email != null;

  Future<void> loadFromToken() async {
    final result = await _tokenRefreshService.getValidAccessToken();
    if (result is Error) return;

    final result = await _profileService.getProfile(accessToken: token);
    switch (result) {
      case Ok(value: final profile):
        _name = profile.fullName;
        _phone = profile.phoneNumber;
        _email = profile.email;
        notifyListeners();
      case Error():
        break;
    }
    final token = (result as Ok<String>).value;
    _name = JwtUtils.extractFullName(token);
    _phone = JwtUtils.extractPhone(token);
    _email = JwtUtils.extractEmail(token);
    notifyListeners();
  }
}
