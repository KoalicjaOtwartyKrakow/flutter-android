import 'package:flutter_android/models/domain/priority_status.dart';

class Guest {
  final String fullName;
  final String email;
  final String normalizedPhoneNumber;
  final PriorityStatus? priorityStatus;
  final DateTime? priorityDate;
  final int? totalPeopleCount;
  final int? adultMaleCount;
  final int? adultFemaleCount;
  final List<int>? childrenAges;

  const Guest({
    required this.fullName,
    required this.email,
    required this.normalizedPhoneNumber,
    this.priorityStatus,
    this.priorityDate,
    this.totalPeopleCount,
    this.adultMaleCount,
    this.adultFemaleCount,
    this.childrenAges,
  });
}
