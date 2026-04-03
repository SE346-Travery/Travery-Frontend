import 'package:travery_frontend/data/model/auth_response_model.dart';
import 'package:travery_frontend/config/app_config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class AuthService {
  Future<AuthResponseModel> login(String email, String password) async {
    // gọi API qua phương thức POST
    final response = await http.post(
      Uri.parse('${AppConfig.baseUrl}/auth/login'),
      headers: {
        'Content-Type': 'application/json', //báo sever biết kiểu dữ liệu sắp gửi là json
      },
      body: jsonEncode({ // Chuyển đổi dữ liệu sang json
        'email': email,
        'password': password,
      }),
    );
    // Nếu kết nối thành công (status code 200) thì trả về AuthResponseModel từ sever
    if (response.statusCode == 200) {
      return AuthResponseModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to login');
    }
  }
}