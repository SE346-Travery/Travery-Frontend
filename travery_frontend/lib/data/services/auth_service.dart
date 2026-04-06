import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/model/auth_response_model.dart';
import 'package:travery_frontend/config/app_config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthService {
  Future<AuthResponseModel> loginViaEmail(String email, String password) async {
    // gọi API qua phương thức POST
    final response = await http.post(
      Uri.parse('${AppConfig.baseUrl}/auth/login'),
      headers: {
        'Content-Type':
            'application/json', //báo sever biết kiểu dữ liệu sắp gửi là json
      },
      body: jsonEncode({
        // Chuyển đổi dữ liệu sang json
        'email': email,
        'password': password,
      }),
    );
    debugPrint('Email, password in response: ${response.body}');
    // Nếu kết nối thành công (status code 200) thì trả về AuthResponseModel từ sever
    if (response.statusCode == 200) {
      return AuthResponseModel.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 401 || response.statusCode == 404) {
      final errorData = jsonDecode(response.body);
      throw Exception(
        errorData['message'] ?? 'Email hoặc mật khẩu không đúng.',
      );
    } else {
      throw Exception('Lỗi server: ${response.statusCode}');
    }
  }

  Future<void> register(
    String email,
    String password,
    String confirmPassword,
    String fullName,
  ) async {
    // gọi API qua phương thức POST
    final response = await http.post(
      Uri.parse('${AppConfig.baseUrl}/auth/signup'),
      headers: {
        'Content-Type':
            'application/json', //báo sever biết kiểu dữ liệu sắp gửi là json
      },
      body: jsonEncode({
        // Chuyển đổi dữ liệu sang json
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
        'fullName': fullName,
      }),
    );
    // Nếu kết nối thành công (status code 200)
    if (response.statusCode == 200 || response.statusCode == 201) {
      return; // Thành công, nhưng backend không trả về token ở api này
    } else if (response.statusCode == 400 ||
        response.statusCode == 401 ||
        response.statusCode == 404) {
      final errorData = jsonDecode(response.body);
      throw Exception(errorData['message'] ?? 'Lỗi đăng ký.');
    } else {
      throw Exception('Lỗi server: ${response.statusCode}');
    }
  }

  Future<void> forgotPassword(String email) async {
    final response = await http.post(
      Uri.parse('${AppConfig.baseUrl}/auth/forgot-password'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email}),
    );
    if (response.statusCode != 200) {
      final errorData = jsonDecode(response.body);
      throw Exception(
        errorData['message'] ??
            'Lỗi khôi phục mật khẩu: ${response.statusCode}',
      );
    }
  }

  Future<void> verifyOtp(String email, String otp) async {
    final response = await http.post(
      Uri.parse('${AppConfig.baseUrl}/auth/verify-otp'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'otp': otp}),
    );
    if (response.statusCode != 200) {
      final errorData = jsonDecode(response.body);
      throw Exception(errorData['message'] ?? 'Mã OTP không hợp lệ.');
    }
  }

  Future<void> resendOtp(String email) async {
    final response = await http.post(
      Uri.parse('${AppConfig.baseUrl}/auth/resend-otp'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email}),
    );
    if (response.statusCode != 200) {
      final errorData = jsonDecode(response.body);
      throw Exception(
        errorData['message'] ?? 'Lỗi gửi lại OTP: ${response.statusCode}',
      );
    }
  }

  Future<void> logout() async {
    final response = await http.post(
      Uri.parse('${AppConfig.baseUrl}/auth/logout'),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode != 200 && response.statusCode != 204) {
      try {
        final errorData = jsonDecode(response.body);
        throw Exception(
          errorData['message'] ?? 'Lỗi đăng xuất: ${response.statusCode}',
        );
      } catch (e) {
        throw Exception('Lỗi đăng xuất: ${response.statusCode}');
      }
    }
  }
}
