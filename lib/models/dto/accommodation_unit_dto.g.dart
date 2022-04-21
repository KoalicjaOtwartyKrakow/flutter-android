// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accommodation_unit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccommodationUnitDto _$AccommodationUnitDtoFromJson(
        Map<String, dynamic> json) =>
    AccommodationUnitDto(
      json['hostId'] as String,
      json['city'] as String,
      json['zip'] as String,
      $enumDecodeNullable(_$VoivodeshipEnumMap, json['voivodeship']),
      json['addressLine'] as String,
      json['vacanciesTotal'] as int,
      json['petsPresent'] as bool?,
      json['petsAccepted'] as bool?,
      json['disabledPeopleFriendly'] as bool?,
      json['lgbtFriendly'] as bool?,
      json['parkingPlaceAvailable'] as bool?,
      json['ownerComments'] as String?,
      json['easyAmbulanceAccess'] as bool?,
      json['vacanciesFree'] as int?,
      $enumDecodeNullable(_$VerificationStatusEnumMap, json['status']),
      json['staffComments'] as String?,
      json['guid'] as String?,
      json['host'] == null
          ? null
          : HostDto.fromJson(json['host'] as Map<String, dynamic>),
      dateTimeFromString(json['createdAt'] as String?),
      dateTimeFromString(json['updatedAt'] as String?),
      json['systemComments'] as String?,
      (json['guests'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AccommodationUnitDtoToJson(
        AccommodationUnitDto instance) =>
    <String, dynamic>{
      'hostId': instance.hostId,
      'city': instance.city,
      'zip': instance.zip,
      'voivodeship': _$VoivodeshipEnumMap[instance.voivodeship],
      'addressLine': instance.addressLine,
      'vacanciesTotal': instance.vacanciesTotal,
      'petsPresent': instance.petsPresent,
      'petsAccepted': instance.petsAccepted,
      'disabledPeopleFriendly': instance.disabledPeopleFriendly,
      'lgbtFriendly': instance.lgbtFriendly,
      'parkingPlaceAvailable': instance.parkingPlaceAvailable,
      'ownerComments': instance.ownerComments,
      'easyAmbulanceAccess': instance.easyAmbulanceAccess,
      'vacanciesFree': instance.vacanciesFree,
      'status': _$VerificationStatusEnumMap[instance.status],
      'staffComments': instance.staffComments,
      'guid': instance.guid,
      'host': instance.host,
      'createdAt': nullableDateTimeToString(instance.createdAt),
      'updatedAt': nullableDateTimeToString(instance.updatedAt),
      'systemComments': instance.systemComments,
      'guests': instance.guests,
    };

const _$VoivodeshipEnumMap = {
  Voivodeship.DOLNOSLASKIE: 'DOLNOŚLĄSKIE',
  Voivodeship.KUJAWSKO_POMORSKIE: 'KUJAWSKO-POMORSKIE',
  Voivodeship.LUBELSKIE: 'LUBELSKIE',
  Voivodeship.LUBUSKIE: 'LUBUSKIE',
  Voivodeship.LODZKIE: 'ŁÓDZKIE',
  Voivodeship.MALOPOLSKIE: 'MAŁOPOLSKIE',
  Voivodeship.MAZOWIECKIE: 'MAZOWIECKIE',
  Voivodeship.OPOLSKIE: 'OPOLSKIE',
  Voivodeship.PODKARPACKIE: 'PODKARPACKIE',
  Voivodeship.PODLASKIE: 'PODLASKIE',
  Voivodeship.POMORSKIE: 'POMORSKIE',
  Voivodeship.SLASKIE: 'ŚLĄSKIE',
  Voivodeship.SWIETOKRZYSKIE: 'ŚWIĘTOKRZYSKIE',
  Voivodeship.WARMINSKO_MAZURSKIE: 'WARMIŃSKO-MAZURSKIE',
  Voivodeship.WIELKOPOLSKIE: 'WIELKOPOLSKIE',
  Voivodeship.ZACHODNIOPOMORSKIE: 'ZACHODNIOPOMORSKIE',
};

const _$VerificationStatusEnumMap = {
  VerificationStatus.CREATED: 'CREATED',
  VerificationStatus.VERIFIED: 'VERIFIED',
  VerificationStatus.REJECTED: 'REJECTED',
};
