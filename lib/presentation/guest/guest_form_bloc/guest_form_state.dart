part of 'guest_form_bloc.dart';

@freezed
abstract class GuestFormState with _$GuestFormState {
  const factory GuestFormState({
    required String fullName,
    required String email,
    required String phoneNumber,
    int? peopleInGroup,
    int? adultMaleCount,
    int? adultFemaleCount,
    int? childrenCount,
    List<int>? childrenAges,
    bool? havePets,
    String? petsDescription,
    String? specialNeeds,
    String? howLongToStay,
    String? financeStatus,
    required AutovalidateMode showErrorMessages,
    required bool isSubmitting,
    required Option<Either<Failure, Guest>> submitFailureOrSuccessOption,
  }) = _GuestFormState;

  factory GuestFormState.initial() => GuestFormState(
    fullName: '',
    email: '',
    phoneNumber: '',
    peopleInGroup: 0,
    adultMaleCount: 0,
    adultFemaleCount: 0,
    childrenCount: 0,
    childrenAges: [],
    havePets: false,
    petsDescription: '',
    specialNeeds: '',
    howLongToStay: '',
    financeStatus: '',
    showErrorMessages: AutovalidateMode.disabled,
    isSubmitting: false,
    submitFailureOrSuccessOption: none(),
  );
}
