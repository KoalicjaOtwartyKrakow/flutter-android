part of 'accomodation_loader_bloc.dart';

@freezed
class AccommodationLoaderState with _$AccommodationLoaderState {
  const factory AccommodationLoaderState.initial() = _Initial;

  const factory AccommodationLoaderState.loadInProgress() = _LoadInProgress;

  const factory AccommodationLoaderState.loadSuccess(
    List<Accommodation> accommodations,
  ) = _LoadSuccess;

  const factory AccommodationLoaderState.loadFailure(
    Failure failure,
  ) = _LoadFailure;
}
