// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HostDto _$HostDtoFromJson(Map<String, dynamic> json) => HostDto(
      json['fullName'] as String,
      json['email'] as String,
      json['phoneNumber'] as String,
      json['callAfter'] as String?,
      json['callBefore'] as String?,
      json['comments'] as String?,
      (json['languagesSpoken'] as List<dynamic>?)
          ?.map((e) => LanguagesSpokenDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as String?,
      json['guid'] as String?,
      dateTimeFromString(json['createdAt'] as String?),
      dateTimeFromString(json['updatedAt'] as String?),
      json['systemComments'] as String?,
    );

Map<String, dynamic> _$HostDtoToJson(HostDto instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'callAfter': instance.callAfter,
      'callBefore': instance.callBefore,
      'comments': instance.comments,
      'languagesSpoken': instance.languagesSpoken,
      'status': instance.status,
      'guid': instance.guid,
      'createdAt': nullableDateTimeToString(instance.createdAt),
      'updatedAt': nullableDateTimeToString(instance.updatedAt),
      'systemComments': instance.systemComments,
    };
