part of 'guest_form_bloc.dart';

@freezed
abstract class GuestFormEvent with _$GuestFormEvent {


  const factory GuestFormEvent.fullNameChanged(String fullNameStr) = FullNameChanged;
  const factory GuestFormEvent.phoneNumberChanged(String phoneNumberStr) = PhoneNumberChanged;
  const factory GuestFormEvent.emailChanged(String emailStr) = EmailChanged;

  const factory GuestFormEvent.submitAddGuest() = SubmitAddGuest;

}
