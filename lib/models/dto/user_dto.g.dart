// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      json['guid'] as String?,
      json['givenName'] as String?,
      json['familyName'] as String?,
      json['email'] as String?,
      json['googlePicture'] as String?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'guid': instance.guid,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'email': instance.email,
      'googlePicture': instance.googlePicture,
    };
