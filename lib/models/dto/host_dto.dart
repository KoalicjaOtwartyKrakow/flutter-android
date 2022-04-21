import 'package:flutter_android/infrastructure/converters.dart';
import 'package:flutter_android/models/dto/languages_spoken_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'host_dto.g.dart';

@JsonSerializable()
class HostDto {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String? callAfter;
  final String? callBefore;
  final String? comments;
  final List<LanguagesSpokenDto>? languagesSpoken;
  final String? status;
  final String? guid;
  @JsonKey(
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  final DateTime? createdAt;
  @JsonKey(
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  final DateTime? updatedAt;
  final String? systemComments;

  const HostDto(
    this.fullName,
    this.email,
    this.phoneNumber,
    this.callAfter,
    this.callBefore,
    this.comments,
    this.languagesSpoken,
    this.status,
    this.guid,
    this.createdAt,
    this.updatedAt,
    this.systemComments,
  );

  factory HostDto.fromJson(Map<String, dynamic> json) => _$HostDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HostDtoToJson(this);
}
