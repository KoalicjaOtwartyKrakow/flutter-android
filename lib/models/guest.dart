import 'package:flutter_android/models/failure.dart';
import 'package:json_annotation/json_annotation.dart';

import '../infrastructure/converters.dart';
import 'child_age.dart';

part 'guest.g.dart';

@JsonSerializable()
class Guest {
  String fullName;
  String email;
  String phoneNumber;
  int? peopleInGroup;
  int? adultMaleCount;
  int? adultFemaleCount;
  // @JsonKey(
  //   fromJson: childrenAgesFromString,
  //   toJson: nullableChildenAgesToString,
  // )
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


  Guest({
    required this.fullName,
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

  factory Guest.fromJson(Map<String, dynamic> json) =>
      _$GuestFromJson(json);
  Map<String, dynamic> toJson() => _$GuestToJson(this);
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

