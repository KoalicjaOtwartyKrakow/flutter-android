// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartment_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApartmentCount _$ApartmentCountFromJson(Map<String, dynamic> json) =>
    ApartmentCount(
      totalUsers: json['TOTAL_USERS'] as int,
      totalPlaces: json['TOTAL_PLACES'] as int,
      totalPlacesBusy: json['TOTAL_PLACES_BUSY'] as int,
    );

Map<String, dynamic> _$ApartmentCountToJson(ApartmentCount instance) =>
    <String, dynamic>{
      'TOTAL_USERS': instance.totalUsers,
      'TOTAL_PLACES': instance.totalPlaces,
      'TOTAL_PLACES_BUSY': instance.totalPlacesBusy,
    };
