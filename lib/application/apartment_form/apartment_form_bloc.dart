import 'package:bloc/bloc.dart';
import 'package:flutter_android/application/apartment_form/apartment_form_event.dart';
import 'package:flutter_android/application/apartment_form/apartment_form_state.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApartmentFormBloc extends Bloc<ApartmentFormEvent, ApartmentFormState> {
  final ApiClient apiClient;

  ApartmentFormBloc(this.apiClient) : super(const ApartmentFormState.initial()) {
    on<ApartmentFormEvent>((event, emit) async {
      try {
        await apiClient.createAccomodation(event.accommodation);
        emit(const ApartmentFormState.submitSuccess());
      } catch (e, st) {
        emit(const ApartmentFormState.submitFailure(Failure.unexpected()));
      }
    });
  }
}
