part of 'guest_form_bloc.dart';

@freezed
class GuestFormEvent with _$GuestFormEvent {
  const factory GuestFormEvent.submitAddGuest(GuestDto guest) = SubmitAddGuest;
}
