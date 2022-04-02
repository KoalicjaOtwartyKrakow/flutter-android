part of 'guest_form_bloc.dart';

@freezed
abstract class GuestFormEvent with _$GuestFormEvent {


  const factory GuestFormEvent.fullNameChanged(String fullNameStr) = FullNameChanged;
  const factory GuestFormEvent.phoneNumberChanged(String phoneNumberStr) = PhoneNumberChanged;
  const factory GuestFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory GuestFormEvent.peopleInGroupChanged(int peopleInGroup) = PeopleInGroupChanged;
  const factory GuestFormEvent.adultMaleCountChanged(int adultMaleCount) = AdultMaleCountChanged;
  const factory GuestFormEvent.adultFemaleCountChanged(int adultFemaleCount) = AdultFemaleCountChanged;
  const factory GuestFormEvent.childrenChanged(List<ChildAge> childrenAges) = ChildrenChanged;
  const factory GuestFormEvent.havePetsChanged(bool havePets) = HavePetsChanged;
  const factory GuestFormEvent.petsDescriptionChanged(String petsDescriptionStr) = PetsDescriptionChanged;
  const factory GuestFormEvent.specialNeedsChanged(String specialNeedsStr) = SpecialNeedsChanged;
  const factory GuestFormEvent.foodAllergiesChanged(String foodAllergiesStr) = FoodAllergiesChanged;
  const factory GuestFormEvent.meatFreDiet(bool hasMeatFreeDiet) = MeatFreeDietChanged;
  const factory GuestFormEvent.glutenFreeDiet(bool hasGlutenFreeDiet) = GlutenFreeDietChanged;
  const factory GuestFormEvent.lactoseFreeDiet(bool hasLactoseFreeDiet) = LactoseFreeDietChanged;
  const factory GuestFormEvent.financeStatusChanged(String financeStatusStr) = FinanceStatusChanged;
  const factory GuestFormEvent.howLongToStayChanged(String howLongToStayStr) = HowLongToStayChanged;
  const factory GuestFormEvent.desiredDestination(String desiredDestinationStr) = DesiredDestinationChanged;
  const factory GuestFormEvent.priorityStatus(PriorityStatus priorityStatus) = PriorityStatusChanged;
  const factory GuestFormEvent.priorityDate(DateTime priorityDate) = PriorityDateChanged;


  const factory GuestFormEvent.submitAddGuest() = SubmitAddGuest;

}
