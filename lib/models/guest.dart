import 'package:json_annotation/json_annotation.dart';

import '../infrastructure/converters.dart';

part 'guest.g.dart';

@JsonSerializable()
class Guest {

  @JsonKey(name: 'GuestId')
  String? id;

  @JsonKey(name: 'FULL_NAME')
  String fullName;

  @JsonKey(name: 'EMAIL')
  String email;

  @JsonKey(name: 'PHONE_NUMBER')
  String phoneNumber;

  @JsonKey(name: 'PEOPLE_IN_GROUP')
  int? peopleInGroup;

  @JsonKey(name: 'ADULT_MALE_COUNT')
  int? adultMaleCount;

  @JsonKey(name: 'ADULT_FEMALE_COUNT')
  int? adultFemaleCount;

  @JsonKey(name: 'CHILDREN')
  List<int>? children;

  @JsonKey(name: 'HAVE_PETS')
  bool? havePets;

  @JsonKey(name: 'PETS_DESCRIPTION')
  String? petsDescription;

  @JsonKey(name: 'SPECIAL_NEEDS')
  String? specialNeeds;

  @JsonKey(name: 'FOOD_ALLERGIES')
  bool? foodAllergies;

    @JsonKey(name: 'MEAT_FREE_DIET')
  bool? meatFreeDiet;

  @JsonKey(name: 'GLUTEN_FREE_DIET')
  bool? glutenFreeDiet;

  @JsonKey(name: 'LACTOSE_FREE_DIET')
  bool? lactoseFreeDiet;

  @JsonKey(name: 'FINANCE_STATUS')
  String? financeStatus;

  @JsonKey(name: 'HOW_LONG_TO_STAY')
  String? howLongToStay;

  @JsonKey(name: 'DESIRED_DESTINATION')
  String? desiredDestination;

  @JsonKey(name: 'PRIORITY_STATUS')
  PriorityStatus? priorityStatus;

  @JsonKey(
    name: 'PRIORITY_DATE',
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  DateTime? priorityDate;


  Guest({
    this.id,
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
    this.priorityDate
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