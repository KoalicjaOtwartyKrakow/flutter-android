import 'package:flutter_android/models/domain/priority_status.dart';
import 'package:flutter_android/models/domain/stay_duration.dart';

class Guest {
  final String fullName;
  final String email;
  final String normalizedPhoneNumber;
  final PriorityStatus? priorityStatus;
  final DateTime? priorityDate;
  final int totalPeopleCount;
  final int adultMaleCount;
  final int adultFemaleCount;
  final List<int> childrenAges;
  final StayDuration? howLongToStay;
  final bool havePets;
  final String specialNeeds;
  final String foodAllergies;
  final bool meatFreeDiet;
  final bool glutenFreeDiet;
  final bool lactoseFreeDiet;

  const Guest({
    required this.fullName,
    required this.email,
    required this.normalizedPhoneNumber,
    this.priorityStatus,
    this.priorityDate,
    required this.totalPeopleCount,
    required this.adultMaleCount,
    required this.adultFemaleCount,
    required this.childrenAges,
    this.howLongToStay,
    required this.specialNeeds,
    required this.foodAllergies,
    required this.meatFreeDiet,
    required this.glutenFreeDiet,
    required this.lactoseFreeDiet,
    required this.havePets,
  });
}
