import 'dart:io';

import 'package:travery_frontend/data/services/api/model/authentication/forgot_password_request/forgot_password_request.dart';
import 'dart:convert';

import 'package:travery_frontend/data/services/api/model/authentication/login_request/login_request.dart';
import 'package:travery_frontend/data/services/api/model/authentication/login_response/login_response.dart';
import 'package:travery_frontend/data/services/api/model/authentication/logout_request/logout_request.dart';
import 'package:travery_frontend/data/services/api/model/authentication/refresh_request/refresh_request.dart';
import 'package:travery_frontend/data/services/api/model/authentication/refresh_response/refresh_reponse.dart';
import 'package:travery_frontend/data/services/api/model/authentication/resend_otp_request/resend_otp_request.dart';
import 'package:travery_frontend/data/services/api/model/authentication/reset_password_request/reset_password_request.dart';
import 'package:travery_frontend/data/services/api/model/authentication/signup_request/signup_request.dart';
import 'package:travery_frontend/data/services/api/model/authentication/verify_otp_request/verify_otp_request.dart';

import 'package:travery_frontend/utils/core_result.dart';

class AuthService {
  AuthService({String? host, int? port, HttpClient Function()? clientFactory})
    : _host = host ?? '192.168.1.63',
      _port = port ?? 8080,
      _clientFactory = clientFactory ?? HttpClient.new;

  final String _host;
  final int _port;
  final HttpClient Function() _clientFactory;

  Future<Result<LoginResponse>> loginViaEmail(LoginRequest loginRequest) async {
    final client = _clientFactory();

    try {
      final request = await client.post(_host, _port, '/auth/login');
      // set header Content-Type: application/json
      // Báo cho sever biết file sắp gửi là json
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      request.write(jsonEncode(loginRequest));
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final jsonMap = jsonDecode(stringData) as Map<String, dynamic>;
        final data = jsonMap['data'] as Map<String, dynamic>;
        return Result.ok(LoginResponse.fromJson(data));
      } else {
        return const Result.error(HttpException("Login Error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> signup(SignupRequest signupRequest) async {
    final client = _clientFactory();

    try {
      final request = await client.post(_host, _port, '/auth/signup');
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      request.write(jsonEncode(signupRequest));
      final response = await request.close();

      if (response.statusCode == 200) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException("Signup Error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> forgotPassword(
    ForgotPasswordRequest forgotPasswordRequest,
  ) async {
    final client = _clientFactory();

    try {
      final request = await client.post(_host, _port, '/auth/forgot-password');
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      request.write(jsonEncode(forgotPasswordRequest));
      final response = await request.close();

      if (response.statusCode == 200) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException("Forgot Password Error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> verifyOtp(VerifyOtpRequest verifyOtpRequest) async {
    final client = _clientFactory();

    try {
      final request = await client.post(_host, _port, '/auth/verify-otp');
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      request.write(jsonEncode(verifyOtpRequest));
      final response = await request.close();

      if (response.statusCode == 200) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException("Verify OTP Error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> resendOtp(ResendOtpRequest resendOtpRequest) async {
    final client = _clientFactory();

    try {
      final request = await client.post(_host, _port, '/auth/resend-otp');
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      request.write(jsonEncode(resendOtpRequest));
      final response = await request.close();

      if (response.statusCode == 200) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException("Resend OTP Error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> resetPassword(
    ResetPasswordRequest resetPasswordRequest,
  ) async {
    final client = _clientFactory();

    try {
      final request = await client.post(_host, _port, '/auth/reset-password');
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      request.write(jsonEncode(resetPasswordRequest));
      final response = await request.close();

      if (response.statusCode == 200) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException("Reset Password Error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<void>> logout(LogoutRequest logoutRequest) async {
    final client = _clientFactory();

    try {
      final request = await client.post(_host, _port, '/auth/logout');
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      request.write(jsonEncode(logoutRequest));
      final response = await request.close();

      if (response.statusCode == 200) {
        return const Result.ok(null);
      } else {
        return const Result.error(HttpException("Logout Error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  Future<Result<RefreshResponse>> refresh(RefreshRequest refreshRequest) async {
    final client = _clientFactory();

    try {
      final request = await client.post(_host, _port, '/auth/refresh');
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      request.write(jsonEncode(refreshRequest));
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final jsonMap = jsonDecode(stringData) as Map<String, dynamic>;
        final data = jsonMap['data'] as Map<String, dynamic>;
        return Result.ok(RefreshResponse.fromJson(data));
      } else {
        return const Result.error(HttpException("Refresh Error"));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }
}
