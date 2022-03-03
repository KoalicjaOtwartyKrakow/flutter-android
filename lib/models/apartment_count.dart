import 'package:json_annotation/json_annotation.dart';

part 'apartment_count.g.dart';

@JsonSerializable()
class ApartmentCount {
  @JsonKey(name: 'TOTAL_USERS')
  int totalUsers;

  @JsonKey(name: 'TOTAL_PLACES')
  int totalPlaces;

  @JsonKey(name: 'TOTAL_PLACES_BUSY')
  int totalPlacesBusy;

  ApartmentCount({
    required this.totalUsers,
    required this.totalPlaces,
    required this.totalPlacesBusy,
  });

  factory ApartmentCount.fromJson(Map<String, dynamic> json) =>
      _$ApartmentCountFromJson(json);
  Map<String, dynamic> toJson() => _$ApartmentCountToJson(this);
}
