// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accomodation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Accommodation _$AccommodationFromJson(Map<String, dynamic> json) =>
    Accommodation(
      city: json['city'] as String?,
      zip: json['zip'] as String,
      voivodeship: json['voivodeship'] as String?,
      addressLine: json['address_line'] as String,
      vacanciesTotal: json['vacancies_total'] as int,
      vacanciesFree: json['vacancies_free'] as int,
      havePets: json['have_pets'] as bool?,
      acceptPets: json['accept_pets'] as bool?,
      comments: json['comments'] as String?,
      status: $enumDecodeNullable(
          _$AccomodationVerificationStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$AccommodationToJson(Accommodation instance) =>
    <String, dynamic>{
      'city': instance.city,
      'zip': instance.zip,
      'voivodeship': instance.voivodeship,
      'address_line': instance.addressLine,
      'vacancies_total': instance.vacanciesTotal,
      'vacancies_free': instance.vacanciesFree,
      'have_pets': instance.havePets,
      'accept_pets': instance.acceptPets,
      'comments': instance.comments,
      'status': _$AccomodationVerificationStatusEnumMap[instance.status],
    };

const _$AccomodationVerificationStatusEnumMap = {
  AccomodationVerificationStatus.added: 'added',
  AccomodationVerificationStatus.phoneVerified: 'phone_verified',
  AccomodationVerificationStatus.inPersonVerified: 'in_person_verified',
};
