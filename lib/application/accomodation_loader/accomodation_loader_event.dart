part of 'accomodation_loader_bloc.dart';

@freezed
class AccomodationLoaderEvent with _$AccomodationLoaderEvent {
  const factory AccomodationLoaderEvent.started() = _Started;
  const factory AccomodationLoaderEvent.getAccomodationsStarted() =
      _GetAccomodationsStarted;
  const factory AccomodationLoaderEvent.accomodationsReceived(
    Either<Failure, List<Accomodation>> failureOrAccomodations,
  ) = _AccomodationsReceived;
}
