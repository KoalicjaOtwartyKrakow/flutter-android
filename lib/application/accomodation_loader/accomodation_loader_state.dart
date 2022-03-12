part of 'accomodation_loader_bloc.dart';

@freezed
class AccomodationLoaderState with _$AccomodationLoaderState {
  const factory AccomodationLoaderState.initial() = _Initial;
  const factory AccomodationLoaderState.loadInProgress() = _LoadInProgress;
  const factory AccomodationLoaderState.loadSuccess(
    List<Accomodation> accomodations,
  ) = _LoadSuccess;
  const factory AccomodationLoaderState.loadFailure(
    Failure failure,
  ) = _LoadFailure;
}
