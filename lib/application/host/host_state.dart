import 'package:freezed_annotation/freezed_annotation.dart';

part 'host_state.freezed.dart';

@freezed
class HostState with _$HostState {
  const factory HostState.initial() = _Initial;

  const factory HostState.downloadSuccess(String url) = HostStateSuccess;

  const factory HostState.downloadFailure() = HostStateFailure;
}
