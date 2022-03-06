import 'package:flutter_android/models/voivodeship.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

import '../infrastructure/converters.dart';

part 'guest.g.dart';

@JsonSerializable()
class Guest {

  @JsonKey(name: 'GuestId')
  String? id;

  @JsonKey(name: 'NAME')
  String name;

  @JsonKey(name: 'SURNAME')
  String surname;

  @JsonKey(name: 'PHONENUMBER')
  String phoneNumber;

  @JsonKey(
    name: 'CreationTime',
    fromJson: dateTimeFromString,
    toJson: _nullableDateTimeToString,
  )
  DateTime? createdAt;

  @JsonKey(name: 'DESCRIPTION')
  String description;

  Guest({
    this.id,
    required this.name,
    required this.surname,
    required this.phoneNumber,
    required this.createdAt,
    required this.description,
  });

  factory Guest.fromJson(Map<String, dynamic> json) =>
      _$GuestFromJson(json);
  Map<String, dynamic> toJson() => _$GuestToJson(this);
}

String? _nullableDateTimeToString(DateTime? dateTime) {
  if (dateTime != null) {
    return dateTimeToString(dateTime);
  }
  return null;
}
