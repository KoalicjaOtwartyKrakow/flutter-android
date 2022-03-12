import 'package:json_annotation/json_annotation.dart';

enum Voivodeship {
  @JsonValue('DOLNOŚLĄSKIE')
  DOLNOSLASKIE,

  @JsonValue('KUJAWSKO-POMORSKIE')
  KUJAWSKO_POMORSKIE,

  @JsonValue('LUBELSKIE')
  LUBELSKIE,

  @JsonValue('LUBUSKIE')
  LUBUSKIE,

  @JsonValue('ŁÓDZKIE')
  LODZKIE,

  @JsonValue('MAŁOPOLSKIE')
  MALOPOLSKIE,

  @JsonValue('MAZOWIECKIE')
  MAZOWIECKIE,

  @JsonValue('OPOLSKIE')
  OPOLSKIE,

  @JsonValue('PODKARPACKIE')
  PODKARPACKIE,

  @JsonValue('PODLASKIE')
  PODLASKIE,

  @JsonValue('POMORSKIE')
  POMORSKIE,

  @JsonValue('ŚLĄSKIE')
  SLASKIE,

  @JsonValue('ŚWIĘTOKRZYSKIE')
  SWIETOKRZYSKIE,

  @JsonValue('WARMIŃSKO-MAZURSKIE')
  WARMINSKO_MAZURSKIE,

  @JsonValue('WIELKOPOLSKIE')
  WIELKOPOLSKIE,

  @JsonValue('ZACHODNIOPOMORSKIE')
  ZACHODNIOPOMORSKIE
}
