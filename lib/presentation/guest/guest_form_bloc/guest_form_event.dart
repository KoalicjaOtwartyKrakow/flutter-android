part of 'guest_form_bloc.dart';

@freezed
abstract class GuestFormEvent with _$GuestFormEvent {


  const factory GuestFormEvent.fullNameChanged(String fullNameStr) = FullNameChanged;
  const factory GuestFormEvent.phoneNumberChanged(String phoneNumberStr) = PhoneNumberChanged;
  const factory GuestFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory GuestFormEvent.peopleInGroupChanged(int peopleInGroup) = PeopleInGroupChanged;
  const factory GuestFormEvent.adultMaleCountChanged(int adultMaleCount) = AdultMaleCountChanged;
  const factory GuestFormEvent.adultFemaleCountChanged(int adultFemaleCount) = AdultFemaleCountChanged;
  const factory GuestFormEvent.childrenCountChanged(int childrenCount) = ChildrenCountChanged;
  const factory GuestFormEvent.childrenAgesChanged(List<int> childrenAges) = ChildrenAgesChanged;
  const factory GuestFormEvent.havePetsChanged(bool havePets) = HavePetsChanged;
  const factory GuestFormEvent.petsDescriptionChanged(String petsDescriptionStr) = PetsDescriptionChanged;
  const factory GuestFormEvent.specialNeedsChanged(String specialNeedsStr) = SpecialNeedsChanged;
  const factory GuestFormEvent.howLongToStayChanged(String howLongToStayStr) = HowLongToStayChanged;
  const factory GuestFormEvent.financeStatusChanged(String financeStatusStr) = FinanceStatusChanged;


  const factory GuestFormEvent.submitAddGuest() = SubmitAddGuest;

}
