import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_android/infrastructure/accomodation/i_accomodation_repository.dart';
import 'package:flutter_android/models/accomodation.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'accomodation_loader_bloc.freezed.dart';
part 'accomodation_loader_event.dart';
part 'accomodation_loader_state.dart';

@injectable
class AccomodationLoaderBloc extends Bloc<AccommodationLoaderEvent, AccommodationLoaderState> {
  final IAccomodationRepository _iAccomodationRepository;

  AccomodationLoaderBloc(
    this._iAccomodationRepository,
  ) : super(const AccommodationLoaderState.initial()) {
    on<AccommodationLoaderEvent>((event, emit) async {
      await event.map(
        started: (_) async {},
        getAccommodationsStarted: (e) async {
          emit(
            const AccommodationLoaderState.loadInProgress(),
          );
          add(
            AccommodationLoaderEvent.accommodationsReceived(
              await _iAccomodationRepository.getAccommodations(),
            ),
          );
        },
        accommodationsReceived: (e) async => emit(
          e.failureOrAccommodations.fold(
            (failure) => AccommodationLoaderState.loadFailure(
              failure,
            ),
            (termEngagements) => AccommodationLoaderState.loadSuccess(
              termEngagements,
            ),
          ),
        ),
      );
    });
  }
}
