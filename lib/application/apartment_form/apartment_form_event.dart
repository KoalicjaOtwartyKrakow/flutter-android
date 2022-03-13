import 'package:flutter_android/models/accomodation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartment_form_event.freezed.dart';

@freezed
class ApartmentFormEvent with _$ApartmentFormEvent {
  const factory ApartmentFormEvent.submit(Accommodation accommodation) = _Submit;
}
