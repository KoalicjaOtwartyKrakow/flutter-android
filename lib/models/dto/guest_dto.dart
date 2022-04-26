// ignore_for_file: constant_identifier_names

import 'package:email_validator/email_validator.dart';
import 'package:flutter_android/models/domain/priority_status.dart';
import 'package:flutter_android/models/domain/verification_status.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../infrastructure/converters.dart';
import 'accommodation_unit_dto.dart';

part 'guest_dto.g.dart';

@JsonSerializable()
class GuestDto {
  final String fullName;
  final String email;
  final String phoneNumber;
  final bool? isAgent;
  final String? documentNumber;
  final int? peopleInGroup;
  final int? adultMaleCount;
  final int? adultFemaleCount;
  final List<int>? childrenAges;
  final bool? havePets;
  final String? petsDescription;
  final String? specialNeeds;
  final String? foodAllergies;
  final bool? meatFreeDiet;
  final bool? glutenFreeDiet;
  final bool? lactoseFreeDiet;
  final String? financeStatus;
  final String? howLongToStay;
  final String? desiredDestination;
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final PriorityStatus? priorityStatus;
  @JsonKey(
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  final DateTime? priorityDate;
  final String? accommodationUnitId;
  final String? claimedById;
  final String? staffComments;
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final VerificationStatus? verificationStatus;
  final String? guid;
  @JsonKey(
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  final DateTime? createdAt;
  @JsonKey(
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  final DateTime? updatedAt;
  final String? systemComments;
  final AccommodationUnitDto? accommodationUnit;
  final String? claimedBy;
  @JsonKey(
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  final DateTime? claimedAt;

  const GuestDto(
    this.fullName,
    this.email,
    this.phoneNumber,
    this.isAgent,
    this.documentNumber,
    this.peopleInGroup,
    this.adultMaleCount,
    this.adultFemaleCount,
    this.childrenAges,
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
    this.accommodationUnitId,
    this.claimedById,
    this.staffComments,
    this.verificationStatus,
    this.guid,
    this.createdAt,
    this.updatedAt,
    this.systemComments,
    this.accommodationUnit,
    this.claimedBy,
    this.claimedAt,
  );

  bool isValidated() {
    if (validateFullName(fullName) == null &&
        validatePhoneNumber(phoneNumber) == null &&
        validateEmail(email) == null) {
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
    final phoneNumberPattern = RegExp(r'^(\+\d{1,2} ?)?\d{3}[- \.]?\d{3}[- \.]?\d{3}$');
    if (!phoneNumberPattern.hasMatch(value)) {
      return 'Incorrect phone number';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email address is required';
    }
    if (!EmailValidator.validate(value)) {
      return 'Incorrect email address';
    }
    return null;
  }

  factory GuestDto.fromJson(Map<String, dynamic> json) => _$GuestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GuestDtoToJson(this);
}
