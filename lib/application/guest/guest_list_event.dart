part of 'guest_list_bloc.dart';

@freezed
class GuestListEvent with _$GuestListEvent {
  const factory GuestListEvent.download({required bool resetOffset}) = _Download;
}
