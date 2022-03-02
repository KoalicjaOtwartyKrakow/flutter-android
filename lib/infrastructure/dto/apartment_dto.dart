import 'package:json_annotation/json_annotation.dart';

part 'apartment_dto.g.dart';

@JsonSerializable()
class ApartmentDto {
  @JsonKey(name: 'CITY') String addressCity;
  @JsonKey(name: 'CNT_NAME') String addressCountyName;
  @JsonKey(name: 'APT_NUM') String addressFlatNumber;
  @JsonKey(name: 'ST_NUM') String addressStreetNumber;
  @JsonKey(name: 'ST_NAME') String addressStreetName;
  @JsonKey(name: 'ZIP') String addressZip;
  @JsonKey(name: 'CreationTime') String createdAt;
  @JsonKey(name: 'DESCRIPTION') String description;
  @JsonKey(name: 'ApartmentId') String? id;
  @JsonKey(name: 'IS_VERIFIED') bool isVerified;
  @JsonKey(name: 'LANDLORD_EMAIL') String landlordEmail;
  @JsonKey(name: 'LANDLORD_NAME') String landlordName;
  @JsonKey(name: 'LANDLORD_PHONE') String landlordPhone;
  @JsonKey(name: 'PLACES_BUSY') num vacanciesTaken;
  @JsonKey(name: 'VOLUNTEER_NAME') String volunteerName;

  ApartmentDto({
    this.id,
    required this.addressCity,
    required this.addressCountyName,
    required this.addressFlatNumber,
    required this.addressStreetName,
    required this.addressStreetNumber,
    required this.addressZip,
    required this.createdAt,
    required this.description,
    required this.isVerified,
    required this.landlordEmail,
    required this.landlordName,
    required this.landlordPhone,
    required this.vacanciesTaken,
    required this.volunteerName,
  });

  factory ApartmentDto.fromJson(Map<String, dynamic> json) => _$ApartmentDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ApartmentDtoToJson(this);
}
