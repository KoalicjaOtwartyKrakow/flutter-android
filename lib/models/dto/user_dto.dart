import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final String? guid;
  final String? givenName;
  final String? familyName;
  final String? email;
  final String? googlePicture;

  const UserDto(
    this.guid,
    this.givenName,
    this.familyName,
    this.email,
    this.googlePicture,
  );

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
