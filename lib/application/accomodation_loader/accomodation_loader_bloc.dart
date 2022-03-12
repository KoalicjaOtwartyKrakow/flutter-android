import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_android/infrastructure/accomodation/i_accomodation_repository.dart';
import 'package:flutter_android/models/accomodation.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'accomodation_loader_bloc.freezed.dart';
part 'accomodation_loader_event.dart';
part 'accomodation_loader_state.dart';

@injectable
class AccomodationLoaderBloc
    extends Bloc<AccomodationLoaderEvent, AccomodationLoaderState> {
  final IAccomodationRepository _iAccomodationRepository;

  AccomodationLoaderBloc(
    this._iAccomodationRepository,
  ) : super(const AccomodationLoaderState.initial()) {
    on<AccomodationLoaderEvent>((event, emit) async {
      await event.map(
        started: (_) async {},
        getAccomodationsStarted: (e) async {
          emit(
            const AccomodationLoaderState.loadInProgress(),
          );
          add(
            AccomodationLoaderEvent.accomodationsReceived(
              await _iAccomodationRepository.getAccomodations(),
            ),
          );
        },
        accomodationsReceived: (e) async => emit(
          e.failureOrAccomodations.fold(
            (failure) => AccomodationLoaderState.loadFailure(
              failure,
            ),
            (termEngagements) => AccomodationLoaderState.loadSuccess(
              termEngagements,
            ),
          ),
        ),
      );
    });
  }
}
