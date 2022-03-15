import 'package:flutter_android/models/accomodation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accommodation_form_event.freezed.dart';

@freezed
class AccommodationFormEvent with _$AccommodationFormEvent {
  const factory AccommodationFormEvent.submit(Accommodation accommodation) = _Submit;
}
