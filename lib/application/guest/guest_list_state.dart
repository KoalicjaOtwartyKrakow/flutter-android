part of 'guest_list_bloc.dart';

@freezed
class GuestListState with _$GuestListState {
  const factory GuestListState.initial() = _Initial;

  const factory GuestListState.pageLoadSuccess(List<Guest> guests) = _NextPageLoadSuccess;

  const factory GuestListState.pageLoadFailure(Failure failure) = _FirstPageLoadFailure;
}
