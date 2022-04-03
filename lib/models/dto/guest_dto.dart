import 'package:json_annotation/json_annotation.dart';

import '../../infrastructure/converters.dart';
import '../child_age.dart';

part 'guest_dto.g.dart';

@JsonSerializable()
class GuestDto {
  String fullName;
  String email;
  String phoneNumber;
  int? peopleInGroup;
  int? adultMaleCount;
  int? adultFemaleCount;
  List<ChildAge>? children;
  bool? havePets;
  String? petsDescription;
  String? specialNeeds;
  String? foodAllergies;
  bool? meatFreeDiet;
  bool? glutenFreeDiet;
  bool? lactoseFreeDiet;
  String? financeStatus;
  String? howLongToStay;
  String? desiredDestination;
  PriorityStatus? priorityStatus;
  @JsonKey(
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  DateTime? priorityDate;
  VerificationStatus? verificationStatus;
  String? id;
  @JsonKey(
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  DateTime? createdAt;
  @JsonKey(
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  DateTime? updatedAt;


  GuestDto(
    {required this.fullName,
    required this.email,
    required this.phoneNumber,
    this.peopleInGroup,
    this.adultMaleCount,
    this.adultFemaleCount,
    this.children,
    this.havePets,
    this.petsDescription,
    this.specialNeeds,
    this.foodAllergies,
    this.meatFreeDiet,
    this.glutenFreeDiet,
    this.lactoseFreeDiet,
    this.financeStatus,
    this.howLongToStay,
    this.desiredDestination,
    this.priorityStatus,
    this.priorityDate,
    this.verificationStatus,
    this.id,
    this.createdAt,
    this.updatedAt
  });

  bool isValidated() {
    if (validateFullName(fullName) == null
        && validatePhoneNumber(phoneNumber) == null
        && validateEmail(email) == null
    )
    {
      return true;
    }
    return false;
  }

  static String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    final phoneNumberPattern = RegExp(r'^\+\d{1,2} ?)?\d{3}[- \.]?\d{3}[- \.]?\d{3}$');
    if (phoneNumberPattern.hasMatch(value)){
      return 'Incorrect phone number';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email address is required';
    }
    if (!value.contains('@')) {
      return 'Incorrect email address';
    }
    return null;
  }
  factory GuestDto.fromJson(Map<String, dynamic> json) => _$GuestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GuestDtoToJson(this);
}

enum PriorityStatus {
  accommodation_not_needed,
  accommodation_found,
  en_route_ukraine,
  en_route_poland,
  in_krakow,
  in_crisis_point
}

enum VerificationStatus {
  created,
  verified,
  rejected
}
