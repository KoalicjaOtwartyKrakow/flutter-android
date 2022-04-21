// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuestDto _$GuestDtoFromJson(Map<String, dynamic> json) => GuestDto(
      json['fullName'] as String,
      json['email'] as String,
      json['phoneNumber'] as String,
      json['isAgent'] as bool?,
      json['documentNumber'] as String?,
      json['peopleInGroup'] as int?,
      json['adultMaleCount'] as int?,
      json['adultFemaleCount'] as int?,
      (json['childrenAges'] as List<dynamic>?)?.map((e) => e as int).toList(),
      json['havePets'] as bool?,
      json['petsDescription'] as String?,
      json['specialNeeds'] as String?,
      json['foodAllergies'] as String?,
      json['meatFreeDiet'] as bool?,
      json['glutenFreeDiet'] as bool?,
      json['lactoseFreeDiet'] as bool?,
      json['financeStatus'] as String?,
      json['howLongToStay'] as String?,
      json['desiredDestination'] as String?,
      $enumDecodeNullable(_$PriorityStatusEnumMap, json['priorityStatus']),
      dateTimeFromString(json['priorityDate'] as String?),
      json['accommodationUnitId'] as String?,
      json['claimedById'] as String?,
      json['staffComments'] as String?,
      $enumDecodeNullable(
          _$VerificationStatusEnumMap, json['verificationStatus']),
      json['guid'] as String?,
      dateTimeFromString(json['createdAt'] as String?),
      dateTimeFromString(json['updatedAt'] as String?),
      json['systemComments'] as String?,
      json['accommodationUnit'] == null
          ? null
          : AccommodationUnitDto.fromJson(
              json['accommodationUnit'] as Map<String, dynamic>),
      json['claimedBy'] as String?,
      dateTimeFromString(json['claimedAt'] as String?),
    );

Map<String, dynamic> _$GuestDtoToJson(GuestDto instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'isAgent': instance.isAgent,
      'documentNumber': instance.documentNumber,
      'peopleInGroup': instance.peopleInGroup,
      'adultMaleCount': instance.adultMaleCount,
      'adultFemaleCount': instance.adultFemaleCount,
      'childrenAges': instance.childrenAges,
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
      'accommodationUnitId': instance.accommodationUnitId,
      'claimedById': instance.claimedById,
      'staffComments': instance.staffComments,
      'verificationStatus':
          _$VerificationStatusEnumMap[instance.verificationStatus],
      'guid': instance.guid,
      'createdAt': nullableDateTimeToString(instance.createdAt),
      'updatedAt': nullableDateTimeToString(instance.updatedAt),
      'systemComments': instance.systemComments,
      'accommodationUnit': instance.accommodationUnit,
      'claimedBy': instance.claimedBy,
      'claimedAt': nullableDateTimeToString(instance.claimedAt),
    };

const _$PriorityStatusEnumMap = {
  PriorityStatus.DOES_NOT_RESPOND: 'DOES_NOT_RESPOND',
  PriorityStatus.ACCOMMODATION_NOT_NEEDED: 'ACCOMMODATION_NOT_NEEDED',
  PriorityStatus.EN_ROUTE_UA: 'EN_ROUTE_UA',
  PriorityStatus.EN_ROUTE_PL: 'EN_ROUTE_PL',
  PriorityStatus.IN_KRK: 'IN_KRK',
  PriorityStatus.AT_R3: 'AT_R3',
  PriorityStatus.ACCOMMODATION_FOUND: 'ACCOMMODATION_FOUND',
  PriorityStatus.UPDATED: 'UPDATED',
};

const _$VerificationStatusEnumMap = {
  VerificationStatus.CREATED: 'CREATED',
  VerificationStatus.VERIFIED: 'VERIFIED',
  VerificationStatus.REJECTED: 'REJECTED',
};
