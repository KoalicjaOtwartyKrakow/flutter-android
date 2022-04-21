import 'package:flutter_android/infrastructure/converters.dart';
import 'package:flutter_android/models/domain/verification_status.dart';
import 'package:flutter_android/models/dto/host_dto.dart';
import 'package:flutter_android/models/voivodeship.dart';
import 'package:json_annotation/json_annotation.dart';

part 'accommodation_unit_dto.g.dart';

@JsonSerializable()
class AccommodationUnitDto {
  final String hostId;
  final String city;
  final String zip;
  final Voivodeship? voivodeship;
  final String addressLine;
  final int vacanciesTotal;
  final bool? petsPresent;
  final bool? petsAccepted;
  final bool? disabledPeopleFriendly;
  final bool? lgbtFriendly;
  final bool? parkingPlaceAvailable;
  final String? ownerComments;
  final bool? easyAmbulanceAccess;
  final int? vacanciesFree;
  final VerificationStatus? status;
  final String? staffComments;
  final String? guid;
  final HostDto? host;
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
  final List<String>? guests;

  const AccommodationUnitDto(
    this.hostId,
    this.city,
    this.zip,
    this.voivodeship,
    this.addressLine,
    this.vacanciesTotal,
    this.petsPresent,
    this.petsAccepted,
    this.disabledPeopleFriendly,
    this.lgbtFriendly,
    this.parkingPlaceAvailable,
    this.ownerComments,
    this.easyAmbulanceAccess,
    this.vacanciesFree,
    this.status,
    this.staffComments,
    this.guid,
    this.host,
    this.createdAt,
    this.updatedAt,
    this.systemComments,
    this.guests,
  );

  factory AccommodationUnitDto.fromJson(Map<String, dynamic> json) => _$AccommodationUnitDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AccommodationUnitDtoToJson(this);
}
