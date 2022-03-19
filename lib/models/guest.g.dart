// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Guest _$GuestFromJson(Map<String, dynamic> json) => Guest(
      id: json['GuestId'] as String?,
      fullName: json['FULL_NAME'] as String,
      phoneNumber: json['PHONE_NUMBER'] as String,
      email: json['EMAIL'] as String,
      peopleInGroup: json['PEOPLE_IN_GROUP'] as int?,
      adultMaleCount: json['ADULT_MALE_COUNT'] as int?,
      adultFemaleCount: json['ADULT_FEMALE_COUNT'] as int?,
      childrenCount: json['CHILDREN_COUNT'] as int?,
      childrenAges: (json['CHILDREN_AGES'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      havePets: json['HAVE_PETS'] as bool?,
      petsDescription: json['PETS_DESCRIPTION'] as String?,
      specialNeeds: json['SPECIAL_NEEDS'] as String?,
      howLongToStay: json['HOW_LONG_TO_STAY'] as String?,
      financeStatus: json['FINANCE_STATUS'] as String?,
      createdAt: dateTimeFromString(json['CreationTime'] as String),
    );

Map<String, dynamic> _$GuestToJson(Guest instance) => <String, dynamic>{
      'GuestId': instance.id,
      'FULL_NAME': instance.fullName,
      'PHONE_NUMBER': instance.phoneNumber,
      'EMAIL': instance.email,
      'PEOPLE_IN_GROUP': instance.peopleInGroup,
      'ADULT_MALE_COUNT': instance.adultMaleCount,
      'ADULT_FEMALE_COUNT': instance.adultFemaleCount,
      'CHILDREN_COUNT': instance.childrenCount,
      'CHILDREN_AGES': instance.childrenAges,
      'HAVE_PETS': instance.havePets,
      'PETS_DESCRIPTION': instance.petsDescription,
      'SPECIAL_NEEDS': instance.specialNeeds,
      'HOW_LONG_TO_STAY': instance.howLongToStay,
      'FINANCE_STATUS': instance.financeStatus,
      'CreationTime': _nullableDateTimeToString(instance.createdAt),
    };
