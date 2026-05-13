import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'tourist.freezed.dart';
part 'tourist.g.dart';
@freezed
class Tourist with _$Tourist {
  const factory Tourist({
    String? id,

    required String userId,

    String? passportNumber,

    DateTime? dateOfBirth,

    TouristGender? gender,

    DateTime? createdAt,

    DateTime? updatedAt,
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
