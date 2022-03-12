part of 'guest_form_bloc.dart';

@freezed
class GuestFormState with _$GuestFormState {

  const factory GuestFormState.initial() = _Initial;
  const factory GuestFormState.submitSuccess() = _SubmitSuccess;
  const factory GuestFormState.submitFailure(Failure failure) = _SubmitFailure;
abstract class GuestFormState with _$GuestFormState {
  const factory GuestFormState({
    required String fullName,
    required String email,
    required String phoneNumber,
    // required AutovalidateMode showErrorMessages,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<SubmitFailure, bool>> submitFailureOrSuccessOption,
  }) = _GuestFormState;

  factory GuestFormState.initial() => GuestFormState(
    fullName: '',
    email: '',
    phoneNumber: '',
    showErrorMessages: false,
    isSubmitting: false,
    submitFailureOrSuccessOption: none(),
  );
}
