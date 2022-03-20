// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Guest _$GuestFromJson(Map<String, dynamic> json) => Guest(
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      peopleInGroup: json['peopleInGroup'] as int?,
      adultMaleCount: json['adultMaleCount'] as int?,
      adultFemaleCount: json['adultFemaleCount'] as int?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => ChildAge.fromJson(e as Map<String, dynamic>))
          .toList(),
      havePets: json['havePets'] as bool?,
      petsDescription: json['petsDescription'] as String?,
      specialNeeds: json['specialNeeds'] as String?,
      foodAllergies: json['foodAllergies'] as String?,
      meatFreeDiet: json['meatFreeDiet'] as bool?,
      glutenFreeDiet: json['glutenFreeDiet'] as bool?,
      lactoseFreeDiet: json['lactoseFreeDiet'] as bool?,
      financeStatus: json['financeStatus'] as String?,
      howLongToStay: json['howLongToStay'] as String?,
      desiredDestination: json['desiredDestination'] as String?,
      priorityStatus:
          $enumDecodeNullable(_$PriorityStatusEnumMap, json['priorityStatus']),
      priorityDate: dateTimeFromString(json['priorityDate'] as String),
      verificationStatus: $enumDecodeNullable(
          _$VerificationStatusEnumMap, json['verificationStatus']),
      id: json['id'] as String?,
      createdAt: dateTimeFromString(json['createdAt'] as String),
      updatedAt: dateTimeFromString(json['updatedAt'] as String),
    );

Map<String, dynamic> _$GuestToJson(Guest instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'peopleInGroup': instance.peopleInGroup,
      'adultMaleCount': instance.adultMaleCount,
      'adultFemaleCount': instance.adultFemaleCount,
      'children': instance.children,
      'havePets': instance.havePets,
      'petsDescription': instance.petsDescription,
      'specialNeeds': instance.specialNeeds,
      'foodAllergies': instance.foodAllergies,
      'meatFreeDiet': instance.meatFreeDiet,
      'glutenFreeDiet': instance.glutenFreeDiet,
      'lactoseFreeDiet': instance.lactoseFreeDiet,
      'financeStatus': instance.financeStatus,
      'howLongToStay': instance.howLongToStay,
      'desiredDestination': instance.desiredDestination,
      'priorityStatus': _$PriorityStatusEnumMap[instance.priorityStatus],
      'priorityDate': nullableDateTimeToString(instance.priorityDate),
      'verificationStatus':
          _$VerificationStatusEnumMap[instance.verificationStatus],
      'id': instance.id,
      'createdAt': nullableDateTimeToString(instance.createdAt),
      'updatedAt': nullableDateTimeToString(instance.updatedAt),
    };

const _$PriorityStatusEnumMap = {
  PriorityStatus.accommodation_not_needed: 'accommodation_not_needed',
  PriorityStatus.accommodation_found: 'accommodation_found',
  PriorityStatus.en_route_ukraine: 'en_route_ukraine',
  PriorityStatus.en_route_poland: 'en_route_poland',
  PriorityStatus.in_krakow: 'in_krakow',
  PriorityStatus.in_crisis_point: 'in_crisis_point',
};

const _$VerificationStatusEnumMap = {
  VerificationStatus.created: 'created',
  VerificationStatus.verified: 'verified',
  VerificationStatus.rejected: 'rejected',
};

ChildAge _$ChildAgeFromJson(Map<String, dynamic> json) =>
    ChildAge()..age = json['age'] as int?;

Map<String, dynamic> _$ChildAgeToJson(ChildAge instance) => <String, dynamic>{
      'age': instance.age,
    };
