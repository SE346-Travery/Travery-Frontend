import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/utils/jwt_utils.dart';

class UserInfoProvider extends ChangeNotifier {
  final SecurityStorageService _storage;

  String? _name;
  String? _phone;
  String? _email;

  UserInfoProvider({required SecurityStorageService storage})
    : _storage = storage;

  String? get name => _name;
  String? get phone => _phone;
  String? get email => _email;

  bool get hasInfo => _name != null || _phone != null || _email != null;

  Future<void> loadFromToken() async {
    final token = await _storage.getAccessToken();
    if (token == null) return;

    _name = JwtUtils.extractFullName(token);
    _phone = JwtUtils.extractPhone(token);
    _email = JwtUtils.extractEmail(token);
    notifyListeners();
  }
}
