part of 'guest_form_bloc.dart';

@freezed
class GuestFormState with _$GuestFormState {

  const factory GuestFormState.initial() = _Initial;
  const factory GuestFormState.submitSuccess() = _SubmitSuccess;
  const factory GuestFormState.submitFailure(Failure failure) = _SubmitFailure;
}
