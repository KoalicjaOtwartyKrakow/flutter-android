import 'package:flutter_android/models/dto/guest_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_list_dto.g.dart';

@JsonSerializable(createToJson: false)
class GuestListDto {
  final List<GuestDto> items;
  final int total;

  const GuestListDto(this.items, this.total);

  factory GuestListDto.fromJson(Map<String, dynamic> json) => _$GuestListDtoFromJson(json);
}
