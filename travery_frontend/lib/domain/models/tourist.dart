import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'tourist.freezed.dart';
part 'tourist.g.dart';

/// Specialized user entity for customers who book services.
@freezed
class Tourist with _$Tourist {
  const factory Tourist({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'passport_number') String? passportNumber,

    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,

    @JsonKey(name: 'gender') TouristGender? gender,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    User? user,
  }) = _Tourist;

  factory Tourist.fromJson(Map<String, dynamic> json) =>
      _$TouristFromJson(json);
}

@JsonEnum()
enum TouristGender {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
  @JsonValue('OTHER')
  other,
}
