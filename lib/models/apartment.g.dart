// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apartment _$ApartmentFromJson(Map<String, dynamic> json) => Apartment(
      id: json['ApartmentId'] as String?,
      addressCity: json['CITY'] as String,
      addressCountyName: json['CNT_NAME'] as String,
      addressFlatNumber: json['APT_NUM'] as String,
      addressStreetName: json['ST_NAME'] as String,
      addressStreetNumber: json['ST_NUM'] as String,
      addressZip: json['ZIP'] as String,
      createdAt: dateTimeFromString(json['CreationTime'] as String),
      description: json['DESCRIPTION'] as String,
      isVerified: json['IS_VERIFIED'] as bool,
      landlordEmail: json['LANDLORD_EMAIL'] as String,
      landlordName: json['LANDLORD_NAME'] as String,
      landlordPhone: json['LANDLORD_PHONE'] as String,
      vacanciesTaken: json['PLACES_BUSY'] as num,
      volunteerName: json['VOLUNTEER_NAME'] as String,
    );

Map<String, dynamic> _$ApartmentToJson(Apartment instance) => <String, dynamic>{
      'CITY': instance.addressCity,
      'CNT_NAME': instance.addressCountyName,
      'APT_NUM': instance.addressFlatNumber,
      'ST_NUM': instance.addressStreetNumber,
      'ST_NAME': instance.addressStreetName,
      'ZIP': instance.addressZip,
      'CreationTime': dateTimeToString(instance.createdAt),
      'DESCRIPTION': instance.description,
      'ApartmentId': instance.id,
      'IS_VERIFIED': instance.isVerified,
      'LANDLORD_EMAIL': instance.landlordEmail,
      'LANDLORD_NAME': instance.landlordName,
      'LANDLORD_PHONE': instance.landlordPhone,
      'PLACES_BUSY': instance.vacanciesTaken,
      'VOLUNTEER_NAME': instance.volunteerName,
    };
