import 'package:freezed_annotation/freezed_annotation.dart';

part 'languages_spoken_dto.g.dart';

@JsonSerializable()
class LanguagesSpokenDto {
  final String? code2;
  final String? code3;
  final String? name;

  const LanguagesSpokenDto(
    this.code2,
    this.code3,
    this.name,
  );

  factory LanguagesSpokenDto.fromJson(Map<String, dynamic> json) => _$LanguagesSpokenDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LanguagesSpokenDtoToJson(this);
}
