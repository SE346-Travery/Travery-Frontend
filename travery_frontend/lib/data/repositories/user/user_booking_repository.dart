import 'dart:convert';
import 'dart:io';

import 'package:travery_frontend/config/app_config.dart';
import 'package:travery_frontend/data/seed_models/booking_detail/booking_detail_model.dart';
import 'package:travery_frontend/data/services/api/model/booking/cancel_booking_request/cancel_booking_request.dart';
import 'package:travery_frontend/data/services/api/model/booking/cancel_booking_response/cancel_booking_response.dart';
import 'package:travery_frontend/data/services/api/model/booking/user_booking_list_response/user_booking_list_response.dart';
import 'package:travery_frontend/data/services/booking/booking_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class UserBookingRepository extends BookingService {
  UserBookingRepository({
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
  Future<Result<BookingDetailModel?>> getBookingDetail(String bookingId) async {
    final client = HttpClient();
    client.connectionTimeout = const Duration(milliseconds: AppConfig.timeout);

    try {
      final request = await client.getUrl(
        Uri.https(AppConfig.baseUrl, '/api/v1/bookings/$bookingId'),
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
        final data = jsonMap['data'] as Map<String, dynamic>?;
        if (data == null) return const Result.ok(null);

        final statusMap = {
          'PENDING': 'Đang chờ',
          'PAID': 'Đã thanh toán',
          'CHECKED_IN': 'Đã check-in',
          'CHECKED_OUT': 'Đã check-out',
          'CANCELLED': 'Đã hủy',
        };

        final members =
            (data['members'] as List<dynamic>?)
                ?.map((m) => _memberFromJson(m as Map<String, dynamic>))
                .toList() ??
            [];

        return Result.ok(
          BookingDetailModel(
            bookingId: data['id'] as String,
            tourName: data['tourName'] as String? ?? '',
            tourImageUrl: null,
            totalPrice: (data['totalPrice'] as num?)?.toDouble() ?? 0,
            departureDate: _parseDate(data['startDate'] as String?),
            guestCount: members.length,
            paymentMethod: data['paymentMethod'] as String?,
            status:
                statusMap[data['status'] as String? ?? ''] ??
                data['status'] as String? ??
                '',
            refundPolicy: RefundPolicy(
              tiers: [
                RefundTier(
                  label: 'Trước ngày khởi hành',
                  description: 'Hoàn 100%',
                  refundPercentage: 100,
                  startDate: null,
                  endDate: _parseDate(data['startDate'] as String?),
                ),
              ],
              lastFreeCancellationDate: _parseDate(
                data['startDate'] as String?,
              ),
            ),
          ),
        );
      } else {
        final errorMsg = await _extractErrorMessage(
          response,
          'Lấy chi tiết booking thất bại',
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
  Future<Result<UserBookingPageData>> getMyBookings({
    String? status,
    int page = 0,
    int size = 20,
  }) async {
    final client = HttpClient();
    client.connectionTimeout = const Duration(milliseconds: AppConfig.timeout);

    try {
      final queryParams = <String, String>{
        'page': page.toString(),
        'size': size.toString(),
      };
      if (status != null && status.isNotEmpty) {
        queryParams['status'] = status;
      }

      final request = await client.getUrl(
        Uri.parse(
          '${AppConfig.baseUrl}/api/v1/bookings/me',
        ).replace(queryParameters: queryParams),
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
        return Result.ok(UserBookingPageData.fromJson(jsonMap));
      } else {
        final errorMsg = await _extractErrorMessage(
          response,
          'Lấy danh sách booking thất bại',
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
  Future<Result<CancelData>> cancelBooking({
    required String bookingId,
    required CancelBookingRequest request,
  }) async {
    final client = HttpClient();
    client.connectionTimeout = const Duration(milliseconds: AppConfig.timeout);

    try {
      final requestObj = await client.postUrl(
        Uri.https(AppConfig.baseUrl, '/api/v1/bookings/$bookingId/cancel'),
      );
      requestObj.headers.set(
        HttpHeaders.contentTypeHeader,
        ContentType.json.value,
      );
      await _setBearerAuth(requestObj);
      requestObj.write(jsonEncode(request));

      final response = await requestObj.close();

      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final jsonMap = jsonDecode(stringData) as Map<String, dynamic>;
        final dataMap = jsonMap['data'] as Map<String, dynamic>? ?? {};
        return Result.ok(
          CancelData(
            bookingId: dataMap['bookingId'] as String? ?? '',
            bookingStatus: dataMap['bookingStatus'] as String? ?? '',
            refundAmount: (dataMap['refundAmount'] as num?)?.toDouble() ?? 0,
            refundPercentage:
                (dataMap['refundPercentage'] as num?)?.toDouble() ?? 0,
            refundStatus: dataMap['refundStatus'] as String? ?? '',
            refundMessage: dataMap['refundMessage'] as String? ?? '',
          ),
        );
      } else {
        final errorMsg = await _extractErrorMessage(
          response,
          'Hủy booking thất bại',
        );
        return Result.error(HttpException(errorMsg));
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }

  DateTime _parseDate(String? dateStr) {
    if (dateStr == null || dateStr.isEmpty) return DateTime.now();
    try {
      return DateTime.parse(dateStr);
    } catch (_) {
      return DateTime.now();
    }
  }

  _BookingMember _memberFromJson(Map<String, dynamic> json) {
    return _BookingMember(
      fullName: json['fullName'] as String? ?? '',
      identityNumber: json['identityNumber'] as String? ?? '',
      dateOfBirth: json['dateOfBirth'] as String? ?? '',
      memberType: json['memberType'] as String? ?? 'ADULT',
    );
  }
}

class _BookingMember {
  final String fullName;
  final String identityNumber;
  final String dateOfBirth;
  final String memberType;

  _BookingMember({
    required this.fullName,
    required this.identityNumber,
    required this.dateOfBirth,
    required this.memberType,
  });
}
