import 'package:json_annotation/json_annotation.dart';

import 'host_status.dart';

part 'host.g.dart';

@JsonSerializable()
class Host {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'full_name')
  String fullName;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'phone_number')
  String phoneNumber;

  @JsonKey(name: 'call_after')
  String? callAfter;

  @JsonKey(name: 'call_before')
  String? callBefore;

  @JsonKey(name: 'comments')
  String comments;

  @JsonKey(name: 'status')
  HostStatus status;

  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Host({
    this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    this.callAfter,
    this.callBefore,
    required this.comments,
    required this.status,
    this.createdAt,
    this.updatedAt,
  });
}
