part of 'guest_form_bloc.dart';

@freezed
abstract class GuestFormEvent with _$GuestFormEvent {


  const factory GuestFormEvent.fullNameChanged(String fullNameStr) = FullNameChanged;
  const factory GuestFormEvent.phoneNumberChanged(String phoneNumberStr) = PhoneNumberChanged;
  const factory GuestFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory GuestFormEvent.peopleInGroupChanged(String peopleInGroupStr) = PeopleInGroupChanged;
  const factory GuestFormEvent.adultMaleCountChanged(String adultMaleCountStr) = AdultMaleCountChanged;
  const factory GuestFormEvent.adultFemaleCountChanged(String adultFemaleCountStr) = AdultFemaleCountChanged;
  const factory GuestFormEvent.childrenCountChanged(String childrenCountStr) = ChildrenCountChanged;
  const factory GuestFormEvent.childrenAgesChanged(String childrenAgesStr) = ChildrenAgesChanged;
  const factory GuestFormEvent.havePetsChanged(String havePetsStr) = HavePetsChanged;
  const factory GuestFormEvent.petsDescriptionChanged(String petsDescriptionStr) = PetsDescriptionChanged;
  const factory GuestFormEvent.specialNeedsChanged(String specialNeedsStr) = SpecialNeedsChanged;
  const factory GuestFormEvent.howLongToStayChanged(String howLongToStayStr) = HowLongToStayChanged;
  const factory GuestFormEvent.financeStatusChanged(String financeStatusStr) = FinanceStatusChanged;


  const factory GuestFormEvent.submitAddGuest() = SubmitAddGuest;

}
