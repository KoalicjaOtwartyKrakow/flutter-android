part of 'guest_list_bloc.dart';

@freezed
class GuestListEvent with _$GuestListEvent {
  const factory GuestListEvent.downloadPage({required int offset}) = _DownloadPage;
}
