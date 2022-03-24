import 'package:freezed_annotation/freezed_annotation.dart';

part 'host_event.freezed.dart';

@freezed
class HostEvent with _$HostEvent {
  const factory HostEvent.downloadContract() = _Download;
}
