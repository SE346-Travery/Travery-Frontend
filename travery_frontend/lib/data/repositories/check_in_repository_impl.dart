import 'dart:convert';
import 'dart:io';

import 'package:travery_frontend/config/app_config.dart';
import 'package:travery_frontend/data/seed_models/check_in/check_in_passenger.dart';
import 'package:travery_frontend/data/repositories/check_in_repository.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CheckInRepositoryImpl implements CheckInRepository {
  CheckInRepositoryImpl({
    required SecurityStorageService securityStorageService,
  }) : _securityStorageService = securityStorageService;

  final SecurityStorageService _securityStorageService;

  Future<void> _setBearerAuth(HttpClientRequest request) async {
    final token = await _securityStorageService.getAccessToken();
    if (token != null) {
      request.headers.set(HttpHeaders.authorizationHeader, 'Bearer $token');
    }
  }

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

  @override
  Future<Result<CheckInPassengerList>> getPassengersByMission(
    String missionId,
  ) async {
    final client = HttpClient();
    client.connectionTimeout = const Duration(milliseconds: AppConfig.timeout);

    try {
      final request = await client.getUrl(
        Uri.https(
          AppConfig.baseUrl,
          '/api/v1/staff/guide/instances/$missionId/passengers',
          {'query': ''},
        ),
      );
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      await _setBearerAuth(request);

      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final jsonMap = jsonDecode(stringData) as Map<String, dynamic>;
        final data = jsonMap['data'] as List<dynamic>? ?? [];

        final passengers = data.map((e) {
          final map = e as Map<String, dynamic>;
          return _mapToCheckInPassenger(map, missionId);
        }).toList();

        final arrivedCount = passengers
            .where((p) => p.status == CheckInStatus.arrived)
            .length;

        return Result.ok(
          CheckInPassengerList(
            passengers: passengers,
            totalCount: passengers.length,
            arrivedCount: arrivedCount,
          ),
        );
      } else {
        final errorMsg = await _extractErrorMessage(
          response,
          'Lấy danh sách hành khách thất bại',
        );
        return Result.error(HttpException(errorMsg));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  @override
  Future<Result<CheckInPassengerList>> searchPassengers({
    required String missionId,
    required String query,
  }) async {
    final client = HttpClient();
    client.connectionTimeout = const Duration(milliseconds: AppConfig.timeout);

    try {
      final request = await client.getUrl(
        Uri.https(
          AppConfig.baseUrl,
          '/api/v1/staff/guide/instances/$missionId/passengers',
          {'query': query},
        ),
      );
      request.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      await _setBearerAuth(request);

      final response = await request.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final jsonMap = jsonDecode(stringData) as Map<String, dynamic>;
        final data = jsonMap['data'] as List<dynamic>? ?? [];

        final passengers = data.map((e) {
          final map = e as Map<String, dynamic>;
          return _mapToCheckInPassenger(map, missionId);
        }).toList();

        final arrivedCount = passengers
            .where((p) => p.status == CheckInStatus.arrived)
            .length;

        return Result.ok(
          CheckInPassengerList(
            passengers: passengers,
            totalCount: passengers.length,
            arrivedCount: arrivedCount,
          ),
        );
      } else {
        final errorMsg = await _extractErrorMessage(
          response,
          'Tìm kiếm hành khách thất bại',
        );
        return Result.error(HttpException(errorMsg));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  @override
  Future<Result<CheckInPassenger>> updatePassengerStatus({
    required String passengerId,
    required CheckInStatus status,
  }) async {
    final client = HttpClient();
    client.connectionTimeout = const Duration(milliseconds: AppConfig.timeout);

    try {
      final requestObj = await client.patchUrl(
        Uri.https(
          AppConfig.baseUrl,
          '/api/v1/staff/guide/instances/TODO/attendance',
        ),
      );
      requestObj.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      await _setBearerAuth(requestObj);

      // Map CheckInStatus to API attendance status
      final attendanceStatus = switch (status) {
        CheckInStatus.arrived => 'CHECKED_IN',
        CheckInStatus.pending => 'NOT_CHECKED',
        CheckInStatus.noShow => 'NO_SHOW',
      };

      requestObj.write(
        jsonEncode({
          'passengerIds': [passengerId],
          'status': attendanceStatus,
        }),
      );

      final response = await requestObj.close();

      if (response.statusCode == 200) {
        // Return updated passenger with new status
        return Result.ok(
          CheckInPassenger(
            id: passengerId,
            name: '',
            idNumber: '',
            email: '',
            type: PassengerType.adult,
            status: status,
            bookingId: '',
            missionId: '',
          ),
        );
      } else {
        final errorMsg = await _extractErrorMessage(
          response,
          'Cập nhật trạng thái thất bại',
        );
        return Result.error(HttpException(errorMsg));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  @override
  Future<Result<bool>> completeCheckIn({
    required String missionId,
    required List<String> arrivedPassengerIds,
  }) async {
    // Complete check-in is done via the attendance update endpoint
    // All passengers are already marked, so just return success
    return Result.ok(true);
  }

  CheckInPassenger _mapToCheckInPassenger(
    Map<String, dynamic> map,
    String missionId,
  ) {
    final memberType = map['memberType'] as String? ?? 'ADULT';
    final attendanceStatus =
        map['attendanceStatus'] as String? ?? 'NOT_CHECKED';

    CheckInStatus status;
    switch (attendanceStatus) {
      case 'CHECKED_IN':
        status = CheckInStatus.arrived;
        break;
      case 'NO_SHOW':
        status = CheckInStatus.noShow;
        break;
      default:
        status = CheckInStatus.pending;
    }

    PassengerType type;
    switch (memberType) {
      case 'CHILD':
        type = PassengerType.child;
        break;
      default:
        type = PassengerType.adult;
    }

    return CheckInPassenger(
      id: map['id'] as String? ?? '',
      name: map['fullName'] as String? ?? '',
      idNumber: map['identityNumber'] as String? ?? '',
      email: '', // API doesn't return email
      type: type,
      status: status,
      bookingId: '', // API doesn't return bookingId directly
      missionId: missionId,
    );
  }
}
