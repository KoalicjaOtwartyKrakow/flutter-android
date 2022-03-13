part of 'guest_form_bloc.dart';

@freezed
abstract class GuestFormState with _$GuestFormState {
  const factory GuestFormState({
    required String fullName,
    required String email,
    required String phoneNumber,
    required AutovalidateMode showErrorMessages,
    required bool isSubmitting,
    required Option<Either<SubmitFailure, Unit>> submitFailureOrSuccessOption,
  }) = _GuestFormState;

  factory GuestFormState.initial() => GuestFormState(
    fullName: '',
    email: '',
    phoneNumber: '',
    showErrorMessages: AutovalidateMode.disabled,
    isSubmitting: false,
    submitFailureOrSuccessOption: none(),
  );
}
