part of 'guest_form_bloc.dart';

@freezed
abstract class GuestFormEvent with _$GuestFormEvent {

  const factory GuestFormEvent.fullNameChanged(String value) = FullNameChanged;
  const factory GuestFormEvent.phoneNumberChanged(String value) = PhoneNumberChanged;
  const factory GuestFormEvent.emailChanged(String value) = EmailChanged;

  const factory GuestFormEvent.submitAddGuest() = SubmitAddGuest;

}
