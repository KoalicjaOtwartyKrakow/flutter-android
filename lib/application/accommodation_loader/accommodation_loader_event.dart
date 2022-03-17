part of 'accommodation_loader_bloc.dart';

@freezed
class AccommodationLoaderEvent with _$AccommodationLoaderEvent {
  const factory AccommodationLoaderEvent.started() = _Started;

  const factory AccommodationLoaderEvent.getAccommodationsStarted() = _GetAccommodationsStarted;

  const factory AccommodationLoaderEvent.accommodationsReceived(
    Either<Failure, List<Accommodation>> failureOrAccommodations,
  ) = _AccommodationsReceived;
}
