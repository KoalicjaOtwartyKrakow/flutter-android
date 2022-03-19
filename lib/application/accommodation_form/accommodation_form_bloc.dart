import 'package:bloc/bloc.dart';
import 'package:flutter_android/application/accommodation_form/accommodation_form_event.dart';
import 'package:flutter_android/application/accommodation_form/accommodation_form_state.dart';
import 'package:flutter_android/infrastructure/host/accommodation_form_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AccommodationFormBloc extends Bloc<AccommodationFormEvent, AccommodationFormState> {
  final AccommodationFormRepository repository;

  AccommodationFormBloc(this.repository) : super(const AccommodationFormState.initial()) {
    on<AccommodationFormEvent>((event, emit) async {
      (await repository.submit(event.accommodation)).fold(
        (l) => emit(AccommodationFormState.submitFailure(l)),
        (_) => emit(const AccommodationFormState.submitSuccess()),
      );
    });
  }
}
