class AuthResponseModel {
  final String accessToken;
  final String refreshToken;

  AuthResponseModel({required this.accessToken, required this.refreshToken});

  //tìm token trong json và trả về AuthResponseModel
  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    // Spring Boot backend trả về wrapper có dạng:
    // { "data": { "accessToken": "...", "refreshToken": "..." }, "message": "...", "httpStatus": 200 }
    final data = json['data'] ?? json;

    return AuthResponseModel(
      accessToken: data['accessToken'],
      refreshToken: data['refreshToken'],
    );
  }
}
