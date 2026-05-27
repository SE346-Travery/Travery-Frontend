import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_response.freezed.dart';
part 'destination_response.g.dart';

@freezed
class DestinationResponse with _$DestinationResponse {
  const factory DestinationResponse({
    required String id,
    required String code,
    required String name,
    required String region,
    String? imageUrl,
    String? description,
  }) = _DestinationResponse;

  factory DestinationResponse.fromJson(Map<String, dynamic> json) =>
      _$DestinationResponseFromJson(json);
}
