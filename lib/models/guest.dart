import 'package:flutter_android/models/voivodeship.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

import '../infrastructure/converters.dart';

part 'guest.g.dart';

@JsonSerializable()
class Guest {

  @JsonKey(name: 'GuestId')
  String? id;

  @JsonKey(name: 'FULL_NAME')
  String fullName;

  @JsonKey(name: 'PHONE_NUMBER')
  String phoneNumber;

  @JsonKey(name: 'PEOPLE_IN_GROUP')
  String peopleInGroup;

  @JsonKey(name: 'ADULT_MALE_COUNT')
  String adultMaleCount;

  @JsonKey(name: 'ADULT_FEMALE_COUNT')
  String adultFemaleCount;

  @JsonKey(name: 'CHILDREN_COUNT')
  String childrenCount;

  @JsonKey(name: 'CHILDREN_AGES')
  String childrenAges;

  @JsonKey(name: 'HAVE_PETS')
  String havePets;

  @JsonKey(name: 'PETS_DESCRIPTION')
  String petsDescription;

  @JsonKey(name: 'SPECIAL_NEEDS')
  String specialNeeds;

  @JsonKey(name: 'HOW_LONG_TO_STAY')
  String howLongToStay;

  @JsonKey(
    name: 'CreationTime',
    fromJson: dateTimeFromString,
    toJson: _nullableDateTimeToString,
  )
  DateTime? createdAt;

  Guest({
    this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.peopleInGroup,
    required this.adultMaleCount,
    required this.adultFemaleCount,
    required this.childrenCount,
    required this.childrenAges,
    required this.havePets,
    required this.petsDescription,
    required this.specialNeeds,
    required this.howLongToStay,
    required this.createdAt,
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
