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
    List<ChildAge>? children,
    bool? havePets,
    String? petsDescription,
    String? specialNeeds,
    String? foodAllergies,
    bool? meatFreeDiet,
    bool? glutenFreeDiet,
    bool? lactoseFreeDiet,
    String? financeStatus,
    String? howLongToStay,
    String? desiredDestination,
    PriorityStatus? priorityStatus,
    DateTime? priorityDate,

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
    children: [],
    havePets: false,
    petsDescription: '',
    specialNeeds: '',
    foodAllergies: '',
    meatFreeDiet: false,
    glutenFreeDiet: false,
    lactoseFreeDiet: false,
    financeStatus: '',
    howLongToStay: '',
    desiredDestination: '',
    priorityStatus: null,
    priorityDate: null,
    showErrorMessages: AutovalidateMode.disabled,
    isSubmitting: false,
    submitFailureOrSuccessOption: none(),
  );
}
