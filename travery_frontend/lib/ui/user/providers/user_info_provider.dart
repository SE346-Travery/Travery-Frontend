import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/api/profile_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class UserInfoProvider extends ChangeNotifier {
  UserInfoProvider({
    required SecurityStorageService storage,
    ProfileService? profileService,
  }) : _storage = storage,
       _profileService = profileService ?? ProfileService();

  final SecurityStorageService _storage;
  final ProfileService _profileService;

  String? _name;
  String? _phone;
  String? _email;

  String? get name => _name;
  String? get phone => _phone;
  String? get email => _email;

  bool get hasInfo => _name != null || _phone != null || _email != null;

  Future<void> loadFromToken() async {
    final token = await _storage.getAccessToken();
    if (token == null) return;

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
  }
}
