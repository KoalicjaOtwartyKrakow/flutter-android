import 'package:bloc/bloc.dart';
import 'package:flutter_android/application/apartment_form/apartment_form_event.dart';
import 'package:flutter_android/application/apartment_form/apartment_form_state.dart';
import 'package:flutter_android/infrastructure/host/apartment_form_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApartmentFormBloc extends Bloc<ApartmentFormEvent, ApartmentFormState> {
  final ApartmentFormRepository repository;

  ApartmentFormBloc(this.repository) : super(const ApartmentFormState.initial()) {
    on<ApartmentFormEvent>((event, emit) async {
      (await repository.submit(event.accommodation)).fold(
        (l) => emit(ApartmentFormState.submitFailure(l)),
        (_) => emit(const ApartmentFormState.submitSuccess()),
      );
    });
  }
}
