// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Host _$HostFromJson(Map<String, dynamic> json) => Host(
      id: json['id'] as String?,
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phone_number'] as String,
      callAfter: json['call_after'] as String?,
      callBefore: json['call_before'] as String?,
      comments: json['comments'] as String,
      status: $enumDecode(_$HostStatusEnumMap, json['status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$HostToJson(Host instance) => <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'call_after': instance.callAfter,
      'call_before': instance.callBefore,
      'comments': instance.comments,
      'status': _$HostStatusEnumMap[instance.status],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$HostStatusEnumMap = {
  HostStatus.created: 'created',
  HostStatus.verified: 'verified',
  HostStatus.banned: 'banned',
};
