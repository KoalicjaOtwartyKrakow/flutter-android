import 'package:flutter_android/models/domain/priority_status.dart';

class Guest {
  final String fullName;
  final String email;
  final String phoneNumber;
  final PriorityStatus? priorityStatus;
  final DateTime? priorityDate;

  const Guest(
    this.fullName,
    this.email,
    this.phoneNumber,
    this.priorityStatus,
    this.priorityDate,
  );
}
