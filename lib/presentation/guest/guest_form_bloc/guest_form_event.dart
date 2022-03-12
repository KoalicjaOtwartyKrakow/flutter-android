part of 'guest_form_bloc.dart';

@freezed
class GuestFormEvent with _$GuestFormEvent {
  const factory GuestFormEvent.submitAddGuest(GuestDto guest) = SubmitAddGuest;
abstract class GuestFormEvent with _$GuestFormEvent {

  const factory GuestFormEvent.fullNameChanged(String value) = FullNameChanged;
  const factory GuestFormEvent.phoneNumberChanged(String value) = PhoneNumberChanged;
  const factory GuestFormEvent.emailChanged(String value) = EmailChanged;

  const factory GuestFormEvent.submitAddGuest() = SubmitAddGuest;

}
