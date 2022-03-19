// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Guest _$GuestFromJson(Map<String, dynamic> json) => Guest(
      id: json['GuestId'] as String?,
      fullName: json['FULL_NAME'] as String,
      email: json['EMAIL'] as String,
      phoneNumber: json['PHONE_NUMBER'] as String,
      peopleInGroup: json['PEOPLE_IN_GROUP'] as int?,
      adultMaleCount: json['ADULT_MALE_COUNT'] as int?,
      adultFemaleCount: json['ADULT_FEMALE_COUNT'] as int?,
      children:
          (json['CHILDREN'] as List<dynamic>?)?.map((e) => e as int).toList(),
      havePets: json['HAVE_PETS'] as bool?,
      petsDescription: json['PETS_DESCRIPTION'] as String?,
      specialNeeds: json['SPECIAL_NEEDS'] as String?,
      foodAllergies: json['FOOD_ALLERGIES'] as bool?,
      meatFreeDiet: json['MEAT_FREE_DIET'] as bool?,
      glutenFreeDiet: json['GLUTEN_FREE_DIET'] as bool?,
      lactoseFreeDiet: json['LACTOSE_FREE_DIET'] as bool?,
      financeStatus: json['FINANCE_STATUS'] as String?,
      howLongToStay: json['HOW_LONG_TO_STAY'] as String?,
      desiredDestination: json['DESIRED_DESTINATION'] as String?,
      priorityStatus:
          $enumDecodeNullable(_$PriorityStatusEnumMap, json['PRIORITY_STATUS']),
      priorityDate: dateTimeFromString(json['PRIORITY_DATE'] as String),
    );

Map<String, dynamic> _$GuestToJson(Guest instance) => <String, dynamic>{
      'GuestId': instance.id,
      'FULL_NAME': instance.fullName,
      'EMAIL': instance.email,
      'PHONE_NUMBER': instance.phoneNumber,
      'PEOPLE_IN_GROUP': instance.peopleInGroup,
      'ADULT_MALE_COUNT': instance.adultMaleCount,
      'ADULT_FEMALE_COUNT': instance.adultFemaleCount,
      'CHILDREN': instance.children,
      'HAVE_PETS': instance.havePets,
      'PETS_DESCRIPTION': instance.petsDescription,
      'SPECIAL_NEEDS': instance.specialNeeds,
      'FOOD_ALLERGIES': instance.foodAllergies,
      'MEAT_FREE_DIET': instance.meatFreeDiet,
      'GLUTEN_FREE_DIET': instance.glutenFreeDiet,
      'LACTOSE_FREE_DIET': instance.lactoseFreeDiet,
      'FINANCE_STATUS': instance.financeStatus,
      'HOW_LONG_TO_STAY': instance.howLongToStay,
      'DESIRED_DESTINATION': instance.desiredDestination,
      'PRIORITY_STATUS': _$PriorityStatusEnumMap[instance.priorityStatus],
      'PRIORITY_DATE': nullableDateTimeToString(instance.priorityDate),
    };

const _$PriorityStatusEnumMap = {
  PriorityStatus.accommodation_not_needed: 'accommodation_not_needed',
  PriorityStatus.accommodation_found: 'accommodation_found',
  PriorityStatus.en_route_ukraine: 'en_route_ukraine',
  PriorityStatus.en_route_poland: 'en_route_poland',
  PriorityStatus.in_krakow: 'in_krakow',
  PriorityStatus.in_crisis_point: 'in_crisis_point',
};
