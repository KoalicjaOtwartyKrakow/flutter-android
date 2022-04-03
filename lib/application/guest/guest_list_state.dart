part of 'guest_list_bloc.dart';

@freezed
class GuestListState with _$GuestListState {
  const factory GuestListState.initial() = _Initial;

  const factory GuestListState.loadInProgress() = _LoadInProgress;

  const factory GuestListState.loadSuccess(
    List<Guest> accommodations,
  ) = _LoadSuccess;

  const factory GuestListState.loadFailure(
    Failure failure,
  ) = _LoadFailure;
}
