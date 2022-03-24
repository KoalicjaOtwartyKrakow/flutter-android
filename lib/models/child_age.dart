import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_age.g.dart';

@JsonSerializable()
class ChildAge {
  final int? age;

  ChildAge({
    required this.age
  });

  Map<String, dynamic> toJson() => _$ChildAgeToJson(this);
  factory ChildAge.fromJson(Map<String, dynamic> json) =>
      _$ChildAgeFromJson(json);
}




