import 'dart:convert';
import 'dart:io';

import 'package:travery_frontend/config/app_config.dart';
import 'package:travery_frontend/utils/core_result.dart';

/// HTTP service covering all available admin-facing API endpoints.
///
/// Pattern mirrors [CoordinatorApiService]: each method takes an [accessToken]
/// to satisfy the `Authorization: Bearer <token>` requirement.
class AdminApiService {
  AdminApiService({String? host, HttpClient Function()? clientFactory})
    : _host = host ?? AppConfig.baseUrl,
      _clientFactory = clientFactory ?? HttpClient.new;

  final String _host;
  final HttpClient Function() _clientFactory;

  // ── Helpers ────────────────────────────────────────────────────────────────

  Future<String> _extractErrorMessage(
    HttpClientResponse response,
    String defaultMessage,
  ) async {
    try {
      final stringData = await response.transform(utf8.decoder).join();
      final jsonMap = jsonDecode(stringData) as Map<String, dynamic>;
      return jsonMap['message'] as String? ?? defaultMessage;
    } catch (_) {
      return defaultMessage;
    }
  }

  HttpClientRequest _addAuth(HttpClientRequest request, String accessToken) {
    request.headers.set(HttpHeaders.authorizationHeader, 'Bearer $accessToken');
    return request;
  }

  // ── Staff / Account ────────────────────────────────────────────────────────

  /// POST /api/v1/auth/create-staff
  ///
  /// Creates a new staff account (GUIDE, COORDINATOR, or RECEPTIONIST).
  /// [role] must be one of: GUIDE, COORDINATOR, RECEPTIONIST (uppercase).
  /// [department] optional; e.g. "TOUR", "HOTEL".
  /// [guideLicense] optional – required when role is GUIDE.
  /// [hotelId] optional – required when role is RECEPTIONIST.
  Future<Result<void>> createStaff({
    required String accessToken,
    required String email,
    required String password,
    required String fullName,
    required String role,
    String? department,
    String? guideLicense,
    String? hotelId,
  }) async {
    final client = _clientFactory();
    client.connectionTimeout = const Duration(milliseconds: AppConfig.timeout);

    try {
      final uri = Uri.https(_host, '/api/v1/auth/create-staff');
      final request = await client.postUrl(uri);
      _addAuth(request, accessToken);
      request.headers.contentType = ContentType.json;

      final bodyMap = <String, dynamic>{
        'email': email,
        'password': password,
        'fullName': fullName,
        'role': role,
      };
      if (department != null) bodyMap['department'] = department;
      if (guideLicense != null) bodyMap['guideLicense'] = guideLicense;
      if (hotelId != null) bodyMap['hotelId'] = hotelId;

      final body = jsonEncode(bodyMap);
      request.contentLength = utf8.encode(body).length;
      request.write(body);
      final response = await request.close();

      if (response.statusCode == 200 || response.statusCode == 201) {
        return const Result.ok(null);
      } else {
        final errorMsg = await _extractErrorMessage(
          response,
          'Không thể tạo tài khoản nhân viên',
        );
        return Result.error(HttpException(errorMsg));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  // ── Tours ──────────────────────────────────────────────────────────────────

  /// GET /api/v1/tours — paginated tour list.
  Future<Result<List<Map<String, dynamic>>>> getTours({
    required String accessToken,
    String? keyword,
    int page = 0,
    int size = 20,
  }) async {
    final client = _clientFactory();
    client.connectionTimeout = const Duration(milliseconds: AppConfig.timeout);

    try {
      final queryParams = <String, String>{
        'page': '$page',
        'size': '$size',
      };
      if (keyword != null && keyword.isNotEmpty) {
        queryParams['keyword'] = keyword;
      }

      final uri = Uri.https(_host, '/api/v1/tours', queryParams);
      final request = await client.getUrl(uri);
      _addAuth(request, accessToken);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final jsonMap = jsonDecode(stringData) as Map<String, dynamic>;
        final data = jsonMap['data'] as Map<String, dynamic>;
        final content = data['content'] as List<dynamic>? ?? [];
        return Result.ok(
          content.map((e) => e as Map<String, dynamic>).toList(),
        );
      } else {
        final errorMsg = await _extractErrorMessage(
          response,
          'Không thể tải danh sách tour',
        );
        return Result.error(HttpException(errorMsg));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  /// GET /api/v1/tours/{id} — tour detail.
  Future<Result<Map<String, dynamic>>> getTourById({
    required String accessToken,
    required String id,
  }) async {
    final client = _clientFactory();
    client.connectionTimeout = const Duration(milliseconds: AppConfig.timeout);

    try {
      final uri = Uri.https(_host, '/api/v1/tours/$id');
      final request = await client.getUrl(uri);
      _addAuth(request, accessToken);
      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final jsonMap = jsonDecode(stringData) as Map<String, dynamic>;
        return Result.ok(jsonMap['data'] as Map<String, dynamic>);
      } else {
        final errorMsg = await _extractErrorMessage(
          response,
          'Không thể tải thông tin tour',
        );
        return Result.error(HttpException(errorMsg));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }
}
