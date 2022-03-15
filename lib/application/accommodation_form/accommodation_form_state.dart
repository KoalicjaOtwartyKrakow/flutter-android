import 'package:flutter_android/models/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accommodation_form_state.freezed.dart';

@freezed
class AccommodationFormState with _$AccommodationFormState {
  const factory AccommodationFormState.initial() = _Initial;

  const factory AccommodationFormState.submitSuccess() = _SubmitSuccess;

  const factory AccommodationFormState.submitFailure(Failure failure) = SubmitFailure;
}
