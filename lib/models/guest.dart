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

  @JsonKey(name: 'EMAIL')
  String email;

  @JsonKey(name: 'PEOPLE_IN_GROUP')
  String? peopleInGroup;

  @JsonKey(name: 'ADULT_MALE_COUNT')
  int? adultMaleCount;

  @JsonKey(name: 'ADULT_FEMALE_COUNT')
  int? adultFemaleCount;

  @JsonKey(name: 'CHILDREN_COUNT')
  int? childrenCount;

  @JsonKey(name: 'CHILDREN_AGES')
  List<int>? childrenAges;

  @JsonKey(name: 'HAVE_PETS')
  bool? havePets;

  @JsonKey(name: 'PETS_DESCRIPTION')
  String? petsDescription;

  @JsonKey(name: 'SPECIAL_NEEDS')
  String? specialNeeds;

  @JsonKey(name: 'HOW_LONG_TO_STAY')
  String? howLongToStay;

  @JsonKey(name: 'FINANCE_STATUS')
  String? financeStatus;

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
    required this.email,
    this.peopleInGroup,
    this.adultMaleCount,
    this.adultFemaleCount,
    this.childrenCount,
    this.childrenAges,
    this.havePets,
    this.petsDescription,
    this.specialNeeds,
    this.howLongToStay,
    this.financeStatus,
    this.createdAt,
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
