// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuestListDto _$GuestListDtoFromJson(Map<String, dynamic> json) => GuestListDto(
      (json['items'] as List<dynamic>)
          .map((e) => GuestDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total'] as int,
    );
