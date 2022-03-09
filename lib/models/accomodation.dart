import 'package:flutter_android/models/accomodation_verification_status.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

import '../infrastructure/converters.dart';

part 'accomodation.g.dart';

@JsonSerializable()
class Accomodation {
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

  Accomodation({
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

  factory Accomodation.fromJson(Map<String, dynamic> json) =>
      _$AccomodationFromJson(json);
  Map<String, dynamic> toJson() => _$AccomodationToJson(this);
}
