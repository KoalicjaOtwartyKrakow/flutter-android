import 'package:flutter_android/models/accomodation_verification_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'accomodation.g.dart';

@JsonSerializable()
class Accommodation {
  String? city;

  String zip;

  String? voivodeship;

  @JsonKey(name: 'address_line')
  String addressLine;

  @JsonKey(name: 'vacancies_total')
  int vacanciesTotal;

  @JsonKey(name: 'vacancies_free')
  int vacanciesFree;

  @JsonKey(name: 'have_pets')
  bool? havePets;

  @JsonKey(name: 'accept_pets')
  bool? acceptPets;

  String? comments;

  AccomodationVerificationStatus? status;

  Accommodation({
    this.city,
    required this.zip,
    this.voivodeship,
    required this.addressLine,
    required this.vacanciesTotal,
    required this.vacanciesFree,
    this.havePets,
    this.acceptPets,
    this.comments,
    this.status,
  });

  factory Accommodation.fromJson(Map<String, dynamic> json) => _$AccommodationFromJson(json);

  Map<String, dynamic> toJson() => _$AccommodationToJson(this);
}
