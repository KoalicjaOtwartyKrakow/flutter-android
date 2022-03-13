import 'package:flutter_android/models/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartment_form_state.freezed.dart';

@freezed
class ApartmentFormState with _$ApartmentFormState {
  const factory ApartmentFormState.initial() = _Initial;

  const factory ApartmentFormState.submitSuccess() = _SubmitSuccess;

  const factory ApartmentFormState.submitFailure(Failure failure) = _SubmitFailure;
}
