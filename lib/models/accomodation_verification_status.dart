import 'package:json_annotation/json_annotation.dart';

enum AccomodationVerificationStatus {
  @JsonValue('added')
  added,
  @JsonValue('phone_verified')
  phoneVerified,
  @JsonValue('in_person_verified')
  inPersonVerified
}
